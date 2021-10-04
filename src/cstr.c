#include "cstr.h"
cstrstt creadstt(char state)
{
	return (cstrstt) {state & 0x01, (state & 0x03) >> 1, (state & 0x07) >> 2};
}
char cwristt(cstrstt _state)
{
	return _state.owns + _state.read * 0x02 + _state.writes * 0x04;
}
int cstrclr(cstr* _s, size_t initbuf)
{
	cstrstt _state = creadstt(_s->state);
	if (_state.owns == 1)	//Owner of content
	{
		if (_s->share != 0)
			return -2;	//UNFREEABLE
		else
		{
			free(_s->content);
			_s->bufmul	= 0;
			_s->relsiz	= 0;
			_s->state	= 0;
			_s->share	= 0;
			_s->base	= NULL;
		}
	}
	else
	{
		crevperm(_s->base);
		_s->content	= NULL;
		_s->state	= 0;
		_s->share 	= 0;
		_s->bufmul	= 0;
		_s->relsiz	= 0;
		_s->base	= NULL;
	}
	if (initbuf > 0)
	{
		_s->content 	= (char*) malloc(sizeof(char) * BUFSIZ * initbuf);
		if (_s->content == NULL)
			return -3;
		_s->base	= _s;
		_s->state	= CSTRSTT_OWN | CSTRSTT_READ | CSTRSTT_WRITE;
		_s->share	= 1;
		_s->bufmul	= initbuf;
		_s->relsiz	= 0;
	}
	
}


char* cowntrans(cstr* DEST, cstr* SRC)
{
	creeval(SRC);
	cstrclr(DEST, 0);
	DEST->content 	= SRC->content;
	DEST->state 	= CSTRSTT_OWN | CSTRSTT_READ | CSTRSTT_WRITE;
	DEST->base 	= DEST;
	DEST->share	= SRC->share;
	DEST->bufmul	= SRC->bufmul;
	DEST->relsiz	= SRC->relsiz;

	SRC->state	= CSTRSTT_READ | CSTRSTT_WRITE;
	SRC->base	= DEST;
	SRC->share	= 0;
	return DEST->content;
}

char* cgrperm(cstr* base, cstr* dest, char perm)
{
	creeval(base);
	cstrclr(dest, 0);
	dest->content	= base->content;
	dest->state	= perm & 0x03;	//Clear ownership (if exist) from perm
	dest->base	= base;
	dest->share	= 0;
	dest->bufmul 	= base->bufmul;
	dest->relsiz	= base->relsiz;
}

int creeval(cstr* _obj)
{
	if (_obj == NULL)
		return -1;
	if (_obj->content == NULL)
	{
		_obj->state	= 0;
		_obj->base	= NULL;
		_obj->share	= 0;
		_obj->bufmul	= 0;
		_obj->relsiz	= 0;
		return 0;
	}
	if (_obj->state & 0x04) 	//If 3rd bit is 1
	{
		_obj->base	= _obj;
		_obj->relsiz	= strlen(_obj->content);
		_obj->bufmul	= (size_t)(_obj->relsiz / BUFSIZ) + 1;
		char* _temp;
		if ((_temp = realloc(_obj->content, sizeof(char) * BUFSIZ * _obj->bufmul)) != NULL)
		{
			_obj->content = _temp;
			return 0;
		}
		else
			return -1;
	}
	else
	{
		creeval(_obj->base);
		_obj->bufmul 	= _obj->base->bufmul;
		_obj->relsiz	= _obj->base->relsiz;
	}
}

int crevperm(cstr* _obj)
{
	if (_obj == NULL)
		return -1;
	if (_obj->state & 0x04)
		return 0;
	creeval(_obj);
	_obj->state	= 0;
}

/*int cstrcasecmp(cstr _s0, cstr _s1)
{
	return cstrcasecmp(_s0->content, _s1->content);
}*/

/*int cstrncasecmp(cstr _s0, cstr _s1, int nbytes)
{
	return strncasecmp(_s0->content, _s1->content, nbytes);
}*/

/*char* cindex(cstr s, int c)
{
	return index(s->content, c);
}*/

/*char* crindex(cstr s, int c)
{
	return rindex(s->content, c);
}*/

int cstrcmp(cstr _s0, cstr _s1)
{
	return strcmp(_s0.content, _s1.content);
}

int cstrcoll(cstr _s0, cstr _s1)
{
	return strcoll(_s0.content, _s1.content);
}

size_t cstrcspn(cstr _obj, cstr reject)
{
	return strcspn(_obj.content, reject.content);
}

size_t cstrlen(cstr _obj)
{
	creeval(&_obj);
	return _obj.relsiz;
}

int cstrncmp(cstr _s0, cstr _s1, int nbytes)
{
	return strncmp(_s0.content, _s1.content, nbytes);
}

char* cstrpbrk(cstr _obj, cstr accept)
{
	return strpbrk(_obj.content, accept.content);
}

char* cstrsep(cstr stringp, cstr delim)
{
	return strsep(&(stringp.content), delim.content);
}

size_t cstrspn(cstr _obj, cstr accept)
{
	return strspn(_obj.content, accept.content);
}

char* cstrstr(cstr haystack, cstr needle)
{
	return strstr(haystack.content, needle.content);
}

char* cstrtok(cstr _obj, cstr delim)
{
	return strtok(_obj.content, delim.content);
}

////String manipulation
cstr cstrcpy(cstr dest, cstr src)
{
	int fnsiz	= dest.relsiz + src.relsiz;
	int fnbuf	= (int) ((fnsiz + 1) / BUFSIZ) + 1;
	char* bufp	 =(char*) realloc(dest.content, fnbuf * BUFSIZ * sizeof(char));
	if (bufp == NULL)
	{
		errno = -1;
		return dest;
	}
	memcpy(dest.content + (dest.relsiz) * sizeof(char), src.content, src.relsiz * sizeof(char));
	return dest;
}

cstr cstrdup(cstr src)
{
	cstr _ret = {NULL, 0, NULL, 0, 0, 0};
	char* _retcon = (char*) malloc(src.bufmul * sizeof(char));
	if (_retcon == NULL)
		return _ret;
	memcpy(_retcon, src.content, src.bufmul * BUFSIZ * sizeof(char));
	return (cstr) {_retcon, CSTRSTT_OWN | CSTRSTT_READ | CSTRSTT_WRITE, NULL, 1, src.bufmul, src.relsiz};
}
//strfry currently not available
/*
cstr cstrfry(cstr string)
{
	strfry(string.content);
	return string;
}*/

cstr cstrncat(cstr dest, cstr src, size_t n)
{
	int fnsiz	= dest.relsiz + MAXS(src.relsiz, n);
	int fnbuf	= (int) ((fnsiz + 1) / BUFSIZ) + 1;
	char* bufp	= (char*) realloc(dest.content, fnbuf * BUFSIZ * sizeof(char));
	if (bufp == NULL)
	{
		errno = -1;
		return dest;
	}
	memcpy(dest.content + (dest.relsiz) * sizeof(char), src.content, MAXS(src.relsiz, n) * sizeof(char));
}
