
main:     file format elf64-x86-64


Disassembly of section .interp:

00000000000002a8 <.interp>:
 2a8:	2f                   	(bad)  
 2a9:	6c                   	insb   (%dx),%es:(%rdi)
 2aa:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 2b1:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 2b6:	78 2d                	js     2e5 <_init-0xd1b>
 2b8:	78 38                	js     2f2 <_init-0xd0e>
 2ba:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 2c0:	6f                   	outsl  %ds:(%rsi),(%dx)
 2c1:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.gnu.build-id:

00000000000002c4 <.note.gnu.build-id>:
 2c4:	04 00                	add    $0x0,%al
 2c6:	00 00                	add    %al,(%rax)
 2c8:	14 00                	adc    $0x0,%al
 2ca:	00 00                	add    %al,(%rax)
 2cc:	03 00                	add    (%rax),%eax
 2ce:	00 00                	add    %al,(%rax)
 2d0:	47                   	rex.RXB
 2d1:	4e 55                	rex.WRX push %rbp
 2d3:	00 0b                	add    %cl,(%rbx)
 2d5:	89 9f c4 7a 23 19    	mov    %ebx,0x19237ac4(%rdi)
 2db:	f8                   	clc    
 2dc:	ec                   	in     (%dx),%al
 2dd:	5b                   	pop    %rbx
 2de:	1d 53 ce e3 48       	sbb    $0x48e3ce53,%eax
 2e3:	0d f8 5a 04 57       	or     $0x57045af8,%eax

Disassembly of section .note.ABI-tag:

00000000000002e8 <.note.ABI-tag>:
 2e8:	04 00                	add    $0x0,%al
 2ea:	00 00                	add    %al,(%rax)
 2ec:	10 00                	adc    %al,(%rax)
 2ee:	00 00                	add    %al,(%rax)
 2f0:	01 00                	add    %eax,(%rax)
 2f2:	00 00                	add    %al,(%rax)
 2f4:	47                   	rex.RXB
 2f5:	4e 55                	rex.WRX push %rbp
 2f7:	00 00                	add    %al,(%rax)
 2f9:	00 00                	add    %al,(%rax)
 2fb:	00 03                	add    %al,(%rbx)
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 02                	add    %al,(%rdx)
 301:	00 00                	add    %al,(%rax)
 303:	00 00                	add    %al,(%rax)
 305:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

0000000000000308 <.gnu.hash>:
 308:	02 00                	add    (%rax),%al
 30a:	00 00                	add    %al,(%rax)
 30c:	18 00                	sbb    %al,(%rax)
 30e:	00 00                	add    %al,(%rax)
 310:	01 00                	add    %eax,(%rax)
 312:	00 00                	add    %al,(%rax)
 314:	06                   	(bad)  
 315:	00 00                	add    %al,(%rax)
 317:	00 00                	add    %al,(%rax)
 319:	00 81 00 00 01 10    	add    %al,0x10010000(%rcx)
 31f:	00 18                	add    %bl,(%rax)
 321:	00 00                	add    %al,(%rax)
 323:	00 00                	add    %al,(%rax)
 325:	00 00                	add    %al,(%rax)
 327:	00 28                	add    %ch,(%rax)
 329:	1d 8c 1c d1 65       	sbb    $0x65d11c8c,%eax
 32e:	ce                   	(bad)  
 32f:	6d                   	insl   (%dx),%es:(%rdi)

Disassembly of section .dynsym:

0000000000000330 <.dynsym>:
	...
 348:	94                   	xchg   %eax,%esp
 349:	00 00                	add    %al,(%rax)
 34b:	00 12                	add    %dl,(%rdx)
	...
 35d:	00 00                	add    %al,(%rax)
 35f:	00 ba 00 00 00 20    	add    %bh,0x20000000(%rdx)
	...
 375:	00 00                	add    %al,(%rax)
 377:	00 42 00             	add    %al,0x0(%rdx)
 37a:	00 00                	add    %al,(%rax)
 37c:	12 00                	adc    (%rax),%al
	...
 38e:	00 00                	add    %al,(%rax)
 390:	65 00 00             	add    %al,%gs:(%rax)
 393:	00 12                	add    %dl,(%rdx)
	...
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 1a                	add    %bl,(%rdx)
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 12                	add    %dl,(%rdx)
	...
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 20                	add    %ah,(%rax)
 3c1:	00 00                	add    %al,(%rax)
 3c3:	00 12                	add    %dl,(%rdx)
	...
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 34 00             	add    %dh,(%rax,%rax,1)
 3da:	00 00                	add    %al,(%rax)
 3dc:	12 00                	adc    (%rax),%al
	...
 3ee:	00 00                	add    %al,(%rax)
 3f0:	41 00 00             	add    %al,(%r8)
 3f3:	00 12                	add    %dl,(%rdx)
	...
 405:	00 00                	add    %al,(%rax)
 407:	00 47 00             	add    %al,0x0(%rdi)
 40a:	00 00                	add    %al,(%rax)
 40c:	12 00                	adc    (%rax),%al
	...
 41e:	00 00                	add    %al,(%rax)
 420:	2f                   	(bad)  
 421:	00 00                	add    %al,(%rax)
 423:	00 12                	add    %dl,(%rdx)
	...
 435:	00 00                	add    %al,(%rax)
 437:	00 82 00 00 00 12    	add    %al,0x12000000(%rdx)
	...
 44d:	00 00                	add    %al,(%rax)
 44f:	00 06                	add    %al,(%rsi)
 451:	00 00                	add    %al,(%rax)
 453:	00 12                	add    %dl,(%rdx)
	...
 465:	00 00                	add    %al,(%rax)
 467:	00 d6                	add    %dl,%dh
 469:	00 00                	add    %al,(%rax)
 46b:	00 20                	add    %ah,(%rax)
	...
 47d:	00 00                	add    %al,(%rax)
 47f:	00 4f 00             	add    %cl,0x0(%rdi)
 482:	00 00                	add    %al,(%rax)
 484:	12 00                	adc    (%rax),%al
	...
 496:	00 00                	add    %al,(%rax)
 498:	5d                   	pop    %rbp
 499:	00 00                	add    %al,(%rax)
 49b:	00 12                	add    %dl,(%rdx)
	...
 4ad:	00 00                	add    %al,(%rax)
 4af:	00 0b                	add    %cl,(%rbx)
 4b1:	00 00                	add    %al,(%rax)
 4b3:	00 12                	add    %dl,(%rdx)
	...
 4c5:	00 00                	add    %al,(%rax)
 4c7:	00 56 00             	add    %dl,0x0(%rsi)
 4ca:	00 00                	add    %al,(%rax)
 4cc:	12 00                	adc    (%rax),%al
	...
 4de:	00 00                	add    %al,(%rax)
 4e0:	12 00                	adc    (%rax),%al
 4e2:	00 00                	add    %al,(%rax)
 4e4:	12 00                	adc    (%rax),%al
	...
 4f6:	00 00                	add    %al,(%rax)
 4f8:	7a 00                	jp     4fa <_init-0xb06>
 4fa:	00 00                	add    %al,(%rax)
 4fc:	12 00                	adc    (%rax),%al
	...
 50e:	00 00                	add    %al,(%rax)
 510:	01 00                	add    %eax,(%rax)
 512:	00 00                	add    %al,(%rax)
 514:	12 00                	adc    (%rax),%al
	...
 526:	00 00                	add    %al,(%rax)
 528:	64 00 00             	add    %al,%fs:(%rax)
 52b:	00 12                	add    %dl,(%rdx)
	...
 53d:	00 00                	add    %al,(%rax)
 53f:	00 e5                	add    %ah,%ch
 541:	00 00                	add    %al,(%rax)
 543:	00 20                	add    %ah,(%rax)
	...
 555:	00 00                	add    %al,(%rax)
 557:	00 27                	add    %ah,(%rdi)
 559:	00 00                	add    %al,(%rax)
 55b:	00 12                	add    %dl,(%rdx)
	...
 56d:	00 00                	add    %al,(%rax)
 56f:	00 3a                	add    %bh,(%rdx)
 571:	00 00                	add    %al,(%rax)
 573:	00 11                	add    %dl,(%rcx)
 575:	00 19                	add    %bl,(%rcx)
 577:	00 c0                	add    %al,%al
 579:	a0 00 00 00 00 00 00 	movabs 0x8000000000000,%al
 580:	08 00 
 582:	00 00                	add    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	6b 00 00             	imul   $0x0,(%rax),%eax
 58b:	00 22                	add    %ah,(%rdx)
	...

Disassembly of section .dynstr:

00000000000005a0 <.dynstr>:
 5a0:	00 65 78             	add    %ah,0x78(%rbp)
 5a3:	69 74 00 70 75 74 63 	imul   $0x637475,0x70(%rax,%rax,1),%esi
 5aa:	00 
 5ab:	66 70 75             	data16 jo 623 <_init-0x9dd>
 5ae:	74 77                	je     627 <_init-0x9d9>
 5b0:	73 00                	jae    5b2 <_init-0xa4e>
 5b2:	72 65                	jb     619 <_init-0x9e7>
 5b4:	61                   	(bad)  
 5b5:	6c                   	insb   (%dx),%es:(%rdi)
 5b6:	6c                   	insb   (%dx),%es:(%rdi)
 5b7:	6f                   	outsl  %ds:(%rsi),(%dx)
 5b8:	63 00                	movsxd (%rax),%eax
 5ba:	63 6c 6f 63          	movsxd 0x63(%rdi,%rbp,2),%ebp
 5be:	6b 00 70             	imul   $0x70,(%rax),%eax
 5c1:	72 69                	jb     62c <_init-0x9d4>
 5c3:	6e                   	outsb  %ds:(%rsi),(%dx)
 5c4:	74 66                	je     62c <_init-0x9d4>
 5c6:	00 77 63             	add    %dh,0x63(%rdi)
 5c9:	73 6e                	jae    639 <_init-0x9c7>
 5cb:	6c                   	insb   (%dx),%es:(%rdi)
 5cc:	65 6e                	outsb  %gs:(%rsi),(%dx)
 5ce:	00 72 65             	add    %dh,0x65(%rdx)
 5d1:	61                   	(bad)  
 5d2:	64 00 70 75          	add    %dh,%fs:0x75(%rax)
 5d6:	74 77                	je     64f <_init-0x9b1>
 5d8:	63 00                	movsxd (%rax),%eax
 5da:	73 74                	jae    650 <_init-0x9b0>
 5dc:	64 6f                	outsl  %fs:(%rsi),(%dx)
 5de:	75 74                	jne    654 <_init-0x9ac>
 5e0:	00 66 70             	add    %ah,0x70(%rsi)
 5e3:	75 74                	jne    659 <_init-0x9a7>
 5e5:	73 00                	jae    5e7 <_init-0xa19>
 5e7:	73 74                	jae    65d <_init-0x9a3>
 5e9:	72 6e                	jb     659 <_init-0x9a7>
 5eb:	6c                   	insb   (%dx),%es:(%rdi)
 5ec:	65 6e                	outsb  %gs:(%rsi),(%dx)
 5ee:	00 6d 65             	add    %ch,0x65(%rbp)
 5f1:	6d                   	insl   (%dx),%es:(%rdi)
 5f2:	63 70 79             	movsxd 0x79(%rax),%esi
 5f5:	00 6d 61             	add    %ch,0x61(%rbp)
 5f8:	6c                   	insb   (%dx),%es:(%rdi)
 5f9:	6c                   	insb   (%dx),%es:(%rdi)
 5fa:	6f                   	outsl  %ds:(%rsi),(%dx)
 5fb:	63 00                	movsxd (%rax),%eax
 5fd:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%rbp,%riz,2),%bp
 604:	66 77 72             	data16 ja 679 <_init-0x987>
 607:	69 74 65 00 5f 5f 63 	imul   $0x78635f5f,0x0(%rbp,%riz,2),%esi
 60e:	78 
 60f:	61                   	(bad)  
 610:	5f                   	pop    %rdi
 611:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 617:	7a 65                	jp     67e <_init-0x982>
 619:	00 6d 65             	add    %ch,0x65(%rbp)
 61c:	6d                   	insl   (%dx),%es:(%rdi)
 61d:	6d                   	insl   (%dx),%es:(%rdi)
 61e:	6f                   	outsl  %ds:(%rsi),(%dx)
 61f:	76 65                	jbe    686 <_init-0x97a>
 621:	00 5f 5f             	add    %bl,0x5f(%rdi)
 624:	6c                   	insb   (%dx),%es:(%rdi)
 625:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 62c:	72 74                	jb     6a2 <_init-0x95e>
 62e:	5f                   	pop    %rdi
 62f:	6d                   	insl   (%dx),%es:(%rdi)
 630:	61                   	(bad)  
 631:	69 6e 00 66 72 65 65 	imul   $0x65657266,0x0(%rsi),%ebp
 638:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 63c:	63 2e                	movsxd (%rsi),%ebp
 63e:	73 6f                	jae    6af <_init-0x951>
 640:	2e 36 00 47 4c       	cs add %al,%ss:0x4c(%rdi)
 645:	49                   	rex.WB
 646:	42                   	rex.X
 647:	43 5f                	rex.XB pop %r15
 649:	32 2e                	xor    (%rsi),%ch
 64b:	31 34 00             	xor    %esi,(%rax,%rax,1)
 64e:	47                   	rex.RXB
 64f:	4c                   	rex.WR
 650:	49                   	rex.WB
 651:	42                   	rex.X
 652:	43 5f                	rex.XB pop %r15
 654:	32 2e                	xor    (%rsi),%ch
 656:	32 2e                	xor    (%rsi),%ch
 658:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 65d:	4d 5f                	rex.WRB pop %r15
 65f:	64 65 72 65          	fs gs jb 6c8 <_init-0x938>
 663:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 66a:	4d 
 66b:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 66d:	6f                   	outsl  %ds:(%rsi),(%dx)
 66e:	6e                   	outsb  %ds:(%rsi),(%dx)
 66f:	65 54                	gs push %rsp
 671:	61                   	(bad)  
 672:	62                   	(bad)  
 673:	6c                   	insb   (%dx),%es:(%rdi)
 674:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 678:	67 6d                	insl   (%dx),%es:(%edi)
 67a:	6f                   	outsl  %ds:(%rsi),(%dx)
 67b:	6e                   	outsb  %ds:(%rsi),(%dx)
 67c:	5f                   	pop    %rdi
 67d:	73 74                	jae    6f3 <_init-0x90d>
 67f:	61                   	(bad)  
 680:	72 74                	jb     6f6 <_init-0x90a>
 682:	5f                   	pop    %rdi
 683:	5f                   	pop    %rdi
 684:	00 5f 49             	add    %bl,0x49(%rdi)
 687:	54                   	push   %rsp
 688:	4d 5f                	rex.WRB pop %r15
 68a:	72 65                	jb     6f1 <_init-0x90f>
 68c:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 693:	4d 
 694:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 696:	6f                   	outsl  %ds:(%rsi),(%dx)
 697:	6e                   	outsb  %ds:(%rsi),(%dx)
 698:	65 54                	gs push %rsp
 69a:	61                   	(bad)  
 69b:	62                   	.byte 0x62
 69c:	6c                   	insb   (%dx),%es:(%rdi)
 69d:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000006a0 <.gnu.version>:
 6a0:	00 00                	add    %al,(%rax)
 6a2:	02 00                	add    (%rax),%al
 6a4:	00 00                	add    %al,(%rax)
 6a6:	02 00                	add    (%rax),%al
 6a8:	02 00                	add    (%rax),%al
 6aa:	02 00                	add    (%rax),%al
 6ac:	02 00                	add    (%rax),%al
 6ae:	02 00                	add    (%rax),%al
 6b0:	02 00                	add    (%rax),%al
 6b2:	02 00                	add    (%rax),%al
 6b4:	02 00                	add    (%rax),%al
 6b6:	02 00                	add    (%rax),%al
 6b8:	02 00                	add    (%rax),%al
 6ba:	00 00                	add    %al,(%rax)
 6bc:	03 00                	add    (%rax),%eax
 6be:	02 00                	add    (%rax),%al
 6c0:	02 00                	add    (%rax),%al
 6c2:	02 00                	add    (%rax),%al
 6c4:	02 00                	add    (%rax),%al
 6c6:	02 00                	add    (%rax),%al
 6c8:	02 00                	add    (%rax),%al
 6ca:	02 00                	add    (%rax),%al
 6cc:	00 00                	add    %al,(%rax)
 6ce:	02 00                	add    (%rax),%al
 6d0:	02 00                	add    (%rax),%al
 6d2:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000006d8 <.gnu.version_r>:
 6d8:	01 00                	add    %eax,(%rax)
 6da:	02 00                	add    (%rax),%al
 6dc:	99                   	cltd   
 6dd:	00 00                	add    %al,(%rax)
 6df:	00 10                	add    %dl,(%rax)
 6e1:	00 00                	add    %al,(%rax)
 6e3:	00 00                	add    %al,(%rax)
 6e5:	00 00                	add    %al,(%rax)
 6e7:	00 94 91 96 06 00 00 	add    %dl,0x696(%rcx,%rdx,4)
 6ee:	03 00                	add    (%rax),%eax
 6f0:	a3 00 00 00 10 00 00 	movabs %eax,0x7500000010000000
 6f7:	00 75 
 6f9:	1a 69 09             	sbb    0x9(%rcx),%ch
 6fc:	00 00                	add    %al,(%rax)
 6fe:	02 00                	add    (%rax),%al
 700:	ae                   	scas   %es:(%rdi),%al
 701:	00 00                	add    %al,(%rax)
 703:	00 00                	add    %al,(%rax)
 705:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000708 <.rela.dyn>:
 708:	e8 9d 00 00 00       	callq  7aa <_init-0x856>
 70d:	00 00                	add    %al,(%rax)
 70f:	00 08                	add    %cl,(%rax)
 711:	00 00                	add    %al,(%rax)
 713:	00 00                	add    %al,(%rax)
 715:	00 00                	add    %al,(%rax)
 717:	00 70 14             	add    %dh,0x14(%rax)
 71a:	00 00                	add    %al,(%rax)
 71c:	00 00                	add    %al,(%rax)
 71e:	00 00                	add    %al,(%rax)
 720:	f0 9d                	lock popfq 
 722:	00 00                	add    %al,(%rax)
 724:	00 00                	add    %al,(%rax)
 726:	00 00                	add    %al,(%rax)
 728:	08 00                	or     %al,(%rax)
 72a:	00 00                	add    %al,(%rax)
 72c:	00 00                	add    %al,(%rax)
 72e:	00 00                	add    %al,(%rax)
 730:	30 14 00             	xor    %dl,(%rax,%rax,1)
 733:	00 00                	add    %al,(%rax)
 735:	00 00                	add    %al,(%rax)
 737:	00 b8 a0 00 00 00    	add    %bh,0xa0(%rax)
 73d:	00 00                	add    %al,(%rax)
 73f:	00 08                	add    %cl,(%rax)
 741:	00 00                	add    %al,(%rax)
 743:	00 00                	add    %al,(%rax)
 745:	00 00                	add    %al,(%rax)
 747:	00 b8 a0 00 00 00    	add    %bh,0xa0(%rax)
 74d:	00 00                	add    %al,(%rax)
 74f:	00 d8                	add    %bl,%al
 751:	9f                   	lahf   
 752:	00 00                	add    %al,(%rax)
 754:	00 00                	add    %al,(%rax)
 756:	00 00                	add    %al,(%rax)
 758:	06                   	(bad)  
 759:	00 00                	add    %al,(%rax)
 75b:	00 02                	add    %al,(%rdx)
	...
 765:	00 00                	add    %al,(%rax)
 767:	00 e0                	add    %ah,%al
 769:	9f                   	lahf   
 76a:	00 00                	add    %al,(%rax)
 76c:	00 00                	add    %al,(%rax)
 76e:	00 00                	add    %al,(%rax)
 770:	06                   	(bad)  
 771:	00 00                	add    %al,(%rax)
 773:	00 0b                	add    %cl,(%rbx)
	...
 77d:	00 00                	add    %al,(%rax)
 77f:	00 e8                	add    %ch,%al
 781:	9f                   	lahf   
 782:	00 00                	add    %al,(%rax)
 784:	00 00                	add    %al,(%rax)
 786:	00 00                	add    %al,(%rax)
 788:	06                   	(bad)  
 789:	00 00                	add    %al,(%rax)
 78b:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 791 <_init-0x86f>
 791:	00 00                	add    %al,(%rax)
 793:	00 00                	add    %al,(%rax)
 795:	00 00                	add    %al,(%rax)
 797:	00 f0                	add    %dh,%al
 799:	9f                   	lahf   
 79a:	00 00                	add    %al,(%rax)
 79c:	00 00                	add    %al,(%rax)
 79e:	00 00                	add    %al,(%rax)
 7a0:	06                   	(bad)  
 7a1:	00 00                	add    %al,(%rax)
 7a3:	00 16                	add    %dl,(%rsi)
	...
 7ad:	00 00                	add    %al,(%rax)
 7af:	00 f8                	add    %bh,%al
 7b1:	9f                   	lahf   
 7b2:	00 00                	add    %al,(%rax)
 7b4:	00 00                	add    %al,(%rax)
 7b6:	00 00                	add    %al,(%rax)
 7b8:	06                   	(bad)  
 7b9:	00 00                	add    %al,(%rax)
 7bb:	00 19                	add    %bl,(%rcx)
	...
 7c5:	00 00                	add    %al,(%rax)
 7c7:	00 c0                	add    %al,%al
 7c9:	a0 00 00 00 00 00 00 	movabs 0x5000000000000,%al
 7d0:	05 00 
 7d2:	00 00                	add    %al,(%rax)
 7d4:	18 00                	sbb    %al,(%rax)
	...

Disassembly of section .rela.plt:

00000000000007e0 <.rela.plt>:
 7e0:	18 a0 00 00 00 00    	sbb    %ah,0x0(%rax)
 7e6:	00 00                	add    %al,(%rax)
 7e8:	07                   	(bad)  
 7e9:	00 00                	add    %al,(%rax)
 7eb:	00 01                	add    %al,(%rcx)
	...
 7f5:	00 00                	add    %al,(%rax)
 7f7:	00 20                	add    %ah,(%rax)
 7f9:	a0 00 00 00 00 00 00 	movabs 0x7000000000000,%al
 800:	07 00 
 802:	00 00                	add    %al,(%rax)
 804:	03 00                	add    (%rax),%eax
	...
 80e:	00 00                	add    %al,(%rax)
 810:	28 a0 00 00 00 00    	sub    %ah,0x0(%rax)
 816:	00 00                	add    %al,(%rax)
 818:	07                   	(bad)  
 819:	00 00                	add    %al,(%rax)
 81b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 826:	00 00                	add    %al,(%rax)
 828:	30 a0 00 00 00 00    	xor    %ah,0x0(%rax)
 82e:	00 00                	add    %al,(%rax)
 830:	07                   	(bad)  
 831:	00 00                	add    %al,(%rax)
 833:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 839 <_init-0x7c7>
 839:	00 00                	add    %al,(%rax)
 83b:	00 00                	add    %al,(%rax)
 83d:	00 00                	add    %al,(%rax)
 83f:	00 38                	add    %bh,(%rax)
 841:	a0 00 00 00 00 00 00 	movabs 0x7000000000000,%al
 848:	07 00 
 84a:	00 00                	add    %al,(%rax)
 84c:	06                   	(bad)  
	...
 855:	00 00                	add    %al,(%rax)
 857:	00 40 a0             	add    %al,-0x60(%rax)
 85a:	00 00                	add    %al,(%rax)
 85c:	00 00                	add    %al,(%rax)
 85e:	00 00                	add    %al,(%rax)
 860:	07                   	(bad)  
 861:	00 00                	add    %al,(%rax)
 863:	00 07                	add    %al,(%rdi)
	...
 86d:	00 00                	add    %al,(%rax)
 86f:	00 48 a0             	add    %cl,-0x60(%rax)
 872:	00 00                	add    %al,(%rax)
 874:	00 00                	add    %al,(%rax)
 876:	00 00                	add    %al,(%rax)
 878:	07                   	(bad)  
 879:	00 00                	add    %al,(%rax)
 87b:	00 08                	add    %cl,(%rax)
	...
 885:	00 00                	add    %al,(%rax)
 887:	00 50 a0             	add    %dl,-0x60(%rax)
 88a:	00 00                	add    %al,(%rax)
 88c:	00 00                	add    %al,(%rax)
 88e:	00 00                	add    %al,(%rax)
 890:	07                   	(bad)  
 891:	00 00                	add    %al,(%rax)
 893:	00 09                	add    %cl,(%rcx)
	...
 89d:	00 00                	add    %al,(%rax)
 89f:	00 58 a0             	add    %bl,-0x60(%rax)
 8a2:	00 00                	add    %al,(%rax)
 8a4:	00 00                	add    %al,(%rax)
 8a6:	00 00                	add    %al,(%rax)
 8a8:	07                   	(bad)  
 8a9:	00 00                	add    %al,(%rax)
 8ab:	00 0a                	add    %cl,(%rdx)
	...
 8b5:	00 00                	add    %al,(%rax)
 8b7:	00 60 a0             	add    %ah,-0x60(%rax)
 8ba:	00 00                	add    %al,(%rax)
 8bc:	00 00                	add    %al,(%rax)
 8be:	00 00                	add    %al,(%rax)
 8c0:	07                   	(bad)  
 8c1:	00 00                	add    %al,(%rax)
 8c3:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 8ce:	00 00                	add    %al,(%rax)
 8d0:	68 a0 00 00 00       	pushq  $0xa0
 8d5:	00 00                	add    %al,(%rax)
 8d7:	00 07                	add    %al,(%rdi)
 8d9:	00 00                	add    %al,(%rax)
 8db:	00 0e                	add    %cl,(%rsi)
	...
 8e5:	00 00                	add    %al,(%rax)
 8e7:	00 70 a0             	add    %dh,-0x60(%rax)
 8ea:	00 00                	add    %al,(%rax)
 8ec:	00 00                	add    %al,(%rax)
 8ee:	00 00                	add    %al,(%rax)
 8f0:	07                   	(bad)  
 8f1:	00 00                	add    %al,(%rax)
 8f3:	00 0f                	add    %cl,(%rdi)
	...
 8fd:	00 00                	add    %al,(%rax)
 8ff:	00 78 a0             	add    %bh,-0x60(%rax)
 902:	00 00                	add    %al,(%rax)
 904:	00 00                	add    %al,(%rax)
 906:	00 00                	add    %al,(%rax)
 908:	07                   	(bad)  
 909:	00 00                	add    %al,(%rax)
 90b:	00 10                	add    %dl,(%rax)
	...
 915:	00 00                	add    %al,(%rax)
 917:	00 80 a0 00 00 00    	add    %al,0xa0(%rax)
 91d:	00 00                	add    %al,(%rax)
 91f:	00 07                	add    %al,(%rdi)
 921:	00 00                	add    %al,(%rax)
 923:	00 11                	add    %dl,(%rcx)
	...
 92d:	00 00                	add    %al,(%rax)
 92f:	00 88 a0 00 00 00    	add    %cl,0xa0(%rax)
 935:	00 00                	add    %al,(%rax)
 937:	00 07                	add    %al,(%rdi)
 939:	00 00                	add    %al,(%rax)
 93b:	00 12                	add    %dl,(%rdx)
	...
 945:	00 00                	add    %al,(%rax)
 947:	00 90 a0 00 00 00    	add    %dl,0xa0(%rax)
 94d:	00 00                	add    %al,(%rax)
 94f:	00 07                	add    %al,(%rdi)
 951:	00 00                	add    %al,(%rax)
 953:	00 13                	add    %dl,(%rbx)
	...
 95d:	00 00                	add    %al,(%rax)
 95f:	00 98 a0 00 00 00    	add    %bl,0xa0(%rax)
 965:	00 00                	add    %al,(%rax)
 967:	00 07                	add    %al,(%rdi)
 969:	00 00                	add    %al,(%rax)
 96b:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
 976:	00 00                	add    %al,(%rax)
 978:	a0 a0 00 00 00 00 00 	movabs 0x7000000000000a0,%al
 97f:	00 07 
 981:	00 00                	add    %al,(%rax)
 983:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 989 <_init-0x677>
 989:	00 00                	add    %al,(%rax)
 98b:	00 00                	add    %al,(%rax)
 98d:	00 00                	add    %al,(%rax)
 98f:	00 a8 a0 00 00 00    	add    %ch,0xa0(%rax)
 995:	00 00                	add    %al,(%rax)
 997:	00 07                	add    %al,(%rdi)
 999:	00 00                	add    %al,(%rax)
 99b:	00 17                	add    %dl,(%rdi)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 8f 00 00 	mov    0x8fdd(%rip),%rax        # 9fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 8f 00 00    	pushq  0x8fe2(%rip)        # a008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 8f 00 00    	jmpq   *0x8fe4(%rip)        # a010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 8f 00 00    	jmpq   *0x8fe2(%rip)        # a018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <puts@plt>:
    1040:	ff 25 da 8f 00 00    	jmpq   *0x8fda(%rip)        # a020 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <write@plt>:
    1050:	ff 25 d2 8f 00 00    	jmpq   *0x8fd2(%rip)        # a028 <write@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <clock@plt>:
    1060:	ff 25 ca 8f 00 00    	jmpq   *0x8fca(%rip)        # a030 <clock@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <printf@plt>:
    1070:	ff 25 c2 8f 00 00    	jmpq   *0x8fc2(%rip)        # a038 <printf@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <putwc@plt>:
    1080:	ff 25 ba 8f 00 00    	jmpq   *0x8fba(%rip)        # a040 <putwc@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <fputs@plt>:
    1090:	ff 25 b2 8f 00 00    	jmpq   *0x8fb2(%rip)        # a048 <fputs@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

00000000000010a0 <strnlen@plt>:
    10a0:	ff 25 aa 8f 00 00    	jmpq   *0x8faa(%rip)        # a050 <strnlen@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <.plt>

00000000000010b0 <read@plt>:
    10b0:	ff 25 a2 8f 00 00    	jmpq   *0x8fa2(%rip)        # a058 <read@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <.plt>

00000000000010c0 <putc@plt>:
    10c0:	ff 25 9a 8f 00 00    	jmpq   *0x8f9a(%rip)        # a060 <putc@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <.plt>

00000000000010d0 <memcpy@plt>:
    10d0:	ff 25 92 8f 00 00    	jmpq   *0x8f92(%rip)        # a068 <memcpy@GLIBC_2.14>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <.plt>

00000000000010e0 <fileno@plt>:
    10e0:	ff 25 8a 8f 00 00    	jmpq   *0x8f8a(%rip)        # a070 <fileno@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <.plt>

00000000000010f0 <fputws@plt>:
    10f0:	ff 25 82 8f 00 00    	jmpq   *0x8f82(%rip)        # a078 <fputws@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <.plt>

0000000000001100 <malloc@plt>:
    1100:	ff 25 7a 8f 00 00    	jmpq   *0x8f7a(%rip)        # a080 <malloc@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <.plt>

0000000000001110 <realloc@plt>:
    1110:	ff 25 72 8f 00 00    	jmpq   *0x8f72(%rip)        # a088 <realloc@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <.plt>

0000000000001120 <memmove@plt>:
    1120:	ff 25 6a 8f 00 00    	jmpq   *0x8f6a(%rip)        # a090 <memmove@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <.plt>

0000000000001130 <exit@plt>:
    1130:	ff 25 62 8f 00 00    	jmpq   *0x8f62(%rip)        # a098 <exit@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	pushq  $0x10
    113b:	e9 e0 fe ff ff       	jmpq   1020 <.plt>

0000000000001140 <fwrite@plt>:
    1140:	ff 25 5a 8f 00 00    	jmpq   *0x8f5a(%rip)        # a0a0 <fwrite@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	pushq  $0x11
    114b:	e9 d0 fe ff ff       	jmpq   1020 <.plt>

0000000000001150 <wcsnlen@plt>:
    1150:	ff 25 52 8f 00 00    	jmpq   *0x8f52(%rip)        # a0a8 <wcsnlen@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	pushq  $0x12
    115b:	e9 c0 fe ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001160 <__cxa_finalize@plt>:
    1160:	ff 25 92 8e 00 00    	jmpq   *0x8e92(%rip)        # 9ff8 <__cxa_finalize@GLIBC_2.2.5>
    1166:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001170 <main>:
    1170:	41 57                	push   %r15
    1172:	41 56                	push   %r14
    1174:	41 55                	push   %r13
    1176:	41 bd 90 01 00 00    	mov    $0x190,%r13d
    117c:	41 54                	push   %r12
    117e:	4c 8d 25 03 61 00 00 	lea    0x6103(%rip),%r12        # 7288 <CSWTCH.19+0xf8>
    1185:	55                   	push   %rbp
    1186:	53                   	push   %rbx
    1187:	48 83 ec 38          	sub    $0x38,%rsp
    118b:	48 8b 3d 2e 8f 00 00 	mov    0x8f2e(%rip),%rdi        # a0c0 <stdout@@GLIBC_2.2.5>
    1192:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
    1197:	4c 8d 74 24 18       	lea    0x18(%rsp),%r14
    119c:	e8 3f ff ff ff       	callq  10e0 <fileno@plt>
    11a1:	89 c3                	mov    %eax,%ebx
    11a3:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    11a8:	48 89 04 24          	mov    %rax,(%rsp)
    11ac:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
    11b1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    11b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	bf 14 00 00 00       	mov    $0x14,%edi
    11c5:	e8 d6 0f 00 00       	callq  21a0 <ncstr_new>
    11ca:	48 89 c7             	mov    %rax,%rdi
    11cd:	e8 1e 0f 00 00       	callq  20f0 <cstr_free>
    11d2:	48 8d 3d 37 60 00 00 	lea    0x6037(%rip),%rdi        # 7210 <CSWTCH.19+0x80>
    11d9:	e8 62 11 00 00       	callq  2340 <ncstr_from>
    11de:	48 8d 3d 44 60 00 00 	lea    0x6044(%rip),%rdi        # 7229 <CSWTCH.19+0x99>
    11e5:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    11ea:	e8 51 fe ff ff       	callq  1040 <puts@plt>
    11ef:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    11f4:	31 f6                	xor    %esi,%esi
    11f6:	89 da                	mov    %ebx,%edx
    11f8:	e8 b3 34 00 00       	callq  46b0 <cstr_puts>
    11fd:	48 8d 3d 2f 60 00 00 	lea    0x602f(%rip),%rdi        # 7233 <CSWTCH.19+0xa3>
    1204:	e8 37 11 00 00       	callq  2340 <ncstr_from>
    1209:	48 8d 3d 3d 60 00 00 	lea    0x603d(%rip),%rdi        # 724d <CSWTCH.19+0xbd>
    1210:	48 89 c5             	mov    %rax,%rbp
    1213:	e8 28 fe ff ff       	callq  1040 <puts@plt>
    1218:	89 da                	mov    %ebx,%edx
    121a:	31 f6                	xor    %esi,%esi
    121c:	48 89 ef             	mov    %rbp,%rdi
    121f:	e8 8c 34 00 00       	callq  46b0 <cstr_puts>
    1224:	48 89 ee             	mov    %rbp,%rsi
    1227:	4c 89 ff             	mov    %r15,%rdi
    122a:	e8 01 27 00 00       	callq  3930 <cstrcat>
    122f:	48 8d 3d f3 5f 00 00 	lea    0x5ff3(%rip),%rdi        # 7229 <CSWTCH.19+0x99>
    1236:	e8 05 fe ff ff       	callq  1040 <puts@plt>
    123b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1240:	89 da                	mov    %ebx,%edx
    1242:	31 f6                	xor    %esi,%esi
    1244:	e8 67 34 00 00       	callq  46b0 <cstr_puts>
    1249:	48 89 ef             	mov    %rbp,%rdi
    124c:	e8 8f 12 00 00       	callq  24e0 <ncstrcpy>
    1251:	4c 89 e6             	mov    %r12,%rsi
    1254:	4c 89 f7             	mov    %r14,%rdi
    1257:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    125c:	e8 6f 27 00 00       	callq  39d0 <cstrgcat>
    1261:	48 8d 3d ef 5f 00 00 	lea    0x5fef(%rip),%rdi        # 7257 <CSWTCH.19+0xc7>
    1268:	e8 d3 fd ff ff       	callq  1040 <puts@plt>
    126d:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    1272:	31 f6                	xor    %esi,%esi
    1274:	89 da                	mov    %ebx,%edx
    1276:	e8 35 34 00 00       	callq  46b0 <cstr_puts>
    127b:	4c 89 e7             	mov    %r12,%rdi
    127e:	e8 bd 10 00 00       	callq  2340 <ncstr_from>
    1283:	48 8d 3d d7 5f 00 00 	lea    0x5fd7(%rip),%rdi        # 7261 <CSWTCH.19+0xd1>
    128a:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    128f:	e8 ac fd ff ff       	callq  1040 <puts@plt>
    1294:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    1299:	31 f6                	xor    %esi,%esi
    129b:	89 da                	mov    %ebx,%edx
    129d:	e8 0e 34 00 00       	callq  46b0 <cstr_puts>
    12a2:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    12a7:	48 8b 3c 24          	mov    (%rsp),%rdi
    12ab:	ba 0a 00 00 00       	mov    $0xa,%edx
    12b0:	e8 3b 28 00 00       	callq  3af0 <cstrncat>
    12b5:	48 8d 3d a5 5f 00 00 	lea    0x5fa5(%rip),%rdi        # 7261 <CSWTCH.19+0xd1>
    12bc:	e8 7f fd ff ff       	callq  1040 <puts@plt>
    12c1:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    12c6:	31 f6                	xor    %esi,%esi
    12c8:	89 da                	mov    %ebx,%edx
    12ca:	e8 e1 33 00 00       	callq  46b0 <cstr_puts>
    12cf:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    12d4:	e8 07 12 00 00       	callq  24e0 <ncstrcpy>
    12d9:	48 8d 3d 8b 5f 00 00 	lea    0x5f8b(%rip),%rdi        # 726b <CSWTCH.19+0xdb>
    12e0:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    12e5:	e8 56 fd ff ff       	callq  1040 <puts@plt>
    12ea:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    12ef:	31 f6                	xor    %esi,%esi
    12f1:	89 da                	mov    %ebx,%edx
    12f3:	e8 b8 33 00 00       	callq  46b0 <cstr_puts>
    12f8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    12fd:	ba 14 00 00 00       	mov    $0x14,%edx
    1302:	4c 89 e6             	mov    %r12,%rsi
    1305:	e8 16 29 00 00       	callq  3c20 <cstrngcat>
    130a:	48 8d 3d 5a 5f 00 00 	lea    0x5f5a(%rip),%rdi        # 726b <CSWTCH.19+0xdb>
    1311:	e8 2a fd ff ff       	callq  1040 <puts@plt>
    1316:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    131b:	31 f6                	xor    %esi,%esi
    131d:	89 da                	mov    %ebx,%edx
    131f:	e8 8c 33 00 00       	callq  46b0 <cstr_puts>
    1324:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1329:	e8 c2 0d 00 00       	callq  20f0 <cstr_free>
    132e:	48 89 ef             	mov    %rbp,%rdi
    1331:	e8 ba 0d 00 00       	callq  20f0 <cstr_free>
    1336:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    133b:	e8 b0 0d 00 00       	callq  20f0 <cstr_free>
    1340:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    1345:	e8 a6 0d 00 00       	callq  20f0 <cstr_free>
    134a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    134f:	e8 9c 0d 00 00       	callq  20f0 <cstr_free>
    1354:	41 83 ed 01          	sub    $0x1,%r13d
    1358:	0f 85 62 fe ff ff    	jne    11c0 <main+0x50>
    135e:	e8 fd fc ff ff       	callq  1060 <clock@plt>
    1363:	48 8d 3d 0b 5f 00 00 	lea    0x5f0b(%rip),%rdi        # 7275 <CSWTCH.19+0xe5>
    136a:	48 89 c6             	mov    %rax,%rsi
    136d:	31 c0                	xor    %eax,%eax
    136f:	e8 fc fc ff ff       	callq  1070 <printf@plt>
    1374:	48 83 c4 38          	add    $0x38,%rsp
    1378:	31 c0                	xor    %eax,%eax
    137a:	5b                   	pop    %rbx
    137b:	5d                   	pop    %rbp
    137c:	41 5c                	pop    %r12
    137e:	41 5d                	pop    %r13
    1380:	41 5e                	pop    %r14
    1382:	41 5f                	pop    %r15
    1384:	c3                   	retq   
    1385:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    138c:	00 00 00 
    138f:	90                   	nop

0000000000001390 <_start>:
    1390:	31 ed                	xor    %ebp,%ebp
    1392:	49 89 d1             	mov    %rdx,%r9
    1395:	5e                   	pop    %rsi
    1396:	48 89 e2             	mov    %rsp,%rdx
    1399:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    139d:	50                   	push   %rax
    139e:	54                   	push   %rsp
    139f:	4c 8d 05 2a 5c 00 00 	lea    0x5c2a(%rip),%r8        # 6fd0 <__libc_csu_fini>
    13a6:	48 8d 0d c3 5b 00 00 	lea    0x5bc3(%rip),%rcx        # 6f70 <__libc_csu_init>
    13ad:	48 8d 3d bc fd ff ff 	lea    -0x244(%rip),%rdi        # 1170 <main>
    13b4:	ff 15 26 8c 00 00    	callq  *0x8c26(%rip)        # 9fe0 <__libc_start_main@GLIBC_2.2.5>
    13ba:	f4                   	hlt    
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <deregister_tm_clones>:
    13c0:	48 8d 3d f9 8c 00 00 	lea    0x8cf9(%rip),%rdi        # a0c0 <stdout@@GLIBC_2.2.5>
    13c7:	48 8d 05 f2 8c 00 00 	lea    0x8cf2(%rip),%rax        # a0c0 <stdout@@GLIBC_2.2.5>
    13ce:	48 39 f8             	cmp    %rdi,%rax
    13d1:	74 15                	je     13e8 <deregister_tm_clones+0x28>
    13d3:	48 8b 05 fe 8b 00 00 	mov    0x8bfe(%rip),%rax        # 9fd8 <_ITM_deregisterTMCloneTable>
    13da:	48 85 c0             	test   %rax,%rax
    13dd:	74 09                	je     13e8 <deregister_tm_clones+0x28>
    13df:	ff e0                	jmpq   *%rax
    13e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13e8:	c3                   	retq   
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <register_tm_clones>:
    13f0:	48 8d 3d c9 8c 00 00 	lea    0x8cc9(%rip),%rdi        # a0c0 <stdout@@GLIBC_2.2.5>
    13f7:	48 8d 35 c2 8c 00 00 	lea    0x8cc2(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    13fe:	48 29 fe             	sub    %rdi,%rsi
    1401:	48 89 f0             	mov    %rsi,%rax
    1404:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1408:	48 c1 f8 03          	sar    $0x3,%rax
    140c:	48 01 c6             	add    %rax,%rsi
    140f:	48 d1 fe             	sar    %rsi
    1412:	74 14                	je     1428 <register_tm_clones+0x38>
    1414:	48 8b 05 d5 8b 00 00 	mov    0x8bd5(%rip),%rax        # 9ff0 <_ITM_registerTMCloneTable>
    141b:	48 85 c0             	test   %rax,%rax
    141e:	74 08                	je     1428 <register_tm_clones+0x38>
    1420:	ff e0                	jmpq   *%rax
    1422:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1428:	c3                   	retq   
    1429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001430 <__do_global_dtors_aux>:
    1430:	80 3d 91 8c 00 00 00 	cmpb   $0x0,0x8c91(%rip)        # a0c8 <completed.0>
    1437:	75 2f                	jne    1468 <__do_global_dtors_aux+0x38>
    1439:	55                   	push   %rbp
    143a:	48 83 3d b6 8b 00 00 	cmpq   $0x0,0x8bb6(%rip)        # 9ff8 <__cxa_finalize@GLIBC_2.2.5>
    1441:	00 
    1442:	48 89 e5             	mov    %rsp,%rbp
    1445:	74 0c                	je     1453 <__do_global_dtors_aux+0x23>
    1447:	48 8b 3d 6a 8c 00 00 	mov    0x8c6a(%rip),%rdi        # a0b8 <__dso_handle>
    144e:	e8 0d fd ff ff       	callq  1160 <__cxa_finalize@plt>
    1453:	e8 68 ff ff ff       	callq  13c0 <deregister_tm_clones>
    1458:	c6 05 69 8c 00 00 01 	movb   $0x1,0x8c69(%rip)        # a0c8 <completed.0>
    145f:	5d                   	pop    %rbp
    1460:	c3                   	retq   
    1461:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1468:	c3                   	retq   
    1469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001470 <frame_dummy>:
    1470:	e9 7b ff ff ff       	jmpq   13f0 <register_tm_clones>
    1475:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    147c:	00 00 00 
    147f:	90                   	nop

0000000000001480 <__cstr_type>:
    1480:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    1484:	83 e0 03             	and    $0x3,%eax
    1487:	c3                   	retq   
    1488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    148f:	00 

0000000000001490 <__cstr_head>:
    1490:	55                   	push   %rbp
    1491:	83 ee 01             	sub    $0x1,%esi
    1494:	53                   	push   %rbx
    1495:	48 89 fb             	mov    %rdi,%rbx
    1498:	48 83 ec 08          	sub    $0x8,%rsp
    149c:	83 fe 03             	cmp    $0x3,%esi
    149f:	77 1f                	ja     14c0 <__cstr_head+0x30>
    14a1:	48 8d 05 88 5c 00 00 	lea    0x5c88(%rip),%rax        # 7130 <CSWTCH.19>
    14a8:	8b 2c b0             	mov    (%rax,%rsi,4),%ebp
    14ab:	48 89 d8             	mov    %rbx,%rax
    14ae:	48 83 c4 08          	add    $0x8,%rsp
    14b2:	5b                   	pop    %rbx
    14b3:	48 63 d5             	movslq %ebp,%rdx
    14b6:	5d                   	pop    %rbp
    14b7:	48 29 d0             	sub    %rdx,%rax
    14ba:	c3                   	retq   
    14bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    14c0:	ba 01 00 00 00       	mov    $0x1,%edx
    14c5:	48 8d 35 38 5b 00 00 	lea    0x5b38(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    14cc:	48 8d 3d 45 5b 00 00 	lea    0x5b45(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    14d3:	e8 98 54 00 00       	callq  6970 <__cstr_debug>
    14d8:	48 63 d5             	movslq %ebp,%rdx
    14db:	48 89 d8             	mov    %rbx,%rax
    14de:	48 83 c4 08          	add    $0x8,%rsp
    14e2:	48 29 d0             	sub    %rdx,%rax
    14e5:	5b                   	pop    %rbx
    14e6:	5d                   	pop    %rbp
    14e7:	c3                   	retq   
    14e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14ef:	00 

00000000000014f0 <__cstr_type_wn>:
    14f0:	b8 01 00 00 00       	mov    $0x1,%eax
    14f5:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    14fc:	76 1f                	jbe    151d <__cstr_type_wn+0x2d>
    14fe:	b8 02 00 00 00       	mov    $0x2,%eax
    1503:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    150a:	76 11                	jbe    151d <__cstr_type_wn+0x2d>
    150c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1511:	48 39 c7             	cmp    %rax,%rdi
    1514:	0f 97 c0             	seta   %al
    1517:	0f b6 c0             	movzbl %al,%eax
    151a:	83 c0 03             	add    $0x3,%eax
    151d:	c3                   	retq   
    151e:	66 90                	xchg   %ax,%ax

0000000000001520 <__cstr_nofbuf>:
    1520:	83 fe 03             	cmp    $0x3,%esi
    1523:	74 2b                	je     1550 <__cstr_nofbuf+0x30>
    1525:	77 19                	ja     1540 <__cstr_nofbuf+0x20>
    1527:	83 fe 01             	cmp    $0x1,%esi
    152a:	74 5c                	je     1588 <__cstr_nofbuf+0x68>
    152c:	83 fe 02             	cmp    $0x2,%esi
    152f:	75 27                	jne    1558 <__cstr_nofbuf+0x38>
    1531:	0f b7 47 fa          	movzwl -0x6(%rdi),%eax
    1535:	c3                   	retq   
    1536:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    153d:	00 00 00 
    1540:	83 fe 04             	cmp    $0x4,%esi
    1543:	75 13                	jne    1558 <__cstr_nofbuf+0x38>
    1545:	8b 47 e8             	mov    -0x18(%rdi),%eax
    1548:	c3                   	retq   
    1549:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1550:	8b 47 f4             	mov    -0xc(%rdi),%eax
    1553:	c3                   	retq   
    1554:	0f 1f 40 00          	nopl   0x0(%rax)
    1558:	48 83 ec 18          	sub    $0x18,%rsp
    155c:	ba 01 00 00 00       	mov    $0x1,%edx
    1561:	48 8d 35 9c 5a 00 00 	lea    0x5a9c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1568:	48 8d 3d b7 5a 00 00 	lea    0x5ab7(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    156f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1573:	e8 f8 53 00 00       	callq  6970 <__cstr_debug>
    1578:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    157c:	48 83 c4 18          	add    $0x18,%rsp
    1580:	c3                   	retq   
    1581:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1588:	0f b6 47 fd          	movzbl -0x3(%rdi),%eax
    158c:	c3                   	retq   
    158d:	0f 1f 00             	nopl   (%rax)

0000000000001590 <__cstr_relsiz>:
    1590:	83 fe 03             	cmp    $0x3,%esi
    1593:	74 2b                	je     15c0 <__cstr_relsiz+0x30>
    1595:	77 19                	ja     15b0 <__cstr_relsiz+0x20>
    1597:	83 fe 01             	cmp    $0x1,%esi
    159a:	74 5c                	je     15f8 <__cstr_relsiz+0x68>
    159c:	83 fe 02             	cmp    $0x2,%esi
    159f:	75 27                	jne    15c8 <__cstr_relsiz+0x38>
    15a1:	0f b7 47 fc          	movzwl -0x4(%rdi),%eax
    15a5:	c3                   	retq   
    15a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    15ad:	00 00 00 
    15b0:	83 fe 04             	cmp    $0x4,%esi
    15b3:	75 13                	jne    15c8 <__cstr_relsiz+0x38>
    15b5:	48 8b 47 f0          	mov    -0x10(%rdi),%rax
    15b9:	c3                   	retq   
    15ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    15c0:	8b 47 f8             	mov    -0x8(%rdi),%eax
    15c3:	c3                   	retq   
    15c4:	0f 1f 40 00          	nopl   0x0(%rax)
    15c8:	48 83 ec 18          	sub    $0x18,%rsp
    15cc:	ba 01 00 00 00       	mov    $0x1,%edx
    15d1:	48 8d 35 2c 5a 00 00 	lea    0x5a2c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    15d8:	48 8d 3d 55 5a 00 00 	lea    0x5a55(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    15df:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    15e4:	e8 87 53 00 00       	callq  6970 <__cstr_debug>
    15e9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    15ee:	48 83 c4 18          	add    $0x18,%rsp
    15f2:	c3                   	retq   
    15f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    15f8:	0f b6 47 fe          	movzbl -0x2(%rdi),%eax
    15fc:	c3                   	retq   
    15fd:	0f 1f 00             	nopl   (%rax)

0000000000001600 <__cstr_flag>:
    1600:	83 fe 03             	cmp    $0x3,%esi
    1603:	74 2b                	je     1630 <__cstr_flag+0x30>
    1605:	77 19                	ja     1620 <__cstr_flag+0x20>
    1607:	83 fe 01             	cmp    $0x1,%esi
    160a:	74 5c                	je     1668 <__cstr_flag+0x68>
    160c:	83 fe 02             	cmp    $0x2,%esi
    160f:	75 27                	jne    1638 <__cstr_flag+0x38>
    1611:	0f b7 47 fe          	movzwl -0x2(%rdi),%eax
    1615:	c3                   	retq   
    1616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    161d:	00 00 00 
    1620:	83 fe 04             	cmp    $0x4,%esi
    1623:	75 13                	jne    1638 <__cstr_flag+0x38>
    1625:	8b 47 f8             	mov    -0x8(%rdi),%eax
    1628:	c3                   	retq   
    1629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1630:	8b 47 fc             	mov    -0x4(%rdi),%eax
    1633:	c3                   	retq   
    1634:	0f 1f 40 00          	nopl   0x0(%rax)
    1638:	48 83 ec 18          	sub    $0x18,%rsp
    163c:	ba 01 00 00 00       	mov    $0x1,%edx
    1641:	48 8d 35 bc 59 00 00 	lea    0x59bc(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1648:	48 8d 3d f3 59 00 00 	lea    0x59f3(%rip),%rdi        # 7042 <_IO_stdin_used+0x42>
    164f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1653:	e8 18 53 00 00       	callq  6970 <__cstr_debug>
    1658:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    165c:	48 83 c4 18          	add    $0x18,%rsp
    1660:	c3                   	retq   
    1661:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1668:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    166c:	c3                   	retq   
    166d:	0f 1f 00             	nopl   (%rax)

0000000000001670 <__cstr_datoff>:
    1670:	83 ef 01             	sub    $0x1,%edi
    1673:	41 54                	push   %r12
    1675:	83 ff 03             	cmp    $0x3,%edi
    1678:	77 16                	ja     1690 <__cstr_datoff+0x20>
    167a:	48 8d 05 af 5a 00 00 	lea    0x5aaf(%rip),%rax        # 7130 <CSWTCH.19>
    1681:	44 8b 24 b8          	mov    (%rax,%rdi,4),%r12d
    1685:	44 89 e0             	mov    %r12d,%eax
    1688:	41 5c                	pop    %r12
    168a:	c3                   	retq   
    168b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1690:	ba 01 00 00 00       	mov    $0x1,%edx
    1695:	48 8d 35 68 59 00 00 	lea    0x5968(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    169c:	48 8d 3d 75 59 00 00 	lea    0x5975(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    16a3:	e8 c8 52 00 00       	callq  6970 <__cstr_debug>
    16a8:	44 89 e0             	mov    %r12d,%eax
    16ab:	41 5c                	pop    %r12
    16ad:	c3                   	retq   
    16ae:	66 90                	xchg   %ax,%ax

00000000000016b0 <__cstr_datoff_wn>:
    16b0:	b8 03 00 00 00       	mov    $0x3,%eax
    16b5:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    16bc:	76 1e                	jbe    16dc <__cstr_datoff_wn+0x2c>
    16be:	b8 06 00 00 00       	mov    $0x6,%eax
    16c3:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    16ca:	76 10                	jbe    16dc <__cstr_datoff_wn+0x2c>
    16cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16d1:	48 39 f8             	cmp    %rdi,%rax
    16d4:	19 c0                	sbb    %eax,%eax
    16d6:	83 e0 0c             	and    $0xc,%eax
    16d9:	83 c0 0c             	add    $0xc,%eax
    16dc:	c3                   	retq   
    16dd:	0f 1f 00             	nopl   (%rax)

00000000000016e0 <__cstr_datbuf>:
    16e0:	83 ef 01             	sub    $0x1,%edi
    16e3:	41 54                	push   %r12
    16e5:	83 ff 03             	cmp    $0x3,%edi
    16e8:	77 16                	ja     1700 <__cstr_datbuf+0x20>
    16ea:	48 8d 05 2f 5a 00 00 	lea    0x5a2f(%rip),%rax        # 7120 <CSWTCH.23>
    16f1:	44 8b 24 b8          	mov    (%rax,%rdi,4),%r12d
    16f5:	44 89 e0             	mov    %r12d,%eax
    16f8:	41 5c                	pop    %r12
    16fa:	c3                   	retq   
    16fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1700:	ba 01 00 00 00       	mov    $0x1,%edx
    1705:	48 8d 35 f8 58 00 00 	lea    0x58f8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    170c:	48 8d 3d 3b 59 00 00 	lea    0x593b(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    1713:	e8 58 52 00 00       	callq  6970 <__cstr_debug>
    1718:	44 89 e0             	mov    %r12d,%eax
    171b:	41 5c                	pop    %r12
    171d:	c3                   	retq   
    171e:	66 90                	xchg   %ax,%ax

0000000000001720 <__cstr_datbuf_wn>:
    1720:	b8 40 00 00 00       	mov    $0x40,%eax
    1725:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    172c:	76 22                	jbe    1750 <__cstr_datbuf_wn+0x30>
    172e:	b8 00 04 00 00       	mov    $0x400,%eax
    1733:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    173a:	76 14                	jbe    1750 <__cstr_datbuf_wn+0x30>
    173c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1741:	48 39 f8             	cmp    %rdi,%rax
    1744:	19 c0                	sbb    %eax,%eax
    1746:	25 00 f0 ff 00       	and    $0xfff000,%eax
    174b:	05 00 10 00 00       	add    $0x1000,%eax
    1750:	c3                   	retq   
    1751:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1758:	00 00 00 00 
    175c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001760 <__cstr_set_nofbuf>:
    1760:	83 fa 03             	cmp    $0x3,%edx
    1763:	74 2b                	je     1790 <__cstr_set_nofbuf+0x30>
    1765:	77 19                	ja     1780 <__cstr_set_nofbuf+0x20>
    1767:	83 fa 01             	cmp    $0x1,%edx
    176a:	74 44                	je     17b0 <__cstr_set_nofbuf+0x50>
    176c:	83 fa 02             	cmp    $0x2,%edx
    176f:	75 27                	jne    1798 <__cstr_set_nofbuf+0x38>
    1771:	66 89 77 fa          	mov    %si,-0x6(%rdi)
    1775:	c3                   	retq   
    1776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    177d:	00 00 00 
    1780:	83 fa 04             	cmp    $0x4,%edx
    1783:	75 13                	jne    1798 <__cstr_set_nofbuf+0x38>
    1785:	48 63 f6             	movslq %esi,%rsi
    1788:	48 89 77 e8          	mov    %rsi,-0x18(%rdi)
    178c:	c3                   	retq   
    178d:	0f 1f 00             	nopl   (%rax)
    1790:	89 77 f4             	mov    %esi,-0xc(%rdi)
    1793:	c3                   	retq   
    1794:	0f 1f 40 00          	nopl   0x0(%rax)
    1798:	ba 01 00 00 00       	mov    $0x1,%edx
    179d:	48 8d 35 60 58 00 00 	lea    0x5860(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    17a4:	48 8d 3d b1 58 00 00 	lea    0x58b1(%rip),%rdi        # 705c <_IO_stdin_used+0x5c>
    17ab:	e9 c0 51 00 00       	jmpq   6970 <__cstr_debug>
    17b0:	40 88 77 fd          	mov    %sil,-0x3(%rdi)
    17b4:	c3                   	retq   
    17b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    17bc:	00 00 00 00 

00000000000017c0 <__cstr_set_relsiz>:
    17c0:	83 fa 03             	cmp    $0x3,%edx
    17c3:	74 2b                	je     17f0 <__cstr_set_relsiz+0x30>
    17c5:	77 19                	ja     17e0 <__cstr_set_relsiz+0x20>
    17c7:	83 fa 01             	cmp    $0x1,%edx
    17ca:	74 44                	je     1810 <__cstr_set_relsiz+0x50>
    17cc:	83 fa 02             	cmp    $0x2,%edx
    17cf:	75 27                	jne    17f8 <__cstr_set_relsiz+0x38>
    17d1:	66 89 77 fa          	mov    %si,-0x6(%rdi)
    17d5:	c3                   	retq   
    17d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    17dd:	00 00 00 
    17e0:	83 fa 04             	cmp    $0x4,%edx
    17e3:	75 13                	jne    17f8 <__cstr_set_relsiz+0x38>
    17e5:	48 89 77 e8          	mov    %rsi,-0x18(%rdi)
    17e9:	c3                   	retq   
    17ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    17f0:	89 77 f4             	mov    %esi,-0xc(%rdi)
    17f3:	c3                   	retq   
    17f4:	0f 1f 40 00          	nopl   0x0(%rax)
    17f8:	ba 01 00 00 00       	mov    $0x1,%edx
    17fd:	48 8d 35 00 58 00 00 	lea    0x5800(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1804:	48 8d 3d 63 58 00 00 	lea    0x5863(%rip),%rdi        # 706e <_IO_stdin_used+0x6e>
    180b:	e9 60 51 00 00       	jmpq   6970 <__cstr_debug>
    1810:	40 88 77 fd          	mov    %sil,-0x3(%rdi)
    1814:	c3                   	retq   
    1815:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    181c:	00 00 00 00 

0000000000001820 <__cstr_header>:
    1820:	8d 42 ff             	lea    -0x1(%rdx),%eax
    1823:	41 54                	push   %r12
    1825:	49 89 fc             	mov    %rdi,%r12
    1828:	83 f8 03             	cmp    $0x3,%eax
    182b:	0f 87 87 00 00 00    	ja     18b8 <__cstr_header+0x98>
    1831:	48 8d 0d f8 58 00 00 	lea    0x58f8(%rip),%rcx        # 7130 <CSWTCH.19>
    1838:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    183c:	48 29 c6             	sub    %rax,%rsi
    183f:	83 fa 02             	cmp    $0x2,%edx
    1842:	0f 84 a8 00 00 00    	je     18f0 <__cstr_header+0xd0>
    1848:	76 26                	jbe    1870 <__cstr_header+0x50>
    184a:	83 fa 03             	cmp    $0x3,%edx
    184d:	74 49                	je     1898 <__cstr_header+0x78>
    184f:	48 8b 46 10          	mov    0x10(%rsi),%rax
    1853:	48 8b 56 08          	mov    0x8(%rsi),%rdx
    1857:	48 8b 0e             	mov    (%rsi),%rcx
    185a:	48 89 47 10          	mov    %rax,0x10(%rdi)
    185e:	4c 89 e0             	mov    %r12,%rax
    1861:	48 89 0f             	mov    %rcx,(%rdi)
    1864:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    1868:	41 5c                	pop    %r12
    186a:	c3                   	retq   
    186b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1870:	83 fa 01             	cmp    $0x1,%edx
    1873:	75 5b                	jne    18d0 <__cstr_header+0xb0>
    1875:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
    1879:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
    187d:	0f b6 0e             	movzbl (%rsi),%ecx
    1880:	48 89 47 10          	mov    %rax,0x10(%rdi)
    1884:	4c 89 e0             	mov    %r12,%rax
    1887:	48 89 0f             	mov    %rcx,(%rdi)
    188a:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    188e:	41 5c                	pop    %r12
    1890:	c3                   	retq   
    1891:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1898:	8b 06                	mov    (%rsi),%eax
    189a:	48 89 07             	mov    %rax,(%rdi)
    189d:	8b 46 04             	mov    0x4(%rsi),%eax
    18a0:	48 89 47 08          	mov    %rax,0x8(%rdi)
    18a4:	8b 46 08             	mov    0x8(%rsi),%eax
    18a7:	48 89 47 10          	mov    %rax,0x10(%rdi)
    18ab:	4c 89 e0             	mov    %r12,%rax
    18ae:	41 5c                	pop    %r12
    18b0:	c3                   	retq   
    18b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18b8:	ba 01 00 00 00       	mov    $0x1,%edx
    18bd:	48 8d 35 40 57 00 00 	lea    0x5740(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    18c4:	48 8d 3d 4d 57 00 00 	lea    0x574d(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    18cb:	e8 a0 50 00 00       	callq  6970 <__cstr_debug>
    18d0:	ba 01 00 00 00       	mov    $0x1,%edx
    18d5:	48 8d 35 28 57 00 00 	lea    0x5728(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    18dc:	48 8d 3d 9d 57 00 00 	lea    0x579d(%rip),%rdi        # 7080 <_IO_stdin_used+0x80>
    18e3:	e8 88 50 00 00       	callq  6970 <__cstr_debug>
    18e8:	4c 89 e0             	mov    %r12,%rax
    18eb:	41 5c                	pop    %r12
    18ed:	c3                   	retq   
    18ee:	66 90                	xchg   %ax,%ax
    18f0:	0f b7 46 04          	movzwl 0x4(%rsi),%eax
    18f4:	0f b7 56 02          	movzwl 0x2(%rsi),%edx
    18f8:	0f b7 0e             	movzwl (%rsi),%ecx
    18fb:	48 89 47 10          	mov    %rax,0x10(%rdi)
    18ff:	4c 89 e0             	mov    %r12,%rax
    1902:	48 89 0f             	mov    %rcx,(%rdi)
    1905:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    1909:	41 5c                	pop    %r12
    190b:	c3                   	retq   
    190c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001910 <__cstr_header_from>:
    1910:	48 89 f8             	mov    %rdi,%rax
    1913:	83 fa 03             	cmp    $0x3,%edx
    1916:	74 48                	je     1960 <__cstr_header_from+0x50>
    1918:	77 26                	ja     1940 <__cstr_header_from+0x30>
    191a:	83 fa 01             	cmp    $0x1,%edx
    191d:	0f 84 85 00 00 00    	je     19a8 <__cstr_header_from+0x98>
    1923:	83 fa 02             	cmp    $0x2,%edx
    1926:	75 50                	jne    1978 <__cstr_header_from+0x68>
    1928:	0f b7 4e 02          	movzwl 0x2(%rsi),%ecx
    192c:	0f b7 56 04          	movzwl 0x4(%rsi),%edx
    1930:	0f b7 36             	movzwl (%rsi),%esi
    1933:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    1937:	48 89 37             	mov    %rsi,(%rdi)
    193a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
    193e:	c3                   	retq   
    193f:	90                   	nop
    1940:	83 fa 04             	cmp    $0x4,%edx
    1943:	75 33                	jne    1978 <__cstr_header_from+0x68>
    1945:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
    1949:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    194d:	48 8b 36             	mov    (%rsi),%rsi
    1950:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    1954:	48 89 37             	mov    %rsi,(%rdi)
    1957:	48 89 57 10          	mov    %rdx,0x10(%rdi)
    195b:	c3                   	retq   
    195c:	0f 1f 40 00          	nopl   0x0(%rax)
    1960:	8b 0e                	mov    (%rsi),%ecx
    1962:	48 89 0f             	mov    %rcx,(%rdi)
    1965:	8b 4e 04             	mov    0x4(%rsi),%ecx
    1968:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    196c:	8b 4e 08             	mov    0x8(%rsi),%ecx
    196f:	48 89 4f 10          	mov    %rcx,0x10(%rdi)
    1973:	c3                   	retq   
    1974:	0f 1f 40 00          	nopl   0x0(%rax)
    1978:	48 83 ec 18          	sub    $0x18,%rsp
    197c:	ba 01 00 00 00       	mov    $0x1,%edx
    1981:	48 8d 35 7c 56 00 00 	lea    0x567c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1988:	48 8d 3d f1 56 00 00 	lea    0x56f1(%rip),%rdi        # 7080 <_IO_stdin_used+0x80>
    198f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1994:	e8 d7 4f 00 00       	callq  6970 <__cstr_debug>
    1999:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    199e:	48 83 c4 18          	add    $0x18,%rsp
    19a2:	c3                   	retq   
    19a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    19a8:	0f b6 4e 01          	movzbl 0x1(%rsi),%ecx
    19ac:	0f b6 56 02          	movzbl 0x2(%rsi),%edx
    19b0:	0f b6 36             	movzbl (%rsi),%esi
    19b3:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    19b7:	48 89 37             	mov    %rsi,(%rdi)
    19ba:	48 89 57 10          	mov    %rdx,0x10(%rdi)
    19be:	c3                   	retq   
    19bf:	90                   	nop

00000000000019c0 <__cstr_getman>:
    19c0:	49 89 f8             	mov    %rdi,%r8
    19c3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
    19ca:	76 64                	jbe    1a30 <__cstr_getman+0x70>
    19cc:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
    19d3:	0f 86 b7 00 00 00    	jbe    1a90 <__cstr_getman+0xd0>
    19d9:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    19de:	48 39 f2             	cmp    %rsi,%rdx
    19e1:	19 c0                	sbb    %eax,%eax
    19e3:	f7 d0                	not    %eax
    19e5:	83 c0 04             	add    $0x4,%eax
    19e8:	48 39 f2             	cmp    %rsi,%rdx
    19eb:	19 ff                	sbb    %edi,%edi
    19ed:	83 e7 0c             	and    $0xc,%edi
    19f0:	83 c7 0c             	add    $0xc,%edi
    19f3:	48 39 f2             	cmp    %rsi,%rdx
    19f6:	19 c9                	sbb    %ecx,%ecx
    19f8:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    19fe:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    1a04:	48 39 f2             	cmp    %rsi,%rdx
    1a07:	4d 19 c9             	sbb    %r9,%r9
    1a0a:	41 81 e1 00 f0 ff 00 	and    $0xfff000,%r9d
    1a11:	49 81 c1 00 10 00 00 	add    $0x1000,%r9
    1a18:	48 39 f2             	cmp    %rsi,%rdx
    1a1b:	45 19 d2             	sbb    %r10d,%r10d
    1a1e:	41 f7 d2             	not    %r10d
    1a21:	41 83 c2 04          	add    $0x4,%r10d
    1a25:	eb 24                	jmp    1a4b <__cstr_getman+0x8b>
    1a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a2e:	00 00 
    1a30:	b8 01 00 00 00       	mov    $0x1,%eax
    1a35:	bf 03 00 00 00       	mov    $0x3,%edi
    1a3a:	b9 40 00 00 00       	mov    $0x40,%ecx
    1a3f:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1a45:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1a4b:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1a52:	00 
    1a53:	31 d2                	xor    %edx,%edx
    1a55:	88 44 24 ff          	mov    %al,-0x1(%rsp)
    1a59:	48 89 f0             	mov    %rsi,%rax
    1a5c:	49 f7 f1             	div    %r9
    1a5f:	49 89 30             	mov    %rsi,(%r8)
    1a62:	41 89 78 18          	mov    %edi,0x18(%r8)
    1a66:	45 89 50 1c          	mov    %r10d,0x1c(%r8)
    1a6a:	83 c0 01             	add    $0x1,%eax
    1a6d:	0f af c8             	imul   %eax,%ecx
    1a70:	41 89 40 10          	mov    %eax,0x10(%r8)
    1a74:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    1a78:	41 89 40 14          	mov    %eax,0x14(%r8)
    1a7c:	4c 89 c0             	mov    %r8,%rax
    1a7f:	01 f9                	add    %edi,%ecx
    1a81:	48 63 c9             	movslq %ecx,%rcx
    1a84:	49 89 48 08          	mov    %rcx,0x8(%r8)
    1a88:	c3                   	retq   
    1a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a90:	b8 02 00 00 00       	mov    $0x2,%eax
    1a95:	bf 06 00 00 00       	mov    $0x6,%edi
    1a9a:	b9 00 04 00 00       	mov    $0x400,%ecx
    1a9f:	41 b9 00 04 00 00    	mov    $0x400,%r9d
    1aa5:	41 ba 02 00 00 00    	mov    $0x2,%r10d
    1aab:	eb 9e                	jmp    1a4b <__cstr_getman+0x8b>
    1aad:	0f 1f 00             	nopl   (%rax)

0000000000001ab0 <__cstr_getman_wp>:
    1ab0:	41 57                	push   %r15
    1ab2:	8d 42 ff             	lea    -0x1(%rdx),%eax
    1ab5:	41 56                	push   %r14
    1ab7:	41 55                	push   %r13
    1ab9:	41 54                	push   %r12
    1abb:	49 89 fc             	mov    %rdi,%r12
    1abe:	55                   	push   %rbp
    1abf:	53                   	push   %rbx
    1ac0:	89 d3                	mov    %edx,%ebx
    1ac2:	48 83 ec 18          	sub    $0x18,%rsp
    1ac6:	83 fa 03             	cmp    $0x3,%edx
    1ac9:	0f 84 49 01 00 00    	je     1c18 <__cstr_getman_wp+0x168>
    1acf:	77 6f                	ja     1b40 <__cstr_getman_wp+0x90>
    1ad1:	83 fa 01             	cmp    $0x1,%edx
    1ad4:	0f 84 26 01 00 00    	je     1c00 <__cstr_getman_wp+0x150>
    1ada:	83 fa 02             	cmp    $0x2,%edx
    1add:	75 79                	jne    1b58 <__cstr_getman_wp+0xa8>
    1adf:	0f b7 4e fc          	movzwl -0x4(%rsi),%ecx
    1ae3:	44 0f b7 6e fa       	movzwl -0x6(%rsi),%r13d
    1ae8:	44 0f b7 7e fe       	movzwl -0x2(%rsi),%r15d
    1aed:	48 8d 15 3c 56 00 00 	lea    0x563c(%rip),%rdx        # 7130 <CSWTCH.19>
    1af4:	44 8b 34 82          	mov    (%rdx,%rax,4),%r14d
    1af8:	48 8d 15 21 56 00 00 	lea    0x5621(%rip),%rdx        # 7120 <CSWTCH.23>
    1aff:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    1b02:	89 e8                	mov    %ebp,%eax
    1b04:	45 89 6c 24 10       	mov    %r13d,0x10(%r12)
    1b09:	41 0f af c5          	imul   %r13d,%eax
    1b0d:	45 89 7c 24 14       	mov    %r15d,0x14(%r12)
    1b12:	45 89 74 24 18       	mov    %r14d,0x18(%r12)
    1b17:	41 89 5c 24 1c       	mov    %ebx,0x1c(%r12)
    1b1c:	44 01 f0             	add    %r14d,%eax
    1b1f:	49 89 0c 24          	mov    %rcx,(%r12)
    1b23:	48 98                	cltq   
    1b25:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    1b2a:	48 83 c4 18          	add    $0x18,%rsp
    1b2e:	4c 89 e0             	mov    %r12,%rax
    1b31:	5b                   	pop    %rbx
    1b32:	5d                   	pop    %rbp
    1b33:	41 5c                	pop    %r12
    1b35:	41 5d                	pop    %r13
    1b37:	41 5e                	pop    %r14
    1b39:	41 5f                	pop    %r15
    1b3b:	c3                   	retq   
    1b3c:	0f 1f 40 00          	nopl   0x0(%rax)
    1b40:	83 fa 04             	cmp    $0x4,%edx
    1b43:	75 13                	jne    1b58 <__cstr_getman_wp+0xa8>
    1b45:	48 8b 4e f0          	mov    -0x10(%rsi),%rcx
    1b49:	44 8b 6e e8          	mov    -0x18(%rsi),%r13d
    1b4d:	44 8b 7e f8          	mov    -0x8(%rsi),%r15d
    1b51:	eb 9a                	jmp    1aed <__cstr_getman_wp+0x3d>
    1b53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b58:	ba 01 00 00 00       	mov    $0x1,%edx
    1b5d:	48 8d 35 a0 54 00 00 	lea    0x54a0(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1b64:	48 8d 3d c9 54 00 00 	lea    0x54c9(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    1b6b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1b6f:	48 89 0c 24          	mov    %rcx,(%rsp)
    1b73:	e8 f8 4d 00 00       	callq  6970 <__cstr_debug>
    1b78:	ba 01 00 00 00       	mov    $0x1,%edx
    1b7d:	48 8d 35 80 54 00 00 	lea    0x5480(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1b84:	48 8d 3d 9b 54 00 00 	lea    0x549b(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    1b8b:	e8 e0 4d 00 00       	callq  6970 <__cstr_debug>
    1b90:	ba 01 00 00 00       	mov    $0x1,%edx
    1b95:	48 8d 35 68 54 00 00 	lea    0x5468(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1b9c:	48 8d 3d 9f 54 00 00 	lea    0x549f(%rip),%rdi        # 7042 <_IO_stdin_used+0x42>
    1ba3:	e8 c8 4d 00 00       	callq  6970 <__cstr_debug>
    1ba8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1bac:	48 8b 0c 24          	mov    (%rsp),%rcx
    1bb0:	83 f8 03             	cmp    $0x3,%eax
    1bb3:	0f 86 34 ff ff ff    	jbe    1aed <__cstr_getman_wp+0x3d>
    1bb9:	ba 01 00 00 00       	mov    $0x1,%edx
    1bbe:	48 8d 35 3f 54 00 00 	lea    0x543f(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1bc5:	48 8d 3d 4c 54 00 00 	lea    0x544c(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    1bcc:	48 89 0c 24          	mov    %rcx,(%rsp)
    1bd0:	e8 9b 4d 00 00       	callq  6970 <__cstr_debug>
    1bd5:	ba 01 00 00 00       	mov    $0x1,%edx
    1bda:	48 8d 35 23 54 00 00 	lea    0x5423(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1be1:	48 8d 3d 66 54 00 00 	lea    0x5466(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    1be8:	e8 83 4d 00 00       	callq  6970 <__cstr_debug>
    1bed:	48 8b 0c 24          	mov    (%rsp),%rcx
    1bf1:	e9 0c ff ff ff       	jmpq   1b02 <__cstr_getman_wp+0x52>
    1bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1bfd:	00 00 00 
    1c00:	0f b6 4e fe          	movzbl -0x2(%rsi),%ecx
    1c04:	44 0f b6 6e fd       	movzbl -0x3(%rsi),%r13d
    1c09:	44 0f b6 7e ff       	movzbl -0x1(%rsi),%r15d
    1c0e:	e9 da fe ff ff       	jmpq   1aed <__cstr_getman_wp+0x3d>
    1c13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1c18:	8b 4e f8             	mov    -0x8(%rsi),%ecx
    1c1b:	44 8b 6e f4          	mov    -0xc(%rsi),%r13d
    1c1f:	44 8b 7e fc          	mov    -0x4(%rsi),%r15d
    1c23:	e9 c5 fe ff ff       	jmpq   1aed <__cstr_getman_wp+0x3d>
    1c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c2f:	00 

0000000000001c30 <__cstr_getman_wh>:
    1c30:	41 57                	push   %r15
    1c32:	8d 56 ff             	lea    -0x1(%rsi),%edx
    1c35:	41 56                	push   %r14
    1c37:	41 55                	push   %r13
    1c39:	41 54                	push   %r12
    1c3b:	49 89 fc             	mov    %rdi,%r12
    1c3e:	55                   	push   %rbp
    1c3f:	53                   	push   %rbx
    1c40:	89 f3                	mov    %esi,%ebx
    1c42:	48 83 ec 18          	sub    $0x18,%rsp
    1c46:	48 8b 6c 24 58       	mov    0x58(%rsp),%rbp
    1c4b:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    1c50:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    1c55:	83 fa 03             	cmp    $0x3,%edx
    1c58:	77 56                	ja     1cb0 <__cstr_getman_wh+0x80>
    1c5a:	48 8d 05 cf 54 00 00 	lea    0x54cf(%rip),%rax        # 7130 <CSWTCH.19>
    1c61:	44 8b 34 90          	mov    (%rax,%rdx,4),%r14d
    1c65:	48 8d 05 b4 54 00 00 	lea    0x54b4(%rip),%rax        # 7120 <CSWTCH.23>
    1c6c:	8b 04 90             	mov    (%rax,%rdx,4),%eax
    1c6f:	41 0f af c5          	imul   %r13d,%eax
    1c73:	49 89 2c 24          	mov    %rbp,(%r12)
    1c77:	45 89 6c 24 10       	mov    %r13d,0x10(%r12)
    1c7c:	45 89 7c 24 14       	mov    %r15d,0x14(%r12)
    1c81:	44 01 f0             	add    %r14d,%eax
    1c84:	45 89 74 24 18       	mov    %r14d,0x18(%r12)
    1c89:	48 98                	cltq   
    1c8b:	41 89 5c 24 1c       	mov    %ebx,0x1c(%r12)
    1c90:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    1c95:	48 83 c4 18          	add    $0x18,%rsp
    1c99:	4c 89 e0             	mov    %r12,%rax
    1c9c:	5b                   	pop    %rbx
    1c9d:	5d                   	pop    %rbp
    1c9e:	41 5c                	pop    %r12
    1ca0:	41 5d                	pop    %r13
    1ca2:	41 5e                	pop    %r14
    1ca4:	41 5f                	pop    %r15
    1ca6:	c3                   	retq   
    1ca7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1cae:	00 00 
    1cb0:	ba 01 00 00 00       	mov    $0x1,%edx
    1cb5:	48 8d 35 48 53 00 00 	lea    0x5348(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1cbc:	48 8d 3d 55 53 00 00 	lea    0x5355(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    1cc3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1cc7:	e8 a4 4c 00 00       	callq  6970 <__cstr_debug>
    1ccc:	ba 01 00 00 00       	mov    $0x1,%edx
    1cd1:	48 8d 35 2c 53 00 00 	lea    0x532c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1cd8:	48 8d 3d 6f 53 00 00 	lea    0x536f(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    1cdf:	e8 8c 4c 00 00       	callq  6970 <__cstr_debug>
    1ce4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1ce8:	eb 85                	jmp    1c6f <__cstr_getman_wh+0x3f>
    1cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001cf0 <__cstr_set_header>:
    1cf0:	83 fa 03             	cmp    $0x3,%edx
    1cf3:	74 4b                	je     1d40 <__cstr_set_header+0x50>
    1cf5:	77 29                	ja     1d20 <__cstr_set_header+0x30>
    1cf7:	83 fa 01             	cmp    $0x1,%edx
    1cfa:	0f 84 90 00 00 00    	je     1d90 <__cstr_set_header+0xa0>
    1d00:	83 fa 02             	cmp    $0x2,%edx
    1d03:	75 5b                	jne    1d60 <__cstr_set_header+0x70>
    1d05:	8b 46 10             	mov    0x10(%rsi),%eax
    1d08:	66 89 07             	mov    %ax,(%rdi)
    1d0b:	48 8b 06             	mov    (%rsi),%rax
    1d0e:	66 89 47 02          	mov    %ax,0x2(%rdi)
    1d12:	0f b6 46 17          	movzbl 0x17(%rsi),%eax
    1d16:	66 89 47 04          	mov    %ax,0x4(%rdi)
    1d1a:	48 8d 47 06          	lea    0x6(%rdi),%rax
    1d1e:	c3                   	retq   
    1d1f:	90                   	nop
    1d20:	83 fa 04             	cmp    $0x4,%edx
    1d23:	75 3b                	jne    1d60 <__cstr_set_header+0x70>
    1d25:	48 63 46 10          	movslq 0x10(%rsi),%rax
    1d29:	48 89 07             	mov    %rax,(%rdi)
    1d2c:	48 8b 06             	mov    (%rsi),%rax
    1d2f:	48 89 47 08          	mov    %rax,0x8(%rdi)
    1d33:	0f b6 46 17          	movzbl 0x17(%rsi),%eax
    1d37:	48 89 47 10          	mov    %rax,0x10(%rdi)
    1d3b:	48 8d 47 18          	lea    0x18(%rdi),%rax
    1d3f:	c3                   	retq   
    1d40:	8b 46 10             	mov    0x10(%rsi),%eax
    1d43:	89 07                	mov    %eax,(%rdi)
    1d45:	48 8b 06             	mov    (%rsi),%rax
    1d48:	89 47 04             	mov    %eax,0x4(%rdi)
    1d4b:	0f b6 46 17          	movzbl 0x17(%rsi),%eax
    1d4f:	89 47 08             	mov    %eax,0x8(%rdi)
    1d52:	48 8d 47 0c          	lea    0xc(%rdi),%rax
    1d56:	c3                   	retq   
    1d57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1d5e:	00 00 
    1d60:	48 83 ec 18          	sub    $0x18,%rsp
    1d64:	ba 01 00 00 00       	mov    $0x1,%edx
    1d69:	48 8d 35 94 52 00 00 	lea    0x5294(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1d70:	48 8d 3d 1c 53 00 00 	lea    0x531c(%rip),%rdi        # 7093 <_IO_stdin_used+0x93>
    1d77:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1d7c:	e8 ef 4b 00 00       	callq  6970 <__cstr_debug>
    1d81:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1d86:	48 83 c4 18          	add    $0x18,%rsp
    1d8a:	c3                   	retq   
    1d8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1d90:	8b 46 10             	mov    0x10(%rsi),%eax
    1d93:	88 07                	mov    %al,(%rdi)
    1d95:	48 8b 06             	mov    (%rsi),%rax
    1d98:	88 47 01             	mov    %al,0x1(%rdi)
    1d9b:	0f b6 46 17          	movzbl 0x17(%rsi),%eax
    1d9f:	88 47 02             	mov    %al,0x2(%rdi)
    1da2:	48 8d 47 03          	lea    0x3(%rdi),%rax
    1da6:	c3                   	retq   
    1da7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1dae:	00 00 

0000000000001db0 <__cstr_set_header_wh>:
    1db0:	83 fa 03             	cmp    $0x3,%edx
    1db3:	74 4b                	je     1e00 <__cstr_set_header_wh+0x50>
    1db5:	77 29                	ja     1de0 <__cstr_set_header_wh+0x30>
    1db7:	83 fa 01             	cmp    $0x1,%edx
    1dba:	0f 84 88 00 00 00    	je     1e48 <__cstr_set_header_wh+0x98>
    1dc0:	83 fa 02             	cmp    $0x2,%edx
    1dc3:	75 5b                	jne    1e20 <__cstr_set_header_wh+0x70>
    1dc5:	48 8b 06             	mov    (%rsi),%rax
    1dc8:	66 89 07             	mov    %ax,(%rdi)
    1dcb:	48 8b 46 08          	mov    0x8(%rsi),%rax
    1dcf:	66 89 47 02          	mov    %ax,0x2(%rdi)
    1dd3:	0f b7 46 1e          	movzwl 0x1e(%rsi),%eax
    1dd7:	66 89 47 04          	mov    %ax,0x4(%rdi)
    1ddb:	48 8d 47 06          	lea    0x6(%rdi),%rax
    1ddf:	c3                   	retq   
    1de0:	83 fa 04             	cmp    $0x4,%edx
    1de3:	75 3b                	jne    1e20 <__cstr_set_header_wh+0x70>
    1de5:	48 8b 06             	mov    (%rsi),%rax
    1de8:	48 89 07             	mov    %rax,(%rdi)
    1deb:	48 8b 46 08          	mov    0x8(%rsi),%rax
    1def:	48 89 47 08          	mov    %rax,0x8(%rdi)
    1df3:	48 8b 46 48          	mov    0x48(%rsi),%rax
    1df7:	48 89 47 10          	mov    %rax,0x10(%rdi)
    1dfb:	48 8d 47 18          	lea    0x18(%rdi),%rax
    1dff:	c3                   	retq   
    1e00:	48 8b 06             	mov    (%rsi),%rax
    1e03:	89 07                	mov    %eax,(%rdi)
    1e05:	48 8b 46 08          	mov    0x8(%rsi),%rax
    1e09:	89 47 04             	mov    %eax,0x4(%rdi)
    1e0c:	8b 46 2c             	mov    0x2c(%rsi),%eax
    1e0f:	89 47 08             	mov    %eax,0x8(%rdi)
    1e12:	48 8d 47 0c          	lea    0xc(%rdi),%rax
    1e16:	c3                   	retq   
    1e17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1e1e:	00 00 
    1e20:	48 83 ec 08          	sub    $0x8,%rsp
    1e24:	ba 01 00 00 00       	mov    $0x1,%edx
    1e29:	48 8d 35 d4 51 00 00 	lea    0x51d4(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1e30:	48 8d 3d 6e 52 00 00 	lea    0x526e(%rip),%rdi        # 70a5 <_IO_stdin_used+0xa5>
    1e37:	e8 34 4b 00 00       	callq  6970 <__cstr_debug>
    1e3c:	48 83 c4 08          	add    $0x8,%rsp
    1e40:	c3                   	retq   
    1e41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e48:	48 8b 06             	mov    (%rsi),%rax
    1e4b:	88 07                	mov    %al,(%rdi)
    1e4d:	48 8b 46 08          	mov    0x8(%rsi),%rax
    1e51:	88 47 01             	mov    %al,0x1(%rdi)
    1e54:	0f b6 46 17          	movzbl 0x17(%rsi),%eax
    1e58:	88 47 02             	mov    %al,0x2(%rdi)
    1e5b:	48 8d 47 03          	lea    0x3(%rdi),%rax
    1e5f:	c3                   	retq   

0000000000001e60 <__cstr_toflag>:
    1e60:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1e67:	00 
    1e68:	40 88 7c 24 ff       	mov    %dil,-0x1(%rsp)
    1e6d:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    1e71:	c3                   	retq   
    1e72:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1e79:	00 00 00 00 
    1e7d:	0f 1f 00             	nopl   (%rax)

0000000000001e80 <__cstr_from_flag>:
    1e80:	89 f8                	mov    %edi,%eax
    1e82:	c1 e8 18             	shr    $0x18,%eax
    1e85:	c3                   	retq   
    1e86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1e8d:	00 00 00 

0000000000001e90 <__cstr_nof_buffer>:
    1e90:	55                   	push   %rbp
    1e91:	83 ee 01             	sub    $0x1,%esi
    1e94:	53                   	push   %rbx
    1e95:	48 89 fb             	mov    %rdi,%rbx
    1e98:	48 83 ec 08          	sub    $0x8,%rsp
    1e9c:	83 fe 03             	cmp    $0x3,%esi
    1e9f:	77 1f                	ja     1ec0 <__cstr_nof_buffer+0x30>
    1ea1:	48 8d 05 78 52 00 00 	lea    0x5278(%rip),%rax        # 7120 <CSWTCH.23>
    1ea8:	8b 2c b0             	mov    (%rax,%rsi,4),%ebp
    1eab:	48 63 cd             	movslq %ebp,%rcx
    1eae:	48 89 d8             	mov    %rbx,%rax
    1eb1:	31 d2                	xor    %edx,%edx
    1eb3:	48 83 c4 08          	add    $0x8,%rsp
    1eb7:	48 f7 f1             	div    %rcx
    1eba:	5b                   	pop    %rbx
    1ebb:	5d                   	pop    %rbp
    1ebc:	83 c0 01             	add    $0x1,%eax
    1ebf:	c3                   	retq   
    1ec0:	ba 01 00 00 00       	mov    $0x1,%edx
    1ec5:	48 8d 35 38 51 00 00 	lea    0x5138(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1ecc:	48 8d 3d 7b 51 00 00 	lea    0x517b(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    1ed3:	e8 98 4a 00 00       	callq  6970 <__cstr_debug>
    1ed8:	eb d1                	jmp    1eab <__cstr_nof_buffer+0x1b>
    1eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001ee0 <__cstr_nof_buffer_alone>:
    1ee0:	48 89 f8             	mov    %rdi,%rax
    1ee3:	b9 40 00 00 00       	mov    $0x40,%ecx
    1ee8:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    1eef:	76 26                	jbe    1f17 <__cstr_nof_buffer_alone+0x37>
    1ef1:	b9 00 04 00 00       	mov    $0x400,%ecx
    1ef6:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    1efd:	76 18                	jbe    1f17 <__cstr_nof_buffer_alone+0x37>
    1eff:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1f04:	48 39 fa             	cmp    %rdi,%rdx
    1f07:	48 19 c9             	sbb    %rcx,%rcx
    1f0a:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    1f10:	48 81 c1 00 10 00 00 	add    $0x1000,%rcx
    1f17:	31 d2                	xor    %edx,%edx
    1f19:	48 f7 f1             	div    %rcx
    1f1c:	83 c0 01             	add    $0x1,%eax
    1f1f:	c3                   	retq   

0000000000001f20 <cstr_buf>:
    1f20:	53                   	push   %rbx
    1f21:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    1f25:	83 e0 03             	and    $0x3,%eax
    1f28:	3c 02                	cmp    $0x2,%al
    1f2a:	74 2c                	je     1f58 <cstr_buf+0x38>
    1f2c:	3c 03                	cmp    $0x3,%al
    1f2e:	74 48                	je     1f78 <cstr_buf+0x58>
    1f30:	3c 01                	cmp    $0x1,%al
    1f32:	74 34                	je     1f68 <cstr_buf+0x48>
    1f34:	ba 01 00 00 00       	mov    $0x1,%edx
    1f39:	48 8d 35 c4 50 00 00 	lea    0x50c4(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1f40:	48 8d 3d df 50 00 00 	lea    0x50df(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    1f47:	e8 24 4a 00 00       	callq  6970 <__cstr_debug>
    1f4c:	48 63 c3             	movslq %ebx,%rax
    1f4f:	5b                   	pop    %rbx
    1f50:	c3                   	retq   
    1f51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f58:	0f b7 5f fa          	movzwl -0x6(%rdi),%ebx
    1f5c:	48 63 c3             	movslq %ebx,%rax
    1f5f:	5b                   	pop    %rbx
    1f60:	c3                   	retq   
    1f61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f68:	0f b6 5f fd          	movzbl -0x3(%rdi),%ebx
    1f6c:	48 63 c3             	movslq %ebx,%rax
    1f6f:	5b                   	pop    %rbx
    1f70:	c3                   	retq   
    1f71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f78:	8b 5f f4             	mov    -0xc(%rdi),%ebx
    1f7b:	48 63 c3             	movslq %ebx,%rax
    1f7e:	5b                   	pop    %rbx
    1f7f:	c3                   	retq   

0000000000001f80 <cstr_len>:
    1f80:	41 54                	push   %r12
    1f82:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    1f86:	83 e0 03             	and    $0x3,%eax
    1f89:	3c 02                	cmp    $0x2,%al
    1f8b:	74 2b                	je     1fb8 <cstr_len+0x38>
    1f8d:	3c 03                	cmp    $0x3,%al
    1f8f:	74 47                	je     1fd8 <cstr_len+0x58>
    1f91:	3c 01                	cmp    $0x1,%al
    1f93:	74 33                	je     1fc8 <cstr_len+0x48>
    1f95:	ba 01 00 00 00       	mov    $0x1,%edx
    1f9a:	48 8d 35 63 50 00 00 	lea    0x5063(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    1fa1:	48 8d 3d 8c 50 00 00 	lea    0x508c(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    1fa8:	e8 c3 49 00 00       	callq  6970 <__cstr_debug>
    1fad:	4c 89 e0             	mov    %r12,%rax
    1fb0:	41 5c                	pop    %r12
    1fb2:	c3                   	retq   
    1fb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1fb8:	44 0f b7 67 fc       	movzwl -0x4(%rdi),%r12d
    1fbd:	4c 89 e0             	mov    %r12,%rax
    1fc0:	41 5c                	pop    %r12
    1fc2:	c3                   	retq   
    1fc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1fc8:	44 0f b6 67 fe       	movzbl -0x2(%rdi),%r12d
    1fcd:	4c 89 e0             	mov    %r12,%rax
    1fd0:	41 5c                	pop    %r12
    1fd2:	c3                   	retq   
    1fd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1fd8:	44 8b 67 f8          	mov    -0x8(%rdi),%r12d
    1fdc:	4c 89 e0             	mov    %r12,%rax
    1fdf:	41 5c                	pop    %r12
    1fe1:	c3                   	retq   
    1fe2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1fe9:	00 00 00 00 
    1fed:	0f 1f 00             	nopl   (%rax)

0000000000001ff0 <cstr_rmn>:
    1ff0:	41 55                	push   %r13
    1ff2:	41 54                	push   %r12
    1ff4:	49 89 fc             	mov    %rdi,%r12
    1ff7:	55                   	push   %rbp
    1ff8:	53                   	push   %rbx
    1ff9:	48 83 ec 08          	sub    $0x8,%rsp
    1ffd:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    2001:	41 89 c5             	mov    %eax,%r13d
    2004:	83 e0 03             	and    $0x3,%eax
    2007:	41 83 e5 03          	and    $0x3,%r13d
    200b:	8d 58 ff             	lea    -0x1(%rax),%ebx
    200e:	41 80 fd 02          	cmp    $0x2,%r13b
    2012:	74 7c                	je     2090 <cstr_rmn+0xa0>
    2014:	41 80 fd 03          	cmp    $0x3,%r13b
    2018:	0f 84 c2 00 00 00    	je     20e0 <cstr_rmn+0xf0>
    201e:	41 80 fd 01          	cmp    $0x1,%r13b
    2022:	0f 84 88 00 00 00    	je     20b0 <cstr_rmn+0xc0>
    2028:	ba 01 00 00 00       	mov    $0x1,%edx
    202d:	48 8d 35 d0 4f 00 00 	lea    0x4fd0(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    2034:	48 8d 3d eb 4f 00 00 	lea    0x4feb(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    203b:	e8 30 49 00 00       	callq  6970 <__cstr_debug>
    2040:	83 fb 03             	cmp    $0x3,%ebx
    2043:	0f 86 9f 00 00 00    	jbe    20e8 <cstr_rmn+0xf8>
    2049:	ba 01 00 00 00       	mov    $0x1,%edx
    204e:	48 8d 35 af 4f 00 00 	lea    0x4faf(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    2055:	48 8d 3d f2 4f 00 00 	lea    0x4ff2(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    205c:	31 db                	xor    %ebx,%ebx
    205e:	e8 0d 49 00 00       	callq  6970 <__cstr_debug>
    2063:	ba 01 00 00 00       	mov    $0x1,%edx
    2068:	48 8d 35 95 4f 00 00 	lea    0x4f95(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    206f:	48 8d 3d be 4f 00 00 	lea    0x4fbe(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    2076:	e8 f5 48 00 00       	callq  6970 <__cstr_debug>
    207b:	48 83 c4 08          	add    $0x8,%rsp
    207f:	48 89 d8             	mov    %rbx,%rax
    2082:	48 29 e8             	sub    %rbp,%rax
    2085:	5b                   	pop    %rbx
    2086:	5d                   	pop    %rbp
    2087:	41 5c                	pop    %r12
    2089:	41 5d                	pop    %r13
    208b:	c3                   	retq   
    208c:	0f 1f 40 00          	nopl   0x0(%rax)
    2090:	48 8d 15 89 50 00 00 	lea    0x5089(%rip),%rdx        # 7120 <CSWTCH.23>
    2097:	0f b7 47 fa          	movzwl -0x6(%rdi),%eax
    209b:	0f b7 6f fc          	movzwl -0x4(%rdi),%ebp
    209f:	0f af 04 9a          	imul   (%rdx,%rbx,4),%eax
    20a3:	48 63 d8             	movslq %eax,%rbx
    20a6:	eb d3                	jmp    207b <cstr_rmn+0x8b>
    20a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    20af:	00 
    20b0:	0f b6 47 fd          	movzbl -0x3(%rdi),%eax
    20b4:	48 8d 15 65 50 00 00 	lea    0x5065(%rip),%rdx        # 7120 <CSWTCH.23>
    20bb:	0f af 04 9a          	imul   (%rdx,%rbx,4),%eax
    20bf:	48 63 d8             	movslq %eax,%rbx
    20c2:	41 80 fd 03          	cmp    $0x3,%r13b
    20c6:	75 08                	jne    20d0 <cstr_rmn+0xe0>
    20c8:	41 8b 6c 24 f8       	mov    -0x8(%r12),%ebp
    20cd:	eb ac                	jmp    207b <cstr_rmn+0x8b>
    20cf:	90                   	nop
    20d0:	41 80 fd 01          	cmp    $0x1,%r13b
    20d4:	75 8d                	jne    2063 <cstr_rmn+0x73>
    20d6:	41 0f b6 6c 24 fe    	movzbl -0x2(%r12),%ebp
    20dc:	eb 9d                	jmp    207b <cstr_rmn+0x8b>
    20de:	66 90                	xchg   %ax,%ax
    20e0:	8b 47 f4             	mov    -0xc(%rdi),%eax
    20e3:	eb cf                	jmp    20b4 <cstr_rmn+0xc4>
    20e5:	0f 1f 00             	nopl   (%rax)
    20e8:	31 db                	xor    %ebx,%ebx
    20ea:	eb d6                	jmp    20c2 <cstr_rmn+0xd2>
    20ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000020f0 <cstr_free>:
    20f0:	55                   	push   %rbp
    20f1:	53                   	push   %rbx
    20f2:	48 89 fb             	mov    %rdi,%rbx
    20f5:	48 83 ec 08          	sub    $0x8,%rsp
    20f9:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    20fd:	83 e0 03             	and    $0x3,%eax
    2100:	83 e8 01             	sub    $0x1,%eax
    2103:	83 f8 03             	cmp    $0x3,%eax
    2106:	77 28                	ja     2130 <cstr_free+0x40>
    2108:	48 8d 15 21 50 00 00 	lea    0x5021(%rip),%rdx        # 7130 <CSWTCH.19>
    210f:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    2112:	48 63 c5             	movslq %ebp,%rax
    2115:	48 83 c4 08          	add    $0x8,%rsp
    2119:	48 29 c3             	sub    %rax,%rbx
    211c:	48 89 df             	mov    %rbx,%rdi
    211f:	5b                   	pop    %rbx
    2120:	5d                   	pop    %rbp
    2121:	e9 0a ef ff ff       	jmpq   1030 <free@plt>
    2126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    212d:	00 00 00 
    2130:	ba 01 00 00 00       	mov    $0x1,%edx
    2135:	48 8d 35 c8 4e 00 00 	lea    0x4ec8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    213c:	48 8d 3d d5 4e 00 00 	lea    0x4ed5(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    2143:	e8 28 48 00 00       	callq  6970 <__cstr_debug>
    2148:	eb c8                	jmp    2112 <cstr_free+0x22>
    214a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002150 <ncstr_mt>:
    2150:	48 83 ec 08          	sub    $0x8,%rsp
    2154:	bf 43 00 00 00       	mov    $0x43,%edi
    2159:	e8 a2 ef ff ff       	callq  1100 <malloc@plt>
    215e:	48 85 c0             	test   %rax,%rax
    2161:	74 1a                	je     217d <ncstr_mt+0x2d>
    2163:	ba 01 01 00 00       	mov    $0x101,%edx
    2168:	c6 40 02 01          	movb   $0x1,0x2(%rax)
    216c:	48 83 c0 03          	add    $0x3,%rax
    2170:	66 89 50 fd          	mov    %dx,-0x3(%rax)
    2174:	c6 40 3f 00          	movb   $0x0,0x3f(%rax)
    2178:	48 83 c4 08          	add    $0x8,%rsp
    217c:	c3                   	retq   
    217d:	ba 02 00 00 00       	mov    $0x2,%edx
    2182:	48 8d 35 31 4f 00 00 	lea    0x4f31(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    2189:	48 8d 3d 3d 4f 00 00 	lea    0x4f3d(%rip),%rdi        # 70cd <_IO_stdin_used+0xcd>
    2190:	e8 db 47 00 00       	callq  6970 <__cstr_debug>
    2195:	eb e1                	jmp    2178 <ncstr_mt+0x28>
    2197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    219e:	00 00 

00000000000021a0 <ncstr_new>:
    21a0:	41 56                	push   %r14
    21a2:	41 55                	push   %r13
    21a4:	41 54                	push   %r12
    21a6:	55                   	push   %rbp
    21a7:	48 89 fd             	mov    %rdi,%rbp
    21aa:	53                   	push   %rbx
    21ab:	48 83 ec 10          	sub    $0x10,%rsp
    21af:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    21b6:	76 60                	jbe    2218 <ncstr_new+0x78>
    21b8:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    21bf:	0f 86 eb 00 00 00    	jbe    22b0 <ncstr_new+0x110>
    21c5:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    21ca:	48 39 fa             	cmp    %rdi,%rdx
    21cd:	19 c0                	sbb    %eax,%eax
    21cf:	f7 d0                	not    %eax
    21d1:	83 c0 04             	add    $0x4,%eax
    21d4:	48 39 fa             	cmp    %rdi,%rdx
    21d7:	19 db                	sbb    %ebx,%ebx
    21d9:	83 e3 0c             	and    $0xc,%ebx
    21dc:	83 c3 0c             	add    $0xc,%ebx
    21df:	48 39 fa             	cmp    %rdi,%rdx
    21e2:	19 c9                	sbb    %ecx,%ecx
    21e4:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    21ea:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    21f0:	48 39 fa             	cmp    %rdi,%rdx
    21f3:	48 19 f6             	sbb    %rsi,%rsi
    21f6:	81 e6 00 f0 ff 00    	and    $0xfff000,%esi
    21fc:	48 81 c6 00 10 00 00 	add    $0x1000,%rsi
    2203:	48 39 fa             	cmp    %rdi,%rdx
    2206:	45 19 ed             	sbb    %r13d,%r13d
    2209:	41 f7 d5             	not    %r13d
    220c:	41 83 c5 04          	add    $0x4,%r13d
    2210:	eb 20                	jmp    2232 <ncstr_new+0x92>
    2212:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2218:	b8 01 00 00 00       	mov    $0x1,%eax
    221d:	bb 03 00 00 00       	mov    $0x3,%ebx
    2222:	b9 40 00 00 00       	mov    $0x40,%ecx
    2227:	be 40 00 00 00       	mov    $0x40,%esi
    222c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2232:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    2239:	00 
    223a:	31 d2                	xor    %edx,%edx
    223c:	88 44 24 0f          	mov    %al,0xf(%rsp)
    2240:	48 89 e8             	mov    %rbp,%rax
    2243:	44 8b 64 24 0c       	mov    0xc(%rsp),%r12d
    2248:	48 f7 f6             	div    %rsi
    224b:	44 8d 70 01          	lea    0x1(%rax),%r14d
    224f:	41 0f af ce          	imul   %r14d,%ecx
    2253:	01 cb                	add    %ecx,%ebx
    2255:	48 63 db             	movslq %ebx,%rbx
    2258:	48 89 df             	mov    %rbx,%rdi
    225b:	e8 a0 ee ff ff       	callq  1100 <malloc@plt>
    2260:	48 85 c0             	test   %rax,%rax
    2263:	0f 84 ad 00 00 00    	je     2316 <ncstr_new+0x176>
    2269:	41 c1 ec 18          	shr    $0x18,%r12d
    226d:	41 83 fd 03          	cmp    $0x3,%r13d
    2271:	74 5d                	je     22d0 <ncstr_new+0x130>
    2273:	41 83 fd 04          	cmp    $0x4,%r13d
    2277:	74 67                	je     22e0 <ncstr_new+0x140>
    2279:	41 83 fd 02          	cmp    $0x2,%r13d
    227d:	0f 84 7d 00 00 00    	je     2300 <ncstr_new+0x160>
    2283:	44 88 30             	mov    %r14b,(%rax)
    2286:	4c 8d 40 03          	lea    0x3(%rax),%r8
    228a:	40 88 68 01          	mov    %bpl,0x1(%rax)
    228e:	44 88 60 02          	mov    %r12b,0x2(%rax)
    2292:	c6 44 18 ff 00       	movb   $0x0,-0x1(%rax,%rbx,1)
    2297:	48 83 c4 10          	add    $0x10,%rsp
    229b:	4c 89 c0             	mov    %r8,%rax
    229e:	5b                   	pop    %rbx
    229f:	5d                   	pop    %rbp
    22a0:	41 5c                	pop    %r12
    22a2:	41 5d                	pop    %r13
    22a4:	41 5e                	pop    %r14
    22a6:	c3                   	retq   
    22a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    22ae:	00 00 
    22b0:	b8 02 00 00 00       	mov    $0x2,%eax
    22b5:	bb 06 00 00 00       	mov    $0x6,%ebx
    22ba:	b9 00 04 00 00       	mov    $0x400,%ecx
    22bf:	be 00 04 00 00       	mov    $0x400,%esi
    22c4:	41 bd 02 00 00 00    	mov    $0x2,%r13d
    22ca:	e9 63 ff ff ff       	jmpq   2232 <ncstr_new+0x92>
    22cf:	90                   	nop
    22d0:	44 89 30             	mov    %r14d,(%rax)
    22d3:	4c 8d 40 0c          	lea    0xc(%rax),%r8
    22d7:	89 68 04             	mov    %ebp,0x4(%rax)
    22da:	44 89 60 08          	mov    %r12d,0x8(%rax)
    22de:	eb b2                	jmp    2292 <ncstr_new+0xf2>
    22e0:	4d 63 f6             	movslq %r14d,%r14
    22e3:	45 0f b6 e4          	movzbl %r12b,%r12d
    22e7:	48 89 68 08          	mov    %rbp,0x8(%rax)
    22eb:	4c 8d 40 18          	lea    0x18(%rax),%r8
    22ef:	4c 89 30             	mov    %r14,(%rax)
    22f2:	4c 89 60 10          	mov    %r12,0x10(%rax)
    22f6:	eb 9a                	jmp    2292 <ncstr_new+0xf2>
    22f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    22ff:	00 
    2300:	66 44 89 30          	mov    %r14w,(%rax)
    2304:	4c 8d 40 06          	lea    0x6(%rax),%r8
    2308:	66 89 68 02          	mov    %bp,0x2(%rax)
    230c:	66 44 89 60 04       	mov    %r12w,0x4(%rax)
    2311:	e9 7c ff ff ff       	jmpq   2292 <ncstr_new+0xf2>
    2316:	ba 02 00 00 00       	mov    $0x2,%edx
    231b:	48 8d 35 98 4d 00 00 	lea    0x4d98(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    2322:	48 8d 3d ad 4d 00 00 	lea    0x4dad(%rip),%rdi        # 70d6 <_IO_stdin_used+0xd6>
    2329:	e8 42 46 00 00       	callq  6970 <__cstr_debug>
    232e:	e9 64 ff ff ff       	jmpq   2297 <ncstr_new+0xf7>
    2333:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    233a:	00 00 00 00 
    233e:	66 90                	xchg   %ax,%ax

0000000000002340 <ncstr_from>:
    2340:	41 57                	push   %r15
    2342:	be 00 20 00 00       	mov    $0x2000,%esi
    2347:	41 56                	push   %r14
    2349:	41 55                	push   %r13
    234b:	41 54                	push   %r12
    234d:	55                   	push   %rbp
    234e:	48 89 fd             	mov    %rdi,%rbp
    2351:	53                   	push   %rbx
    2352:	48 83 ec 18          	sub    $0x18,%rsp
    2356:	e8 45 ed ff ff       	callq  10a0 <strnlen@plt>
    235b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    2362:	00 
    2363:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    2369:	48 89 c3             	mov    %rax,%rbx
    236c:	19 ff                	sbb    %edi,%edi
    236e:	83 e7 fd             	and    $0xfffffffd,%edi
    2371:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    2377:	19 c9                	sbb    %ecx,%ecx
    2379:	81 e1 40 fc ff ff    	and    $0xfffffc40,%ecx
    237f:	81 c1 00 04 00 00    	add    $0x400,%ecx
    2385:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    238b:	48 19 f6             	sbb    %rsi,%rsi
    238e:	48 81 e6 40 fc ff ff 	and    $0xfffffffffffffc40,%rsi
    2395:	48 81 c6 00 04 00 00 	add    $0x400,%rsi
    239c:	48 3d 00 01 00 00    	cmp    $0x100,%rax
    23a2:	19 c0                	sbb    %eax,%eax
    23a4:	83 c0 02             	add    $0x2,%eax
    23a7:	48 81 fb 00 01 00 00 	cmp    $0x100,%rbx
    23ae:	45 19 ff             	sbb    %r15d,%r15d
    23b1:	88 44 24 0f          	mov    %al,0xf(%rsp)
    23b5:	31 d2                	xor    %edx,%edx
    23b7:	48 89 d8             	mov    %rbx,%rax
    23ba:	48 f7 f6             	div    %rsi
    23bd:	44 8b 64 24 0c       	mov    0xc(%rsp),%r12d
    23c2:	41 83 c7 02          	add    $0x2,%r15d
    23c6:	44 8d 70 01          	lea    0x1(%rax),%r14d
    23ca:	41 0f af ce          	imul   %r14d,%ecx
    23ce:	44 8d 6c 0f 06       	lea    0x6(%rdi,%rcx,1),%r13d
    23d3:	4d 63 ed             	movslq %r13d,%r13
    23d6:	4c 89 ef             	mov    %r13,%rdi
    23d9:	e8 22 ed ff ff       	callq  1100 <malloc@plt>
    23de:	48 85 c0             	test   %rax,%rax
    23e1:	0f 84 db 00 00 00    	je     24c2 <ncstr_from+0x182>
    23e7:	41 c1 ec 18          	shr    $0x18,%r12d
    23eb:	41 83 ff 02          	cmp    $0x2,%r15d
    23ef:	0f 84 83 00 00 00    	je     2478 <ncstr_from+0x138>
    23f5:	44 88 30             	mov    %r14b,(%rax)
    23f8:	4c 8d 40 03          	lea    0x3(%rax),%r8
    23fc:	88 58 01             	mov    %bl,0x1(%rax)
    23ff:	44 88 60 02          	mov    %r12b,0x2(%rax)
    2403:	83 fb 08             	cmp    $0x8,%ebx
    2406:	73 38                	jae    2440 <ncstr_from+0x100>
    2408:	f6 c3 04             	test   $0x4,%bl
    240b:	0f 85 87 00 00 00    	jne    2498 <ncstr_from+0x158>
    2411:	85 db                	test   %ebx,%ebx
    2413:	74 10                	je     2425 <ncstr_from+0xe5>
    2415:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    2419:	41 88 10             	mov    %dl,(%r8)
    241c:	f6 c3 02             	test   $0x2,%bl
    241f:	0f 85 8b 00 00 00    	jne    24b0 <ncstr_from+0x170>
    2425:	42 c6 44 28 ff 00    	movb   $0x0,-0x1(%rax,%r13,1)
    242b:	48 83 c4 18          	add    $0x18,%rsp
    242f:	4c 89 c0             	mov    %r8,%rax
    2432:	5b                   	pop    %rbx
    2433:	5d                   	pop    %rbp
    2434:	41 5c                	pop    %r12
    2436:	41 5d                	pop    %r13
    2438:	41 5e                	pop    %r14
    243a:	41 5f                	pop    %r15
    243c:	c3                   	retq   
    243d:	0f 1f 00             	nopl   (%rax)
    2440:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    2444:	49 8d 78 08          	lea    0x8(%r8),%rdi
    2448:	48 89 ee             	mov    %rbp,%rsi
    244b:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    244f:	49 89 10             	mov    %rdx,(%r8)
    2452:	89 da                	mov    %ebx,%edx
    2454:	48 8b 4c 15 f8       	mov    -0x8(%rbp,%rdx,1),%rcx
    2459:	49 89 4c 10 f8       	mov    %rcx,-0x8(%r8,%rdx,1)
    245e:	4c 89 c1             	mov    %r8,%rcx
    2461:	48 29 f9             	sub    %rdi,%rcx
    2464:	48 29 ce             	sub    %rcx,%rsi
    2467:	01 d9                	add    %ebx,%ecx
    2469:	89 cb                	mov    %ecx,%ebx
    246b:	c1 eb 03             	shr    $0x3,%ebx
    246e:	89 d9                	mov    %ebx,%ecx
    2470:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    2473:	eb b0                	jmp    2425 <ncstr_from+0xe5>
    2475:	0f 1f 00             	nopl   (%rax)
    2478:	66 44 89 30          	mov    %r14w,(%rax)
    247c:	4c 8d 40 06          	lea    0x6(%rax),%r8
    2480:	66 89 58 02          	mov    %bx,0x2(%rax)
    2484:	66 44 89 60 04       	mov    %r12w,0x4(%rax)
    2489:	83 fb 08             	cmp    $0x8,%ebx
    248c:	73 b2                	jae    2440 <ncstr_from+0x100>
    248e:	e9 75 ff ff ff       	jmpq   2408 <ncstr_from+0xc8>
    2493:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2498:	8b 55 00             	mov    0x0(%rbp),%edx
    249b:	89 db                	mov    %ebx,%ebx
    249d:	41 89 10             	mov    %edx,(%r8)
    24a0:	8b 54 1d fc          	mov    -0x4(%rbp,%rbx,1),%edx
    24a4:	41 89 54 18 fc       	mov    %edx,-0x4(%r8,%rbx,1)
    24a9:	e9 77 ff ff ff       	jmpq   2425 <ncstr_from+0xe5>
    24ae:	66 90                	xchg   %ax,%ax
    24b0:	89 db                	mov    %ebx,%ebx
    24b2:	0f b7 54 1d fe       	movzwl -0x2(%rbp,%rbx,1),%edx
    24b7:	66 41 89 54 18 fe    	mov    %dx,-0x2(%r8,%rbx,1)
    24bd:	e9 63 ff ff ff       	jmpq   2425 <ncstr_from+0xe5>
    24c2:	ba 02 00 00 00       	mov    $0x2,%edx
    24c7:	48 8d 35 ec 4b 00 00 	lea    0x4bec(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    24ce:	48 8d 3d 0b 4c 00 00 	lea    0x4c0b(%rip),%rdi        # 70e0 <_IO_stdin_used+0xe0>
    24d5:	e8 96 44 00 00       	callq  6970 <__cstr_debug>
    24da:	e9 4c ff ff ff       	jmpq   242b <ncstr_from+0xeb>
    24df:	90                   	nop

00000000000024e0 <ncstrcpy>:
    24e0:	41 57                	push   %r15
    24e2:	49 89 ff             	mov    %rdi,%r15
    24e5:	41 56                	push   %r14
    24e7:	41 55                	push   %r13
    24e9:	41 54                	push   %r12
    24eb:	55                   	push   %rbp
    24ec:	53                   	push   %rbx
    24ed:	48 83 ec 08          	sub    $0x8,%rsp
    24f1:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    24f5:	89 c2                	mov    %eax,%edx
    24f7:	83 e0 03             	and    $0x3,%eax
    24fa:	83 e2 03             	and    $0x3,%edx
    24fd:	8d 58 ff             	lea    -0x1(%rax),%ebx
    2500:	80 fa 02             	cmp    $0x2,%dl
    2503:	0f 84 97 00 00 00    	je     25a0 <ncstrcpy+0xc0>
    2509:	80 fa 03             	cmp    $0x3,%dl
    250c:	0f 84 3e 01 00 00    	je     2650 <ncstrcpy+0x170>
    2512:	80 fa 01             	cmp    $0x1,%dl
    2515:	0f 84 25 01 00 00    	je     2640 <ncstrcpy+0x160>
    251b:	ba 01 00 00 00       	mov    $0x1,%edx
    2520:	48 8d 35 dd 4a 00 00 	lea    0x4add(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    2527:	48 8d 3d 06 4b 00 00 	lea    0x4b06(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    252e:	e8 3d 44 00 00       	callq  6970 <__cstr_debug>
    2533:	ba 01 00 00 00       	mov    $0x1,%edx
    2538:	48 8d 35 c5 4a 00 00 	lea    0x4ac5(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    253f:	48 8d 3d e0 4a 00 00 	lea    0x4ae0(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    2546:	e8 25 44 00 00       	callq  6970 <__cstr_debug>
    254b:	ba 01 00 00 00       	mov    $0x1,%edx
    2550:	48 8d 35 ad 4a 00 00 	lea    0x4aad(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    2557:	48 8d 3d e4 4a 00 00 	lea    0x4ae4(%rip),%rdi        # 7042 <_IO_stdin_used+0x42>
    255e:	e8 0d 44 00 00       	callq  6970 <__cstr_debug>
    2563:	83 fb 03             	cmp    $0x3,%ebx
    2566:	76 3c                	jbe    25a4 <ncstrcpy+0xc4>
    2568:	ba 01 00 00 00       	mov    $0x1,%edx
    256d:	48 8d 35 90 4a 00 00 	lea    0x4a90(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    2574:	48 8d 3d 9d 4a 00 00 	lea    0x4a9d(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    257b:	e8 f0 43 00 00       	callq  6970 <__cstr_debug>
    2580:	ba 01 00 00 00       	mov    $0x1,%edx
    2585:	48 8d 35 78 4a 00 00 	lea    0x4a78(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    258c:	48 8d 3d bb 4a 00 00 	lea    0x4abb(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    2593:	e8 d8 43 00 00       	callq  6970 <__cstr_debug>
    2598:	eb 20                	jmp    25ba <ncstrcpy+0xda>
    259a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    25a0:	0f b7 6f fa          	movzwl -0x6(%rdi),%ebp
    25a4:	48 8d 05 85 4b 00 00 	lea    0x4b85(%rip),%rax        # 7130 <CSWTCH.19>
    25ab:	44 8b 24 98          	mov    (%rax,%rbx,4),%r12d
    25af:	48 8d 05 6a 4b 00 00 	lea    0x4b6a(%rip),%rax        # 7120 <CSWTCH.23>
    25b6:	44 8b 34 98          	mov    (%rax,%rbx,4),%r14d
    25ba:	41 0f af ee          	imul   %r14d,%ebp
    25be:	46 8d 74 25 00       	lea    0x0(%rbp,%r12,1),%r14d
    25c3:	4d 63 f6             	movslq %r14d,%r14
    25c6:	4c 89 f7             	mov    %r14,%rdi
    25c9:	e8 32 eb ff ff       	callq  1100 <malloc@plt>
    25ce:	48 89 c3             	mov    %rax,%rbx
    25d1:	48 85 c0             	test   %rax,%rax
    25d4:	0f 84 7e 00 00 00    	je     2658 <ncstrcpy+0x178>
    25da:	41 0f b6 47 ff       	movzbl -0x1(%r15),%eax
    25df:	83 e0 03             	and    $0x3,%eax
    25e2:	83 e8 01             	sub    $0x1,%eax
    25e5:	83 f8 03             	cmp    $0x3,%eax
    25e8:	77 36                	ja     2620 <ncstrcpy+0x140>
    25ea:	48 8d 15 3f 4b 00 00 	lea    0x4b3f(%rip),%rdx        # 7130 <CSWTCH.19>
    25f1:	4c 63 2c 82          	movslq (%rdx,%rax,4),%r13
    25f5:	4c 89 fe             	mov    %r15,%rsi
    25f8:	4c 89 f2             	mov    %r14,%rdx
    25fb:	48 89 df             	mov    %rbx,%rdi
    25fe:	4c 29 ee             	sub    %r13,%rsi
    2601:	e8 ca ea ff ff       	callq  10d0 <memcpy@plt>
    2606:	49 63 c4             	movslq %r12d,%rax
    2609:	48 01 d8             	add    %rbx,%rax
    260c:	48 83 c4 08          	add    $0x8,%rsp
    2610:	5b                   	pop    %rbx
    2611:	5d                   	pop    %rbp
    2612:	41 5c                	pop    %r12
    2614:	41 5d                	pop    %r13
    2616:	41 5e                	pop    %r14
    2618:	41 5f                	pop    %r15
    261a:	c3                   	retq   
    261b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2620:	ba 01 00 00 00       	mov    $0x1,%edx
    2625:	48 8d 35 d8 49 00 00 	lea    0x49d8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    262c:	48 8d 3d e5 49 00 00 	lea    0x49e5(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    2633:	e8 38 43 00 00       	callq  6970 <__cstr_debug>
    2638:	eb bb                	jmp    25f5 <ncstrcpy+0x115>
    263a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2640:	0f b6 6f fd          	movzbl -0x3(%rdi),%ebp
    2644:	e9 5b ff ff ff       	jmpq   25a4 <ncstrcpy+0xc4>
    2649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2650:	8b 6f f4             	mov    -0xc(%rdi),%ebp
    2653:	e9 4c ff ff ff       	jmpq   25a4 <ncstrcpy+0xc4>
    2658:	ba 02 00 00 00       	mov    $0x2,%edx
    265d:	48 8d 35 56 4a 00 00 	lea    0x4a56(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    2664:	48 8d 3d 80 4a 00 00 	lea    0x4a80(%rip),%rdi        # 70eb <_IO_stdin_used+0xeb>
    266b:	e8 00 43 00 00       	callq  6970 <__cstr_debug>
    2670:	eb 9a                	jmp    260c <ncstrcpy+0x12c>
    2672:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2679:	00 00 00 00 
    267d:	0f 1f 00             	nopl   (%rax)

0000000000002680 <ncstrdup>:
    2680:	48 8b 07             	mov    (%rdi),%rax
    2683:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    268a:	c3                   	retq   
    268b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002690 <__cstr_resize_from>:
    2690:	48 85 ff             	test   %rdi,%rdi
    2693:	0f 84 c7 03 00 00    	je     2a60 <__cstr_resize_from+0x3d0>
    2699:	41 57                	push   %r15
    269b:	41 56                	push   %r14
    269d:	41 55                	push   %r13
    269f:	41 54                	push   %r12
    26a1:	49 89 d4             	mov    %rdx,%r12
    26a4:	55                   	push   %rbp
    26a5:	48 89 f5             	mov    %rsi,%rbp
    26a8:	53                   	push   %rbx
    26a9:	48 89 fb             	mov    %rdi,%rbx
    26ac:	48 83 ec 38          	sub    $0x38,%rsp
    26b0:	4c 8b 2f             	mov    (%rdi),%r13
    26b3:	4d 89 ef             	mov    %r13,%r15
    26b6:	4d 85 ed             	test   %r13,%r13
    26b9:	0f 84 b9 00 00 00    	je     2778 <__cstr_resize_from+0xe8>
    26bf:	41 0f b6 4d ff       	movzbl -0x1(%r13),%ecx
    26c4:	41 89 ce             	mov    %ecx,%r14d
    26c7:	83 e1 03             	and    $0x3,%ecx
    26ca:	41 83 e6 03          	and    $0x3,%r14d
    26ce:	41 80 fe 02          	cmp    $0x2,%r14b
    26d2:	0f 84 c8 02 00 00    	je     29a0 <__cstr_resize_from+0x310>
    26d8:	41 80 fe 03          	cmp    $0x3,%r14b
    26dc:	0f 84 ae 00 00 00    	je     2790 <__cstr_resize_from+0x100>
    26e2:	41 80 fe 01          	cmp    $0x1,%r14b
    26e6:	0f 84 2c 02 00 00    	je     2918 <__cstr_resize_from+0x288>
    26ec:	ba 01 00 00 00       	mov    $0x1,%edx
    26f1:	48 8d 35 0c 49 00 00 	lea    0x490c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    26f8:	48 8d 3d 35 49 00 00 	lea    0x4935(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    26ff:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
    2703:	e8 68 42 00 00       	callq  6970 <__cstr_debug>
    2708:	4d 85 e4             	test   %r12,%r12
    270b:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    270f:	0f 84 9b 02 00 00    	je     29b0 <__cstr_resize_from+0x320>
    2715:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    2719:	4c 8b 2b             	mov    (%rbx),%r13
    271c:	41 83 fb 03          	cmp    $0x3,%r11d
    2720:	76 7f                	jbe    27a1 <__cstr_resize_from+0x111>
    2722:	ba 01 00 00 00       	mov    $0x1,%edx
    2727:	48 8d 35 d6 48 00 00 	lea    0x48d6(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    272e:	48 8d 3d e3 48 00 00 	lea    0x48e3(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    2735:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
    2739:	e8 32 42 00 00       	callq  6970 <__cstr_debug>
    273e:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    2742:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
    2748:	49 81 fc ff 00 00 00 	cmp    $0xff,%r12
    274f:	77 6a                	ja     27bb <__cstr_resize_from+0x12b>
    2751:	b8 01 00 00 00       	mov    $0x1,%eax
    2756:	41 ba 03 00 00 00    	mov    $0x3,%r10d
    275c:	be 40 00 00 00       	mov    $0x40,%esi
    2761:	41 be 40 00 00 00    	mov    $0x40,%r14d
    2767:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    276d:	e9 a7 00 00 00       	jmpq   2819 <__cstr_resize_from+0x189>
    2772:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2778:	85 c9                	test   %ecx,%ecx
    277a:	0f 85 58 04 00 00    	jne    2bd8 <__cstr_resize_from+0x548>
    2780:	48 83 c4 38          	add    $0x38,%rsp
    2784:	5b                   	pop    %rbx
    2785:	5d                   	pop    %rbp
    2786:	41 5c                	pop    %r12
    2788:	41 5d                	pop    %r13
    278a:	41 5e                	pop    %r14
    278c:	41 5f                	pop    %r15
    278e:	c3                   	retq   
    278f:	90                   	nop
    2790:	41 8b 45 f8          	mov    -0x8(%r13),%eax
    2794:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    2798:	49 39 c4             	cmp    %rax,%r12
    279b:	0f 84 89 01 00 00    	je     292a <__cstr_resize_from+0x29a>
    27a1:	44 89 d8             	mov    %r11d,%eax
    27a4:	48 8d 15 85 49 00 00 	lea    0x4985(%rip),%rdx        # 7130 <CSWTCH.19>
    27ab:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    27ae:	89 44 24 10          	mov    %eax,0x10(%rsp)
    27b2:	49 81 fc ff 00 00 00 	cmp    $0xff,%r12
    27b9:	76 96                	jbe    2751 <__cstr_resize_from+0xc1>
    27bb:	49 81 fc ff ff 00 00 	cmp    $0xffff,%r12
    27c2:	0f 86 e8 03 00 00    	jbe    2bb0 <__cstr_resize_from+0x520>
    27c8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    27cd:	4c 39 e2             	cmp    %r12,%rdx
    27d0:	19 c0                	sbb    %eax,%eax
    27d2:	f7 d0                	not    %eax
    27d4:	83 c0 04             	add    $0x4,%eax
    27d7:	4c 39 e2             	cmp    %r12,%rdx
    27da:	45 19 d2             	sbb    %r10d,%r10d
    27dd:	41 83 e2 0c          	and    $0xc,%r10d
    27e1:	41 83 c2 0c          	add    $0xc,%r10d
    27e5:	4c 39 e2             	cmp    %r12,%rdx
    27e8:	45 19 f6             	sbb    %r14d,%r14d
    27eb:	41 81 e6 00 f0 ff 00 	and    $0xfff000,%r14d
    27f2:	41 81 c6 00 10 00 00 	add    $0x1000,%r14d
    27f9:	4c 39 e2             	cmp    %r12,%rdx
    27fc:	48 19 f6             	sbb    %rsi,%rsi
    27ff:	81 e6 00 f0 ff 00    	and    $0xfff000,%esi
    2805:	48 81 c6 00 10 00 00 	add    $0x1000,%rsi
    280c:	4c 39 e2             	cmp    %r12,%rdx
    280f:	45 19 c0             	sbb    %r8d,%r8d
    2812:	41 f7 d0             	not    %r8d
    2815:	41 83 c0 04          	add    $0x4,%r8d
    2819:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2820:	00 
    2821:	31 d2                	xor    %edx,%edx
    2823:	88 44 24 2f          	mov    %al,0x2f(%rsp)
    2827:	4c 89 e0             	mov    %r12,%rax
    282a:	44 8b 7c 24 2c       	mov    0x2c(%rsp),%r15d
    282f:	48 f7 f6             	div    %rsi
    2832:	44 8d 48 01          	lea    0x1(%rax),%r9d
    2836:	45 0f af f1          	imul   %r9d,%r14d
    283a:	45 01 d6             	add    %r10d,%r14d
    283d:	4d 63 f6             	movslq %r14d,%r14
    2840:	44 39 c1             	cmp    %r8d,%ecx
    2843:	0f 84 1f 02 00 00    	je     2a68 <__cstr_resize_from+0x3d8>
    2849:	48 8b 3b             	mov    (%rbx),%rdi
    284c:	4c 89 f6             	mov    %r14,%rsi
    284f:	44 89 54 24 18       	mov    %r10d,0x18(%rsp)
    2854:	44 89 5c 24 14       	mov    %r11d,0x14(%rsp)
    2859:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    285e:	44 89 4c 24 0c       	mov    %r9d,0xc(%rsp)
    2863:	e8 a8 e8 ff ff       	callq  1110 <realloc@plt>
    2868:	4c 63 4c 24 0c       	movslq 0xc(%rsp),%r9
    286d:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
    2872:	48 85 c0             	test   %rax,%rax
    2875:	44 8b 5c 24 14       	mov    0x14(%rsp),%r11d
    287a:	4c 63 54 24 18       	movslq 0x18(%rsp),%r10
    287f:	49 89 c5             	mov    %rax,%r13
    2882:	0f 84 39 0a 00 00    	je     32c1 <__cstr_resize_from+0xc31>
    2888:	41 83 f8 03          	cmp    $0x3,%r8d
    288c:	0f 84 be 04 00 00    	je     2d50 <__cstr_resize_from+0x6c0>
    2892:	41 83 f8 04          	cmp    $0x4,%r8d
    2896:	0f 84 1c 05 00 00    	je     2db8 <__cstr_resize_from+0x728>
    289c:	41 83 f8 01          	cmp    $0x1,%r8d
    28a0:	0f 84 7a 05 00 00    	je     2e20 <__cstr_resize_from+0x790>
    28a6:	41 83 f8 02          	cmp    $0x2,%r8d
    28aa:	0f 85 9f 0a 00 00    	jne    334f <__cstr_resize_from+0xcbf>
    28b0:	41 c1 ef 18          	shr    $0x18,%r15d
    28b4:	66 45 89 4d 00       	mov    %r9w,0x0(%r13)
    28b9:	66 45 89 7d 04       	mov    %r15w,0x4(%r13)
    28be:	4d 8d 7d 06          	lea    0x6(%r13),%r15
    28c2:	66 45 89 65 02       	mov    %r12w,0x2(%r13)
    28c7:	4c 89 3b             	mov    %r15,(%rbx)
    28ca:	48 85 ed             	test   %rbp,%rbp
    28cd:	0f 84 3d 01 00 00    	je     2a10 <__cstr_resize_from+0x380>
    28d3:	be 00 20 00 00       	mov    $0x2000,%esi
    28d8:	48 89 ef             	mov    %rbp,%rdi
    28db:	e8 c0 e7 ff ff       	callq  10a0 <strnlen@plt>
    28e0:	48 89 c2             	mov    %rax,%rdx
    28e3:	83 f8 08             	cmp    $0x8,%eax
    28e6:	0f 83 a4 06 00 00    	jae    2f90 <__cstr_resize_from+0x900>
    28ec:	a8 04                	test   $0x4,%al
    28ee:	0f 85 e2 08 00 00    	jne    31d6 <__cstr_resize_from+0xb46>
    28f4:	85 c0                	test   %eax,%eax
    28f6:	74 11                	je     2909 <__cstr_resize_from+0x279>
    28f8:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
    28fc:	41 88 45 06          	mov    %al,0x6(%r13)
    2900:	f6 c2 02             	test   $0x2,%dl
    2903:	0f 85 1e 09 00 00    	jne    3227 <__cstr_resize_from+0xb97>
    2909:	48 8b 03             	mov    (%rbx),%rax
    290c:	66 89 50 fa          	mov    %dx,-0x6(%rax)
    2910:	e9 2c 01 00 00       	jmpq   2a41 <__cstr_resize_from+0x3b1>
    2915:	0f 1f 00             	nopl   (%rax)
    2918:	41 0f b6 45 fe       	movzbl -0x2(%r13),%eax
    291d:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    2921:	49 39 c4             	cmp    %rax,%r12
    2924:	0f 85 77 fe ff ff    	jne    27a1 <__cstr_resize_from+0x111>
    292a:	48 85 ed             	test   %rbp,%rbp
    292d:	0f 84 e8 01 00 00    	je     2b1b <__cstr_resize_from+0x48b>
    2933:	be 00 20 00 00       	mov    $0x2000,%esi
    2938:	48 89 ef             	mov    %rbp,%rdi
    293b:	e8 60 e7 ff ff       	callq  10a0 <strnlen@plt>
    2940:	89 c1                	mov    %eax,%ecx
    2942:	83 f8 08             	cmp    $0x8,%eax
    2945:	0f 83 95 03 00 00    	jae    2ce0 <__cstr_resize_from+0x650>
    294b:	a8 04                	test   $0x4,%al
    294d:	0f 85 00 08 00 00    	jne    3153 <__cstr_resize_from+0xac3>
    2953:	85 c9                	test   %ecx,%ecx
    2955:	74 13                	je     296a <__cstr_resize_from+0x2da>
    2957:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    295b:	41 88 17             	mov    %dl,(%r15)
    295e:	f6 c1 02             	test   $0x2,%cl
    2961:	0f 85 03 08 00 00    	jne    316a <__cstr_resize_from+0xada>
    2967:	4c 8b 3b             	mov    (%rbx),%r15
    296a:	41 80 fe 02          	cmp    $0x2,%r14b
    296e:	0f 84 c8 01 00 00    	je     2b3c <__cstr_resize_from+0x4ac>
    2974:	41 80 fe 03          	cmp    $0x3,%r14b
    2978:	0f 85 ba 03 00 00    	jne    2d38 <__cstr_resize_from+0x6a8>
    297e:	41 89 47 f4          	mov    %eax,-0xc(%r15)
    2982:	4a 8b 44 e3 f8       	mov    -0x8(%rbx,%r12,8),%rax
    2987:	c6 00 00             	movb   $0x0,(%rax)
    298a:	48 83 c4 38          	add    $0x38,%rsp
    298e:	5b                   	pop    %rbx
    298f:	5d                   	pop    %rbp
    2990:	41 5c                	pop    %r12
    2992:	41 5d                	pop    %r13
    2994:	41 5e                	pop    %r14
    2996:	41 5f                	pop    %r15
    2998:	c3                   	retq   
    2999:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    29a0:	41 0f b7 45 fc       	movzwl -0x4(%r13),%eax
    29a5:	e9 ea fd ff ff       	jmpq   2794 <__cstr_resize_from+0x104>
    29aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    29b0:	48 85 ed             	test   %rbp,%rbp
    29b3:	0f 84 5f 01 00 00    	je     2b18 <__cstr_resize_from+0x488>
    29b9:	be 00 20 00 00       	mov    $0x2000,%esi
    29be:	48 89 ef             	mov    %rbp,%rdi
    29c1:	e8 da e6 ff ff       	callq  10a0 <strnlen@plt>
    29c6:	48 8b 0b             	mov    (%rbx),%rcx
    29c9:	83 f8 08             	cmp    $0x8,%eax
    29cc:	0f 83 4e 05 00 00    	jae    2f20 <__cstr_resize_from+0x890>
    29d2:	a8 04                	test   $0x4,%al
    29d4:	0f 85 a3 07 00 00    	jne    317d <__cstr_resize_from+0xaed>
    29da:	85 c0                	test   %eax,%eax
    29dc:	74 0e                	je     29ec <__cstr_resize_from+0x35c>
    29de:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    29e2:	88 11                	mov    %dl,(%rcx)
    29e4:	a8 02                	test   $0x2,%al
    29e6:	0f 85 18 08 00 00    	jne    3204 <__cstr_resize_from+0xb74>
    29ec:	ba 01 00 00 00       	mov    $0x1,%edx
    29f1:	48 8d 35 0c 46 00 00 	lea    0x460c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    29f8:	48 8d 3d 6f 46 00 00 	lea    0x466f(%rip),%rdi        # 706e <_IO_stdin_used+0x6e>
    29ff:	e8 6c 3f 00 00       	callq  6970 <__cstr_debug>
    2a04:	e9 79 ff ff ff       	jmpq   2982 <__cstr_resize_from+0x2f2>
    2a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2a10:	4b 8d 6c 15 00       	lea    0x0(%r13,%r10,1),%rbp
    2a15:	41 83 fb 03          	cmp    $0x3,%r11d
    2a19:	0f 87 f9 02 00 00    	ja     2d18 <__cstr_resize_from+0x688>
    2a1f:	48 8d 05 0a 47 00 00 	lea    0x470a(%rip),%rax        # 7130 <CSWTCH.19>
    2a26:	42 8b 04 98          	mov    (%rax,%r11,4),%eax
    2a2a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    2a2e:	48 63 7c 24 1c       	movslq 0x1c(%rsp),%rdi
    2a33:	4c 89 e2             	mov    %r12,%rdx
    2a36:	48 89 ee             	mov    %rbp,%rsi
    2a39:	4c 01 ef             	add    %r13,%rdi
    2a3c:	e8 df e6 ff ff       	callq  1120 <memmove@plt>
    2a41:	43 c6 44 35 ff 00    	movb   $0x0,-0x1(%r13,%r14,1)
    2a47:	48 83 c4 38          	add    $0x38,%rsp
    2a4b:	5b                   	pop    %rbx
    2a4c:	5d                   	pop    %rbp
    2a4d:	41 5c                	pop    %r12
    2a4f:	41 5d                	pop    %r13
    2a51:	41 5e                	pop    %r14
    2a53:	41 5f                	pop    %r15
    2a55:	c3                   	retq   
    2a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2a5d:	00 00 00 
    2a60:	c3                   	retq   
    2a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2a68:	48 63 44 24 10       	movslq 0x10(%rsp),%rax
    2a6d:	4c 89 ef             	mov    %r13,%rdi
    2a70:	4c 89 f6             	mov    %r14,%rsi
    2a73:	44 89 44 24 14       	mov    %r8d,0x14(%rsp)
    2a78:	44 89 4c 24 0c       	mov    %r9d,0xc(%rsp)
    2a7d:	48 29 c7             	sub    %rax,%rdi
    2a80:	e8 8b e6 ff ff       	callq  1110 <realloc@plt>
    2a85:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
    2a8a:	44 8b 44 24 14       	mov    0x14(%rsp),%r8d
    2a8f:	48 85 c0             	test   %rax,%rax
    2a92:	49 89 c5             	mov    %rax,%r13
    2a95:	0f 84 88 08 00 00    	je     3323 <__cstr_resize_from+0xc93>
    2a9b:	43 c6 44 35 ff 00    	movb   $0x0,-0x1(%r13,%r14,1)
    2aa1:	41 c1 ef 18          	shr    $0x18,%r15d
    2aa5:	41 83 f8 02          	cmp    $0x2,%r8d
    2aa9:	0f 84 11 04 00 00    	je     2ec0 <__cstr_resize_from+0x830>
    2aaf:	41 83 f8 03          	cmp    $0x3,%r8d
    2ab3:	0f 85 97 00 00 00    	jne    2b50 <__cstr_resize_from+0x4c0>
    2ab9:	45 89 65 04          	mov    %r12d,0x4(%r13)
    2abd:	4d 8d 65 0c          	lea    0xc(%r13),%r12
    2ac1:	45 89 4d 00          	mov    %r9d,0x0(%r13)
    2ac5:	45 89 7d 08          	mov    %r15d,0x8(%r13)
    2ac9:	4c 89 23             	mov    %r12,(%rbx)
    2acc:	48 85 ed             	test   %rbp,%rbp
    2acf:	0f 84 ab fc ff ff    	je     2780 <__cstr_resize_from+0xf0>
    2ad5:	be 00 20 00 00       	mov    $0x2000,%esi
    2ada:	48 89 ef             	mov    %rbp,%rdi
    2add:	e8 be e5 ff ff       	callq  10a0 <strnlen@plt>
    2ae2:	83 f8 08             	cmp    $0x8,%eax
    2ae5:	0f 83 fa 05 00 00    	jae    30e5 <__cstr_resize_from+0xa55>
    2aeb:	a8 04                	test   $0x4,%al
    2aed:	0f 85 7c 07 00 00    	jne    326f <__cstr_resize_from+0xbdf>
    2af3:	85 c0                	test   %eax,%eax
    2af5:	74 10                	je     2b07 <__cstr_resize_from+0x477>
    2af7:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    2afb:	41 88 55 0c          	mov    %dl,0xc(%r13)
    2aff:	a8 02                	test   $0x2,%al
    2b01:	0f 85 a8 07 00 00    	jne    32af <__cstr_resize_from+0xc1f>
    2b07:	48 8b 13             	mov    (%rbx),%rdx
    2b0a:	89 42 f4             	mov    %eax,-0xc(%rdx)
    2b0d:	e9 6e fc ff ff       	jmpq   2780 <__cstr_resize_from+0xf0>
    2b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2b18:	4c 8b 3b             	mov    (%rbx),%r15
    2b1b:	41 80 fe 03          	cmp    $0x3,%r14b
    2b1f:	0f 84 6b 03 00 00    	je     2e90 <__cstr_resize_from+0x800>
    2b25:	41 80 fe 01          	cmp    $0x1,%r14b
    2b29:	0f 84 59 03 00 00    	je     2e88 <__cstr_resize_from+0x7f8>
    2b2f:	41 80 fe 02          	cmp    $0x2,%r14b
    2b33:	0f 85 b3 fe ff ff    	jne    29ec <__cstr_resize_from+0x35c>
    2b39:	4c 89 e0             	mov    %r12,%rax
    2b3c:	66 41 89 47 fa       	mov    %ax,-0x6(%r15)
    2b41:	e9 3c fe ff ff       	jmpq   2982 <__cstr_resize_from+0x2f2>
    2b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2b4d:	00 00 00 
    2b50:	45 88 65 01          	mov    %r12b,0x1(%r13)
    2b54:	4d 8d 65 03          	lea    0x3(%r13),%r12
    2b58:	45 88 4d 00          	mov    %r9b,0x0(%r13)
    2b5c:	45 88 7d 02          	mov    %r15b,0x2(%r13)
    2b60:	4c 89 23             	mov    %r12,(%rbx)
    2b63:	48 85 ed             	test   %rbp,%rbp
    2b66:	0f 84 14 fc ff ff    	je     2780 <__cstr_resize_from+0xf0>
    2b6c:	be 00 20 00 00       	mov    $0x2000,%esi
    2b71:	48 89 ef             	mov    %rbp,%rdi
    2b74:	e8 27 e5 ff ff       	callq  10a0 <strnlen@plt>
    2b79:	83 f8 08             	cmp    $0x8,%eax
    2b7c:	0f 83 d6 03 00 00    	jae    2f58 <__cstr_resize_from+0x8c8>
    2b82:	a8 04                	test   $0x4,%al
    2b84:	0f 85 07 06 00 00    	jne    3191 <__cstr_resize_from+0xb01>
    2b8a:	85 c0                	test   %eax,%eax
    2b8c:	74 10                	je     2b9e <__cstr_resize_from+0x50e>
    2b8e:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    2b92:	41 88 55 03          	mov    %dl,0x3(%r13)
    2b96:	a8 02                	test   $0x2,%al
    2b98:	0f 85 77 06 00 00    	jne    3215 <__cstr_resize_from+0xb85>
    2b9e:	48 8b 13             	mov    (%rbx),%rdx
    2ba1:	88 42 fd             	mov    %al,-0x3(%rdx)
    2ba4:	e9 d7 fb ff ff       	jmpq   2780 <__cstr_resize_from+0xf0>
    2ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2bb0:	b8 02 00 00 00       	mov    $0x2,%eax
    2bb5:	41 ba 06 00 00 00    	mov    $0x6,%r10d
    2bbb:	be 00 04 00 00       	mov    $0x400,%esi
    2bc0:	41 be 00 04 00 00    	mov    $0x400,%r14d
    2bc6:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    2bcc:	e9 48 fc ff ff       	jmpq   2819 <__cstr_resize_from+0x189>
    2bd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2bd8:	48 81 fa ff 00 00 00 	cmp    $0xff,%rdx
    2bdf:	0f 86 bb 02 00 00    	jbe    2ea0 <__cstr_resize_from+0x810>
    2be5:	48 81 fa ff ff 00 00 	cmp    $0xffff,%rdx
    2bec:	0f 86 d3 04 00 00    	jbe    30c5 <__cstr_resize_from+0xa35>
    2bf2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    2bf7:	4c 39 e2             	cmp    %r12,%rdx
    2bfa:	19 c0                	sbb    %eax,%eax
    2bfc:	f7 d0                	not    %eax
    2bfe:	83 c0 04             	add    $0x4,%eax
    2c01:	4c 39 e2             	cmp    %r12,%rdx
    2c04:	48 19 f6             	sbb    %rsi,%rsi
    2c07:	81 e6 00 f0 ff 00    	and    $0xfff000,%esi
    2c0d:	48 81 c6 00 10 00 00 	add    $0x1000,%rsi
    2c14:	4c 39 e2             	cmp    %r12,%rdx
    2c17:	45 19 ff             	sbb    %r15d,%r15d
    2c1a:	41 83 e7 0c          	and    $0xc,%r15d
    2c1e:	41 83 c7 0c          	add    $0xc,%r15d
    2c22:	4c 39 e2             	cmp    %r12,%rdx
    2c25:	19 c9                	sbb    %ecx,%ecx
    2c27:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    2c2d:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    2c33:	4c 39 e2             	cmp    %r12,%rdx
    2c36:	45 19 c9             	sbb    %r9d,%r9d
    2c39:	41 f7 d1             	not    %r9d
    2c3c:	41 83 c1 04          	add    $0x4,%r9d
    2c40:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2c47:	00 
    2c48:	31 d2                	xor    %edx,%edx
    2c4a:	88 44 24 2f          	mov    %al,0x2f(%rsp)
    2c4e:	4c 89 e0             	mov    %r12,%rax
    2c51:	44 8b 74 24 2c       	mov    0x2c(%rsp),%r14d
    2c56:	48 f7 f6             	div    %rsi
    2c59:	44 89 4c 24 10       	mov    %r9d,0x10(%rsp)
    2c5e:	44 8d 40 01          	lea    0x1(%rax),%r8d
    2c62:	41 0f af c8          	imul   %r8d,%ecx
    2c66:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
    2c6b:	41 01 cf             	add    %ecx,%r15d
    2c6e:	4d 63 ff             	movslq %r15d,%r15
    2c71:	4c 89 ff             	mov    %r15,%rdi
    2c74:	e8 87 e4 ff ff       	callq  1100 <malloc@plt>
    2c79:	4c 63 44 24 0c       	movslq 0xc(%rsp),%r8
    2c7e:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
    2c83:	48 85 c0             	test   %rax,%rax
    2c86:	49 89 c5             	mov    %rax,%r13
    2c89:	0f 84 63 06 00 00    	je     32f2 <__cstr_resize_from+0xc62>
    2c8f:	41 c1 ee 18          	shr    $0x18,%r14d
    2c93:	41 83 f9 03          	cmp    $0x3,%r9d
    2c97:	0f 84 13 04 00 00    	je     30b0 <__cstr_resize_from+0xa20>
    2c9d:	41 83 f9 04          	cmp    $0x4,%r9d
    2ca1:	0f 84 e9 03 00 00    	je     3090 <__cstr_resize_from+0xa00>
    2ca7:	41 83 f9 02          	cmp    $0x2,%r9d
    2cab:	0f 84 bf 03 00 00    	je     3070 <__cstr_resize_from+0x9e0>
    2cb1:	45 88 45 00          	mov    %r8b,0x0(%r13)
    2cb5:	49 8d 7d 03          	lea    0x3(%r13),%rdi
    2cb9:	45 88 65 01          	mov    %r12b,0x1(%r13)
    2cbd:	45 88 75 02          	mov    %r14b,0x2(%r13)
    2cc1:	48 89 3b             	mov    %rdi,(%rbx)
    2cc4:	48 85 ed             	test   %rbp,%rbp
    2cc7:	74 0b                	je     2cd4 <__cstr_resize_from+0x644>
    2cc9:	4c 89 e2             	mov    %r12,%rdx
    2ccc:	48 89 ee             	mov    %rbp,%rsi
    2ccf:	e8 fc e3 ff ff       	callq  10d0 <memcpy@plt>
    2cd4:	43 c6 44 3d ff 00    	movb   $0x0,-0x1(%r13,%r15,1)
    2cda:	e9 a1 fa ff ff       	jmpq   2780 <__cstr_resize_from+0xf0>
    2cdf:	90                   	nop
    2ce0:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    2ce4:	49 8d 7f 08          	lea    0x8(%r15),%rdi
    2ce8:	48 89 ee             	mov    %rbp,%rsi
    2ceb:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2cef:	49 89 17             	mov    %rdx,(%r15)
    2cf2:	89 c2                	mov    %eax,%edx
    2cf4:	48 8b 4c 15 f8       	mov    -0x8(%rbp,%rdx,1),%rcx
    2cf9:	49 89 4c 17 f8       	mov    %rcx,-0x8(%r15,%rdx,1)
    2cfe:	49 29 ff             	sub    %rdi,%r15
    2d01:	42 8d 0c 38          	lea    (%rax,%r15,1),%ecx
    2d05:	4c 29 fe             	sub    %r15,%rsi
    2d08:	c1 e9 03             	shr    $0x3,%ecx
    2d0b:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    2d0e:	e9 54 fc ff ff       	jmpq   2967 <__cstr_resize_from+0x2d7>
    2d13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2d18:	ba 01 00 00 00       	mov    $0x1,%edx
    2d1d:	48 8d 35 e0 42 00 00 	lea    0x42e0(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    2d24:	48 8d 3d ed 42 00 00 	lea    0x42ed(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    2d2b:	e8 40 3c 00 00       	callq  6970 <__cstr_debug>
    2d30:	e9 f9 fc ff ff       	jmpq   2a2e <__cstr_resize_from+0x39e>
    2d35:	0f 1f 00             	nopl   (%rax)
    2d38:	41 80 fe 01          	cmp    $0x1,%r14b
    2d3c:	0f 85 aa fc ff ff    	jne    29ec <__cstr_resize_from+0x35c>
    2d42:	41 88 47 fd          	mov    %al,-0x3(%r15)
    2d46:	e9 37 fc ff ff       	jmpq   2982 <__cstr_resize_from+0x2f2>
    2d4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2d50:	41 c1 ef 18          	shr    $0x18,%r15d
    2d54:	45 89 4d 00          	mov    %r9d,0x0(%r13)
    2d58:	45 89 7d 08          	mov    %r15d,0x8(%r13)
    2d5c:	4d 8d 7d 0c          	lea    0xc(%r13),%r15
    2d60:	45 89 65 04          	mov    %r12d,0x4(%r13)
    2d64:	4c 89 3b             	mov    %r15,(%rbx)
    2d67:	48 85 ed             	test   %rbp,%rbp
    2d6a:	0f 84 a0 fc ff ff    	je     2a10 <__cstr_resize_from+0x380>
    2d70:	be 00 20 00 00       	mov    $0x2000,%esi
    2d75:	48 89 ef             	mov    %rbp,%rdi
    2d78:	e8 23 e3 ff ff       	callq  10a0 <strnlen@plt>
    2d7d:	48 89 c2             	mov    %rax,%rdx
    2d80:	83 f8 08             	cmp    $0x8,%eax
    2d83:	0f 83 a7 02 00 00    	jae    3030 <__cstr_resize_from+0x9a0>
    2d89:	a8 04                	test   $0x4,%al
    2d8b:	0f 85 5c 04 00 00    	jne    31ed <__cstr_resize_from+0xb5d>
    2d91:	85 c0                	test   %eax,%eax
    2d93:	74 11                	je     2da6 <__cstr_resize_from+0x716>
    2d95:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
    2d99:	41 88 45 0c          	mov    %al,0xc(%r13)
    2d9d:	f6 c2 02             	test   $0x2,%dl
    2da0:	0f 85 b7 04 00 00    	jne    325d <__cstr_resize_from+0xbcd>
    2da6:	48 8b 03             	mov    (%rbx),%rax
    2da9:	89 50 f4             	mov    %edx,-0xc(%rax)
    2dac:	e9 90 fc ff ff       	jmpq   2a41 <__cstr_resize_from+0x3b1>
    2db1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2db8:	41 c1 ef 18          	shr    $0x18,%r15d
    2dbc:	4d 89 4d 00          	mov    %r9,0x0(%r13)
    2dc0:	45 0f b6 ff          	movzbl %r15b,%r15d
    2dc4:	4d 89 65 08          	mov    %r12,0x8(%r13)
    2dc8:	4d 89 7d 10          	mov    %r15,0x10(%r13)
    2dcc:	4d 8d 7d 18          	lea    0x18(%r13),%r15
    2dd0:	4c 89 3b             	mov    %r15,(%rbx)
    2dd3:	48 85 ed             	test   %rbp,%rbp
    2dd6:	0f 84 34 fc ff ff    	je     2a10 <__cstr_resize_from+0x380>
    2ddc:	be 00 20 00 00       	mov    $0x2000,%esi
    2de1:	48 89 ef             	mov    %rbp,%rdi
    2de4:	e8 b7 e2 ff ff       	callq  10a0 <strnlen@plt>
    2de9:	83 f8 08             	cmp    $0x8,%eax
    2dec:	0f 83 1e 02 00 00    	jae    3010 <__cstr_resize_from+0x980>
    2df2:	a8 04                	test   $0x4,%al
    2df4:	0f 85 c5 03 00 00    	jne    31bf <__cstr_resize_from+0xb2f>
    2dfa:	85 c0                	test   %eax,%eax
    2dfc:	74 10                	je     2e0e <__cstr_resize_from+0x77e>
    2dfe:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    2e02:	41 88 55 18          	mov    %dl,0x18(%r13)
    2e06:	a8 02                	test   $0x2,%al
    2e08:	0f 85 3d 04 00 00    	jne    324b <__cstr_resize_from+0xbbb>
    2e0e:	48 8b 13             	mov    (%rbx),%rdx
    2e11:	48 89 42 e8          	mov    %rax,-0x18(%rdx)
    2e15:	e9 27 fc ff ff       	jmpq   2a41 <__cstr_resize_from+0x3b1>
    2e1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2e20:	41 c1 ef 18          	shr    $0x18,%r15d
    2e24:	45 88 4d 00          	mov    %r9b,0x0(%r13)
    2e28:	45 88 7d 02          	mov    %r15b,0x2(%r13)
    2e2c:	4d 8d 7d 03          	lea    0x3(%r13),%r15
    2e30:	45 88 65 01          	mov    %r12b,0x1(%r13)
    2e34:	4c 89 3b             	mov    %r15,(%rbx)
    2e37:	48 85 ed             	test   %rbp,%rbp
    2e3a:	0f 84 d0 fb ff ff    	je     2a10 <__cstr_resize_from+0x380>
    2e40:	be 00 20 00 00       	mov    $0x2000,%esi
    2e45:	48 89 ef             	mov    %rbp,%rdi
    2e48:	e8 53 e2 ff ff       	callq  10a0 <strnlen@plt>
    2e4d:	48 89 c2             	mov    %rax,%rdx
    2e50:	83 f8 08             	cmp    $0x8,%eax
    2e53:	0f 83 77 01 00 00    	jae    2fd0 <__cstr_resize_from+0x940>
    2e59:	a8 04                	test   $0x4,%al
    2e5b:	0f 85 47 03 00 00    	jne    31a8 <__cstr_resize_from+0xb18>
    2e61:	85 c0                	test   %eax,%eax
    2e63:	74 11                	je     2e76 <__cstr_resize_from+0x7e6>
    2e65:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
    2e69:	41 88 45 03          	mov    %al,0x3(%r13)
    2e6d:	f6 c2 02             	test   $0x2,%dl
    2e70:	0f 85 c3 03 00 00    	jne    3239 <__cstr_resize_from+0xba9>
    2e76:	48 8b 03             	mov    (%rbx),%rax
    2e79:	88 50 fd             	mov    %dl,-0x3(%rax)
    2e7c:	e9 c0 fb ff ff       	jmpq   2a41 <__cstr_resize_from+0x3b1>
    2e81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2e88:	4c 89 e0             	mov    %r12,%rax
    2e8b:	e9 b2 fe ff ff       	jmpq   2d42 <__cstr_resize_from+0x6b2>
    2e90:	4c 89 e0             	mov    %r12,%rax
    2e93:	e9 e6 fa ff ff       	jmpq   297e <__cstr_resize_from+0x2ee>
    2e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2e9f:	00 
    2ea0:	b8 01 00 00 00       	mov    $0x1,%eax
    2ea5:	be 40 00 00 00       	mov    $0x40,%esi
    2eaa:	b9 40 00 00 00       	mov    $0x40,%ecx
    2eaf:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    2eb5:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    2ebb:	e9 80 fd ff ff       	jmpq   2c40 <__cstr_resize_from+0x5b0>
    2ec0:	66 45 89 65 02       	mov    %r12w,0x2(%r13)
    2ec5:	4d 8d 65 06          	lea    0x6(%r13),%r12
    2ec9:	66 45 89 4d 00       	mov    %r9w,0x0(%r13)
    2ece:	66 45 89 7d 04       	mov    %r15w,0x4(%r13)
    2ed3:	4c 89 23             	mov    %r12,(%rbx)
    2ed6:	48 85 ed             	test   %rbp,%rbp
    2ed9:	0f 84 a1 f8 ff ff    	je     2780 <__cstr_resize_from+0xf0>
    2edf:	be 00 20 00 00       	mov    $0x2000,%esi
    2ee4:	48 89 ef             	mov    %rbp,%rdi
    2ee7:	e8 b4 e1 ff ff       	callq  10a0 <strnlen@plt>
    2eec:	83 f8 08             	cmp    $0x8,%eax
    2eef:	0f 83 27 02 00 00    	jae    311c <__cstr_resize_from+0xa8c>
    2ef5:	a8 04                	test   $0x4,%al
    2ef7:	0f 85 89 03 00 00    	jne    3286 <__cstr_resize_from+0xbf6>
    2efd:	85 c0                	test   %eax,%eax
    2eff:	74 10                	je     2f11 <__cstr_resize_from+0x881>
    2f01:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    2f05:	41 88 55 06          	mov    %dl,0x6(%r13)
    2f09:	a8 02                	test   $0x2,%al
    2f0b:	0f 85 8c 03 00 00    	jne    329d <__cstr_resize_from+0xc0d>
    2f11:	48 8b 13             	mov    (%rbx),%rdx
    2f14:	66 89 42 fa          	mov    %ax,-0x6(%rdx)
    2f18:	e9 63 f8 ff ff       	jmpq   2780 <__cstr_resize_from+0xf0>
    2f1d:	0f 1f 00             	nopl   (%rax)
    2f20:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    2f24:	48 8d 79 08          	lea    0x8(%rcx),%rdi
    2f28:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2f2c:	48 89 11             	mov    %rdx,(%rcx)
    2f2f:	89 c2                	mov    %eax,%edx
    2f31:	48 8b 74 15 f8       	mov    -0x8(%rbp,%rdx,1),%rsi
    2f36:	48 89 74 11 f8       	mov    %rsi,-0x8(%rcx,%rdx,1)
    2f3b:	48 29 f9             	sub    %rdi,%rcx
    2f3e:	48 89 ee             	mov    %rbp,%rsi
    2f41:	48 29 ce             	sub    %rcx,%rsi
    2f44:	01 c1                	add    %eax,%ecx
    2f46:	89 c8                	mov    %ecx,%eax
    2f48:	c1 e8 03             	shr    $0x3,%eax
    2f4b:	89 c1                	mov    %eax,%ecx
    2f4d:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    2f50:	e9 97 fa ff ff       	jmpq   29ec <__cstr_resize_from+0x35c>
    2f55:	0f 1f 00             	nopl   (%rax)
    2f58:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    2f5c:	49 8d 7d 0b          	lea    0xb(%r13),%rdi
    2f60:	48 89 ee             	mov    %rbp,%rsi
    2f63:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2f67:	49 89 55 03          	mov    %rdx,0x3(%r13)
    2f6b:	89 c2                	mov    %eax,%edx
    2f6d:	48 8b 4c 15 f8       	mov    -0x8(%rbp,%rdx,1),%rcx
    2f72:	49 89 4c 14 f8       	mov    %rcx,-0x8(%r12,%rdx,1)
    2f77:	49 29 fc             	sub    %rdi,%r12
    2f7a:	42 8d 0c 20          	lea    (%rax,%r12,1),%ecx
    2f7e:	4c 29 e6             	sub    %r12,%rsi
    2f81:	c1 e9 03             	shr    $0x3,%ecx
    2f84:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    2f87:	e9 12 fc ff ff       	jmpq   2b9e <__cstr_resize_from+0x50e>
    2f8c:	0f 1f 40 00          	nopl   0x0(%rax)
    2f90:	48 8b 45 00          	mov    0x0(%rbp),%rax
    2f94:	49 8d 7d 0e          	lea    0xe(%r13),%rdi
    2f98:	48 89 ee             	mov    %rbp,%rsi
    2f9b:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2f9f:	49 89 45 06          	mov    %rax,0x6(%r13)
    2fa3:	89 d0                	mov    %edx,%eax
    2fa5:	48 8b 4c 05 f8       	mov    -0x8(%rbp,%rax,1),%rcx
    2faa:	49 89 4c 07 f8       	mov    %rcx,-0x8(%r15,%rax,1)
    2faf:	4c 89 f8             	mov    %r15,%rax
    2fb2:	48 29 f8             	sub    %rdi,%rax
    2fb5:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    2fb8:	48 29 c6             	sub    %rax,%rsi
    2fbb:	89 c8                	mov    %ecx,%eax
    2fbd:	c1 e8 03             	shr    $0x3,%eax
    2fc0:	89 c1                	mov    %eax,%ecx
    2fc2:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    2fc5:	e9 3f f9 ff ff       	jmpq   2909 <__cstr_resize_from+0x279>
    2fca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2fd0:	48 8b 45 00          	mov    0x0(%rbp),%rax
    2fd4:	49 8d 7d 0b          	lea    0xb(%r13),%rdi
    2fd8:	48 89 ee             	mov    %rbp,%rsi
    2fdb:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    2fdf:	49 89 45 03          	mov    %rax,0x3(%r13)
    2fe3:	89 d0                	mov    %edx,%eax
    2fe5:	48 8b 4c 05 f8       	mov    -0x8(%rbp,%rax,1),%rcx
    2fea:	49 89 4c 07 f8       	mov    %rcx,-0x8(%r15,%rax,1)
    2fef:	4c 89 f8             	mov    %r15,%rax
    2ff2:	48 29 f8             	sub    %rdi,%rax
    2ff5:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    2ff8:	48 29 c6             	sub    %rax,%rsi
    2ffb:	89 c8                	mov    %ecx,%eax
    2ffd:	c1 e8 03             	shr    $0x3,%eax
    3000:	89 c1                	mov    %eax,%ecx
    3002:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    3005:	e9 6c fe ff ff       	jmpq   2e76 <__cstr_resize_from+0x7e6>
    300a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3010:	89 c2                	mov    %eax,%edx
    3012:	4c 89 ff             	mov    %r15,%rdi
    3015:	48 89 ee             	mov    %rbp,%rsi
    3018:	48 8b 4c 15 f8       	mov    -0x8(%rbp,%rdx,1),%rcx
    301d:	49 89 4c 17 f8       	mov    %rcx,-0x8(%r15,%rdx,1)
    3022:	8d 48 ff             	lea    -0x1(%rax),%ecx
    3025:	c1 e9 03             	shr    $0x3,%ecx
    3028:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    302b:	e9 de fd ff ff       	jmpq   2e0e <__cstr_resize_from+0x77e>
    3030:	48 8b 45 00          	mov    0x0(%rbp),%rax
    3034:	49 8d 7d 14          	lea    0x14(%r13),%rdi
    3038:	48 89 ee             	mov    %rbp,%rsi
    303b:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    303f:	49 89 45 0c          	mov    %rax,0xc(%r13)
    3043:	89 d0                	mov    %edx,%eax
    3045:	48 8b 4c 05 f8       	mov    -0x8(%rbp,%rax,1),%rcx
    304a:	49 89 4c 07 f8       	mov    %rcx,-0x8(%r15,%rax,1)
    304f:	4c 89 f8             	mov    %r15,%rax
    3052:	48 29 f8             	sub    %rdi,%rax
    3055:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    3058:	48 29 c6             	sub    %rax,%rsi
    305b:	89 c8                	mov    %ecx,%eax
    305d:	c1 e8 03             	shr    $0x3,%eax
    3060:	89 c1                	mov    %eax,%ecx
    3062:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    3065:	e9 3c fd ff ff       	jmpq   2da6 <__cstr_resize_from+0x716>
    306a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3070:	66 45 89 45 00       	mov    %r8w,0x0(%r13)
    3075:	49 8d 7d 06          	lea    0x6(%r13),%rdi
    3079:	66 45 89 65 02       	mov    %r12w,0x2(%r13)
    307e:	66 45 89 75 04       	mov    %r14w,0x4(%r13)
    3083:	e9 39 fc ff ff       	jmpq   2cc1 <__cstr_resize_from+0x631>
    3088:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    308f:	00 
    3090:	45 0f b6 f6          	movzbl %r14b,%r14d
    3094:	4d 89 45 00          	mov    %r8,0x0(%r13)
    3098:	49 8d 7d 18          	lea    0x18(%r13),%rdi
    309c:	4d 89 65 08          	mov    %r12,0x8(%r13)
    30a0:	4d 89 75 10          	mov    %r14,0x10(%r13)
    30a4:	e9 18 fc ff ff       	jmpq   2cc1 <__cstr_resize_from+0x631>
    30a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    30b0:	45 89 45 00          	mov    %r8d,0x0(%r13)
    30b4:	49 8d 7d 0c          	lea    0xc(%r13),%rdi
    30b8:	45 89 65 04          	mov    %r12d,0x4(%r13)
    30bc:	45 89 75 08          	mov    %r14d,0x8(%r13)
    30c0:	e9 fc fb ff ff       	jmpq   2cc1 <__cstr_resize_from+0x631>
    30c5:	b8 02 00 00 00       	mov    $0x2,%eax
    30ca:	be 00 04 00 00       	mov    $0x400,%esi
    30cf:	b9 00 04 00 00       	mov    $0x400,%ecx
    30d4:	41 bf 06 00 00 00    	mov    $0x6,%r15d
    30da:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    30e0:	e9 5b fb ff ff       	jmpq   2c40 <__cstr_resize_from+0x5b0>
    30e5:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    30e9:	49 8d 7d 14          	lea    0x14(%r13),%rdi
    30ed:	48 89 ee             	mov    %rbp,%rsi
    30f0:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    30f4:	49 89 55 0c          	mov    %rdx,0xc(%r13)
    30f8:	89 c2                	mov    %eax,%edx
    30fa:	48 8b 4c 15 f8       	mov    -0x8(%rbp,%rdx,1),%rcx
    30ff:	49 89 4c 14 f8       	mov    %rcx,-0x8(%r12,%rdx,1)
    3104:	49 29 fc             	sub    %rdi,%r12
    3107:	4c 29 e6             	sub    %r12,%rsi
    310a:	41 01 c4             	add    %eax,%r12d
    310d:	41 c1 ec 03          	shr    $0x3,%r12d
    3111:	44 89 e1             	mov    %r12d,%ecx
    3114:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    3117:	e9 eb f9 ff ff       	jmpq   2b07 <__cstr_resize_from+0x477>
    311c:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    3120:	49 8d 7d 0e          	lea    0xe(%r13),%rdi
    3124:	48 89 ee             	mov    %rbp,%rsi
    3127:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    312b:	49 89 55 06          	mov    %rdx,0x6(%r13)
    312f:	89 c2                	mov    %eax,%edx
    3131:	48 8b 4c 15 f8       	mov    -0x8(%rbp,%rdx,1),%rcx
    3136:	49 89 4c 14 f8       	mov    %rcx,-0x8(%r12,%rdx,1)
    313b:	49 29 fc             	sub    %rdi,%r12
    313e:	4c 29 e6             	sub    %r12,%rsi
    3141:	41 01 c4             	add    %eax,%r12d
    3144:	41 c1 ec 03          	shr    $0x3,%r12d
    3148:	44 89 e1             	mov    %r12d,%ecx
    314b:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    314e:	e9 be fd ff ff       	jmpq   2f11 <__cstr_resize_from+0x881>
    3153:	8b 55 00             	mov    0x0(%rbp),%edx
    3156:	41 89 17             	mov    %edx,(%r15)
    3159:	8b 54 0d fc          	mov    -0x4(%rbp,%rcx,1),%edx
    315d:	41 89 54 0f fc       	mov    %edx,-0x4(%r15,%rcx,1)
    3162:	4c 8b 3b             	mov    (%rbx),%r15
    3165:	e9 00 f8 ff ff       	jmpq   296a <__cstr_resize_from+0x2da>
    316a:	0f b7 54 0d fe       	movzwl -0x2(%rbp,%rcx,1),%edx
    316f:	66 41 89 54 0f fe    	mov    %dx,-0x2(%r15,%rcx,1)
    3175:	4c 8b 3b             	mov    (%rbx),%r15
    3178:	e9 ed f7 ff ff       	jmpq   296a <__cstr_resize_from+0x2da>
    317d:	8b 55 00             	mov    0x0(%rbp),%edx
    3180:	89 11                	mov    %edx,(%rcx)
    3182:	89 c2                	mov    %eax,%edx
    3184:	8b 44 15 fc          	mov    -0x4(%rbp,%rdx,1),%eax
    3188:	89 44 11 fc          	mov    %eax,-0x4(%rcx,%rdx,1)
    318c:	e9 5b f8 ff ff       	jmpq   29ec <__cstr_resize_from+0x35c>
    3191:	8b 55 00             	mov    0x0(%rbp),%edx
    3194:	41 89 55 03          	mov    %edx,0x3(%r13)
    3198:	89 c2                	mov    %eax,%edx
    319a:	8b 4c 15 fc          	mov    -0x4(%rbp,%rdx,1),%ecx
    319e:	41 89 4c 14 fc       	mov    %ecx,-0x4(%r12,%rdx,1)
    31a3:	e9 f6 f9 ff ff       	jmpq   2b9e <__cstr_resize_from+0x50e>
    31a8:	8b 45 00             	mov    0x0(%rbp),%eax
    31ab:	41 89 45 03          	mov    %eax,0x3(%r13)
    31af:	89 d0                	mov    %edx,%eax
    31b1:	8b 4c 05 fc          	mov    -0x4(%rbp,%rax,1),%ecx
    31b5:	41 89 4c 07 fc       	mov    %ecx,-0x4(%r15,%rax,1)
    31ba:	e9 b7 fc ff ff       	jmpq   2e76 <__cstr_resize_from+0x7e6>
    31bf:	8b 55 00             	mov    0x0(%rbp),%edx
    31c2:	41 89 55 18          	mov    %edx,0x18(%r13)
    31c6:	89 c2                	mov    %eax,%edx
    31c8:	8b 4c 15 fc          	mov    -0x4(%rbp,%rdx,1),%ecx
    31cc:	41 89 4c 17 fc       	mov    %ecx,-0x4(%r15,%rdx,1)
    31d1:	e9 38 fc ff ff       	jmpq   2e0e <__cstr_resize_from+0x77e>
    31d6:	8b 45 00             	mov    0x0(%rbp),%eax
    31d9:	41 89 45 06          	mov    %eax,0x6(%r13)
    31dd:	89 d0                	mov    %edx,%eax
    31df:	8b 4c 05 fc          	mov    -0x4(%rbp,%rax,1),%ecx
    31e3:	41 89 4c 07 fc       	mov    %ecx,-0x4(%r15,%rax,1)
    31e8:	e9 1c f7 ff ff       	jmpq   2909 <__cstr_resize_from+0x279>
    31ed:	8b 45 00             	mov    0x0(%rbp),%eax
    31f0:	41 89 45 0c          	mov    %eax,0xc(%r13)
    31f4:	89 d0                	mov    %edx,%eax
    31f6:	8b 4c 05 fc          	mov    -0x4(%rbp,%rax,1),%ecx
    31fa:	41 89 4c 07 fc       	mov    %ecx,-0x4(%r15,%rax,1)
    31ff:	e9 a2 fb ff ff       	jmpq   2da6 <__cstr_resize_from+0x716>
    3204:	89 c2                	mov    %eax,%edx
    3206:	0f b7 44 15 fe       	movzwl -0x2(%rbp,%rdx,1),%eax
    320b:	66 89 44 11 fe       	mov    %ax,-0x2(%rcx,%rdx,1)
    3210:	e9 d7 f7 ff ff       	jmpq   29ec <__cstr_resize_from+0x35c>
    3215:	89 c2                	mov    %eax,%edx
    3217:	0f b7 4c 15 fe       	movzwl -0x2(%rbp,%rdx,1),%ecx
    321c:	66 41 89 4c 14 fe    	mov    %cx,-0x2(%r12,%rdx,1)
    3222:	e9 77 f9 ff ff       	jmpq   2b9e <__cstr_resize_from+0x50e>
    3227:	89 d0                	mov    %edx,%eax
    3229:	0f b7 4c 05 fe       	movzwl -0x2(%rbp,%rax,1),%ecx
    322e:	66 41 89 4c 07 fe    	mov    %cx,-0x2(%r15,%rax,1)
    3234:	e9 d0 f6 ff ff       	jmpq   2909 <__cstr_resize_from+0x279>
    3239:	89 d0                	mov    %edx,%eax
    323b:	0f b7 4c 05 fe       	movzwl -0x2(%rbp,%rax,1),%ecx
    3240:	66 41 89 4c 07 fe    	mov    %cx,-0x2(%r15,%rax,1)
    3246:	e9 2b fc ff ff       	jmpq   2e76 <__cstr_resize_from+0x7e6>
    324b:	89 c2                	mov    %eax,%edx
    324d:	0f b7 4c 15 fe       	movzwl -0x2(%rbp,%rdx,1),%ecx
    3252:	66 41 89 4c 17 fe    	mov    %cx,-0x2(%r15,%rdx,1)
    3258:	e9 b1 fb ff ff       	jmpq   2e0e <__cstr_resize_from+0x77e>
    325d:	89 d0                	mov    %edx,%eax
    325f:	0f b7 4c 05 fe       	movzwl -0x2(%rbp,%rax,1),%ecx
    3264:	66 41 89 4c 07 fe    	mov    %cx,-0x2(%r15,%rax,1)
    326a:	e9 37 fb ff ff       	jmpq   2da6 <__cstr_resize_from+0x716>
    326f:	8b 55 00             	mov    0x0(%rbp),%edx
    3272:	41 89 55 0c          	mov    %edx,0xc(%r13)
    3276:	89 c2                	mov    %eax,%edx
    3278:	8b 4c 15 fc          	mov    -0x4(%rbp,%rdx,1),%ecx
    327c:	41 89 4c 14 fc       	mov    %ecx,-0x4(%r12,%rdx,1)
    3281:	e9 81 f8 ff ff       	jmpq   2b07 <__cstr_resize_from+0x477>
    3286:	8b 55 00             	mov    0x0(%rbp),%edx
    3289:	41 89 55 06          	mov    %edx,0x6(%r13)
    328d:	89 c2                	mov    %eax,%edx
    328f:	8b 4c 15 fc          	mov    -0x4(%rbp,%rdx,1),%ecx
    3293:	41 89 4c 14 fc       	mov    %ecx,-0x4(%r12,%rdx,1)
    3298:	e9 74 fc ff ff       	jmpq   2f11 <__cstr_resize_from+0x881>
    329d:	89 c2                	mov    %eax,%edx
    329f:	0f b7 4c 15 fe       	movzwl -0x2(%rbp,%rdx,1),%ecx
    32a4:	66 41 89 4c 14 fe    	mov    %cx,-0x2(%r12,%rdx,1)
    32aa:	e9 62 fc ff ff       	jmpq   2f11 <__cstr_resize_from+0x881>
    32af:	89 c2                	mov    %eax,%edx
    32b1:	0f b7 4c 15 fe       	movzwl -0x2(%rbp,%rdx,1),%ecx
    32b6:	66 41 89 4c 14 fe    	mov    %cx,-0x2(%r12,%rdx,1)
    32bc:	e9 46 f8 ff ff       	jmpq   2b07 <__cstr_resize_from+0x477>
    32c1:	ba 02 00 00 00       	mov    $0x2,%edx
    32c6:	48 8d 35 27 3e 00 00 	lea    0x3e27(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    32cd:	48 8d 3d 32 3e 00 00 	lea    0x3e32(%rip),%rdi        # 7106 <_IO_stdin_used+0x106>
    32d4:	e8 97 36 00 00       	callq  6970 <__cstr_debug>
    32d9:	4c 63 54 24 18       	movslq 0x18(%rsp),%r10
    32de:	44 8b 5c 24 14       	mov    0x14(%rsp),%r11d
    32e3:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
    32e8:	4c 63 4c 24 0c       	movslq 0xc(%rsp),%r9
    32ed:	e9 96 f5 ff ff       	jmpq   2888 <__cstr_resize_from+0x1f8>
    32f2:	ba 02 00 00 00       	mov    $0x2,%edx
    32f7:	48 8d 35 f6 3d 00 00 	lea    0x3df6(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    32fe:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    3303:	48 8d 3d fc 3d 00 00 	lea    0x3dfc(%rip),%rdi        # 7106 <_IO_stdin_used+0x106>
    330a:	44 89 4c 24 0c       	mov    %r9d,0xc(%rsp)
    330f:	e8 5c 36 00 00       	callq  6970 <__cstr_debug>
    3314:	4c 63 44 24 10       	movslq 0x10(%rsp),%r8
    3319:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
    331e:	e9 6c f9 ff ff       	jmpq   2c8f <__cstr_resize_from+0x5ff>
    3323:	ba 02 00 00 00       	mov    $0x2,%edx
    3328:	48 8d 35 c5 3d 00 00 	lea    0x3dc5(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    332f:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    3334:	48 8d 3d cb 3d 00 00 	lea    0x3dcb(%rip),%rdi        # 7106 <_IO_stdin_used+0x106>
    333b:	e8 30 36 00 00       	callq  6970 <__cstr_debug>
    3340:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
    3345:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
    334a:	e9 4c f7 ff ff       	jmpq   2a9b <__cstr_resize_from+0x40b>
    334f:	ba 01 00 00 00       	mov    $0x1,%edx
    3354:	48 8d 35 a9 3c 00 00 	lea    0x3ca9(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    335b:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
    3360:	48 8d 3d 2c 3d 00 00 	lea    0x3d2c(%rip),%rdi        # 7093 <_IO_stdin_used+0x93>
    3367:	44 89 5c 24 0c       	mov    %r11d,0xc(%rsp)
    336c:	e8 ff 35 00 00       	callq  6970 <__cstr_debug>
    3371:	48 85 ed             	test   %rbp,%rbp
    3374:	44 8b 5c 24 0c       	mov    0xc(%rsp),%r11d
    3379:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
    3380:	4c 63 54 24 10       	movslq 0x10(%rsp),%r10
    3385:	0f 84 85 f6 ff ff    	je     2a10 <__cstr_resize_from+0x380>
    338b:	be 00 20 00 00       	mov    $0x2000,%esi
    3390:	48 89 ef             	mov    %rbp,%rdi
    3393:	e8 08 dd ff ff       	callq  10a0 <strnlen@plt>
    3398:	83 f8 08             	cmp    $0x8,%eax
    339b:	73 3b                	jae    33d8 <__cstr_resize_from+0xd48>
    339d:	a8 04                	test   $0x4,%al
    339f:	75 66                	jne    3407 <__cstr_resize_from+0xd77>
    33a1:	85 c0                	test   %eax,%eax
    33a3:	74 0f                	je     33b4 <__cstr_resize_from+0xd24>
    33a5:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
    33a9:	88 14 25 00 00 00 00 	mov    %dl,0x0
    33b0:	a8 02                	test   $0x2,%al
    33b2:	75 6a                	jne    341e <__cstr_resize_from+0xd8e>
    33b4:	ba 01 00 00 00       	mov    $0x1,%edx
    33b9:	48 8d 35 44 3c 00 00 	lea    0x3c44(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    33c0:	48 8d 3d a7 3c 00 00 	lea    0x3ca7(%rip),%rdi        # 706e <_IO_stdin_used+0x6e>
    33c7:	e8 a4 35 00 00       	callq  6970 <__cstr_debug>
    33cc:	e9 70 f6 ff ff       	jmpq   2a41 <__cstr_resize_from+0x3b1>
    33d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    33d8:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    33dc:	bf 08 00 00 00       	mov    $0x8,%edi
    33e1:	89 c1                	mov    %eax,%ecx
    33e3:	48 8d 74 3d 00       	lea    0x0(%rbp,%rdi,1),%rsi
    33e8:	48 89 14 25 00 00 00 	mov    %rdx,0x0
    33ef:	00 
    33f0:	89 c2                	mov    %eax,%edx
    33f2:	48 8b 4c 0d f8       	mov    -0x8(%rbp,%rcx,1),%rcx
    33f7:	29 f8                	sub    %edi,%eax
    33f9:	c1 e8 03             	shr    $0x3,%eax
    33fc:	48 89 4a f8          	mov    %rcx,-0x8(%rdx)
    3400:	89 c1                	mov    %eax,%ecx
    3402:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    3405:	eb ad                	jmp    33b4 <__cstr_resize_from+0xd24>
    3407:	8b 55 00             	mov    0x0(%rbp),%edx
    340a:	89 14 25 00 00 00 00 	mov    %edx,0x0
    3411:	89 c2                	mov    %eax,%edx
    3413:	89 c0                	mov    %eax,%eax
    3415:	8b 54 15 fc          	mov    -0x4(%rbp,%rdx,1),%edx
    3419:	89 50 fc             	mov    %edx,-0x4(%rax)
    341c:	eb 96                	jmp    33b4 <__cstr_resize_from+0xd24>
    341e:	89 c0                	mov    %eax,%eax
    3420:	0f b7 54 05 fe       	movzwl -0x2(%rbp,%rax,1),%edx
    3425:	66 89 50 fe          	mov    %dx,-0x2(%rax)
    3429:	eb 89                	jmp    33b4 <__cstr_resize_from+0xd24>
    342b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003430 <cstr_resize>:
    3430:	48 89 f2             	mov    %rsi,%rdx
    3433:	31 c9                	xor    %ecx,%ecx
    3435:	31 f6                	xor    %esi,%esi
    3437:	e9 54 f2 ff ff       	jmpq   2690 <__cstr_resize_from>
    343c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003440 <cstr_trim>:
    3440:	48 85 ff             	test   %rdi,%rdi
    3443:	0f 84 07 02 00 00    	je     3650 <cstr_trim+0x210>
    3449:	41 57                	push   %r15
    344b:	41 56                	push   %r14
    344d:	41 55                	push   %r13
    344f:	41 54                	push   %r12
    3451:	55                   	push   %rbp
    3452:	48 89 fd             	mov    %rdi,%rbp
    3455:	53                   	push   %rbx
    3456:	48 83 ec 38          	sub    $0x38,%rsp
    345a:	48 8b 37             	mov    (%rdi),%rsi
    345d:	44 0f b6 46 ff       	movzbl -0x1(%rsi),%r8d
    3462:	44 89 c3             	mov    %r8d,%ebx
    3465:	41 83 e0 03          	and    $0x3,%r8d
    3469:	83 e3 03             	and    $0x3,%ebx
    346c:	80 fb 02             	cmp    $0x2,%bl
    346f:	0f 84 6b 02 00 00    	je     36e0 <cstr_trim+0x2a0>
    3475:	80 fb 03             	cmp    $0x3,%bl
    3478:	0f 84 02 02 00 00    	je     3680 <cstr_trim+0x240>
    347e:	80 fb 01             	cmp    $0x1,%bl
    3481:	0f 84 d1 01 00 00    	je     3658 <cstr_trim+0x218>
    3487:	48 8d 35 76 3b 00 00 	lea    0x3b76(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    348e:	ba 01 00 00 00       	mov    $0x1,%edx
    3493:	48 8d 3d 9a 3b 00 00 	lea    0x3b9a(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    349a:	44 89 5c 24 08       	mov    %r11d,0x8(%rsp)
    349f:	44 89 04 24          	mov    %r8d,(%rsp)
    34a3:	e8 c8 34 00 00       	callq  6970 <__cstr_debug>
    34a8:	48 8b 75 00          	mov    0x0(%rbp),%rsi
    34ac:	44 8b 5c 24 08       	mov    0x8(%rsp),%r11d
    34b1:	44 8b 04 24          	mov    (%rsp),%r8d
    34b5:	49 81 fe ff 00 00 00 	cmp    $0xff,%r14
    34bc:	0f 8e 9b 01 00 00    	jle    365d <cstr_trim+0x21d>
    34c2:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    34c9:	19 c0                	sbb    %eax,%eax
    34cb:	83 c0 03             	add    $0x3,%eax
    34ce:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    34d5:	45 19 ff             	sbb    %r15d,%r15d
    34d8:	41 83 e7 fa          	and    $0xfffffffa,%r15d
    34dc:	41 83 c7 0c          	add    $0xc,%r15d
    34e0:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    34e7:	48 19 ff             	sbb    %rdi,%rdi
    34ea:	48 81 e7 00 f4 ff ff 	and    $0xfffffffffffff400,%rdi
    34f1:	48 81 c7 00 10 00 00 	add    $0x1000,%rdi
    34f8:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    34ff:	19 c9                	sbb    %ecx,%ecx
    3501:	81 e1 00 f4 ff ff    	and    $0xfffff400,%ecx
    3507:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    350d:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    3514:	45 19 ed             	sbb    %r13d,%r13d
    3517:	41 83 c5 03          	add    $0x3,%r13d
    351b:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    3522:	00 
    3523:	31 d2                	xor    %edx,%edx
    3525:	88 44 24 2f          	mov    %al,0x2f(%rsp)
    3529:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
    352d:	89 04 24             	mov    %eax,(%rsp)
    3530:	4c 89 f0             	mov    %r14,%rax
    3533:	48 f7 f7             	div    %rdi
    3536:	44 8d 60 01          	lea    0x1(%rax),%r12d
    353a:	41 0f af cc          	imul   %r12d,%ecx
    353e:	44 01 f9             	add    %r15d,%ecx
    3541:	80 fb 02             	cmp    $0x2,%bl
    3544:	0f 84 86 01 00 00    	je     36d0 <cstr_trim+0x290>
    354a:	80 fb 03             	cmp    $0x3,%bl
    354d:	0f 84 6d 01 00 00    	je     36c0 <cstr_trim+0x280>
    3553:	80 fb 01             	cmp    $0x1,%bl
    3556:	0f 84 94 01 00 00    	je     36f0 <cstr_trim+0x2b0>
    355c:	ba 01 00 00 00       	mov    $0x1,%edx
    3561:	48 8d 35 9c 3a 00 00 	lea    0x3a9c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    3568:	48 8d 3d b7 3a 00 00 	lea    0x3ab7(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    356f:	44 89 5c 24 1c       	mov    %r11d,0x1c(%rsp)
    3574:	89 4c 24 18          	mov    %ecx,0x18(%rsp)
    3578:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    357d:	e8 ee 33 00 00       	callq  6970 <__cstr_debug>
    3582:	44 8b 5c 24 1c       	mov    0x1c(%rsp),%r11d
    3587:	8b 4c 24 18          	mov    0x18(%rsp),%ecx
    358b:	44 8b 44 24 08       	mov    0x8(%rsp),%r8d
    3590:	45 39 e3             	cmp    %r12d,%r11d
    3593:	0f 84 9e 00 00 00    	je     3637 <cstr_trim+0x1f7>
    3599:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    359d:	48 63 d9             	movslq %ecx,%rbx
    35a0:	45 39 c5             	cmp    %r8d,%r13d
    35a3:	0f 84 e7 00 00 00    	je     3690 <cstr_trim+0x250>
    35a9:	48 89 de             	mov    %rbx,%rsi
    35ac:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    35b1:	e8 5a db ff ff       	callq  1110 <realloc@plt>
    35b6:	44 8b 44 24 08       	mov    0x8(%rsp),%r8d
    35bb:	48 85 c0             	test   %rax,%rax
    35be:	48 89 c1             	mov    %rax,%rcx
    35c1:	0f 84 a1 01 00 00    	je     3768 <cstr_trim+0x328>
    35c7:	4d 63 ff             	movslq %r15d,%r15
    35ca:	41 83 e8 01          	sub    $0x1,%r8d
    35ce:	49 01 cf             	add    %rcx,%r15
    35d1:	41 83 f8 03          	cmp    $0x3,%r8d
    35d5:	0f 87 25 01 00 00    	ja     3700 <cstr_trim+0x2c0>
    35db:	48 8d 05 4e 3b 00 00 	lea    0x3b4e(%rip),%rax        # 7130 <CSWTCH.19>
    35e2:	42 8b 04 80          	mov    (%rax,%r8,4),%eax
    35e6:	89 44 24 14          	mov    %eax,0x14(%rsp)
    35ea:	48 63 7c 24 14       	movslq 0x14(%rsp),%rdi
    35ef:	4c 89 f2             	mov    %r14,%rdx
    35f2:	4c 89 fe             	mov    %r15,%rsi
    35f5:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    35fa:	48 01 cf             	add    %rcx,%rdi
    35fd:	e8 1e db ff ff       	callq  1120 <memmove@plt>
    3602:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    3607:	c6 44 19 ff 00       	movb   $0x0,-0x1(%rcx,%rbx,1)
    360c:	41 83 fd 03          	cmp    $0x3,%r13d
    3610:	0f 84 3a 01 00 00    	je     3750 <cstr_trim+0x310>
    3616:	41 83 fd 01          	cmp    $0x1,%r13d
    361a:	0f 84 10 01 00 00    	je     3730 <cstr_trim+0x2f0>
    3620:	8b 04 24             	mov    (%rsp),%eax
    3623:	66 44 89 21          	mov    %r12w,(%rcx)
    3627:	66 44 89 71 02       	mov    %r14w,0x2(%rcx)
    362c:	c1 e8 18             	shr    $0x18,%eax
    362f:	66 89 41 04          	mov    %ax,0x4(%rcx)
    3633:	4c 89 7d 00          	mov    %r15,0x0(%rbp)
    3637:	48 83 c4 38          	add    $0x38,%rsp
    363b:	5b                   	pop    %rbx
    363c:	5d                   	pop    %rbp
    363d:	41 5c                	pop    %r12
    363f:	41 5d                	pop    %r13
    3641:	41 5e                	pop    %r14
    3643:	41 5f                	pop    %r15
    3645:	c3                   	retq   
    3646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    364d:	00 00 00 
    3650:	c3                   	retq   
    3651:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3658:	44 0f b6 76 fe       	movzbl -0x2(%rsi),%r14d
    365d:	b8 01 00 00 00       	mov    $0x1,%eax
    3662:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    3668:	bf 40 00 00 00       	mov    $0x40,%edi
    366d:	b9 40 00 00 00       	mov    $0x40,%ecx
    3672:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    3678:	e9 9e fe ff ff       	jmpq   351b <cstr_trim+0xdb>
    367d:	0f 1f 00             	nopl   (%rax)
    3680:	44 8b 76 f8          	mov    -0x8(%rsi),%r14d
    3684:	e9 2c fe ff ff       	jmpq   34b5 <cstr_trim+0x75>
    3689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3690:	48 89 de             	mov    %rbx,%rsi
    3693:	e8 78 da ff ff       	callq  1110 <realloc@plt>
    3698:	48 85 c0             	test   %rax,%rax
    369b:	0f 84 f8 00 00 00    	je     3799 <cstr_trim+0x359>
    36a1:	4d 63 ff             	movslq %r15d,%r15
    36a4:	c6 44 18 ff 00       	movb   $0x0,-0x1(%rax,%rbx,1)
    36a9:	4c 01 f8             	add    %r15,%rax
    36ac:	48 89 45 00          	mov    %rax,0x0(%rbp)
    36b0:	48 83 c4 38          	add    $0x38,%rsp
    36b4:	5b                   	pop    %rbx
    36b5:	5d                   	pop    %rbp
    36b6:	41 5c                	pop    %r12
    36b8:	41 5d                	pop    %r13
    36ba:	41 5e                	pop    %r14
    36bc:	41 5f                	pop    %r15
    36be:	c3                   	retq   
    36bf:	90                   	nop
    36c0:	44 8b 5e f4          	mov    -0xc(%rsi),%r11d
    36c4:	e9 c7 fe ff ff       	jmpq   3590 <cstr_trim+0x150>
    36c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    36d0:	44 0f b7 5e fa       	movzwl -0x6(%rsi),%r11d
    36d5:	e9 b6 fe ff ff       	jmpq   3590 <cstr_trim+0x150>
    36da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    36e0:	44 0f b7 76 fc       	movzwl -0x4(%rsi),%r14d
    36e5:	e9 cb fd ff ff       	jmpq   34b5 <cstr_trim+0x75>
    36ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    36f0:	44 0f b6 5e fd       	movzbl -0x3(%rsi),%r11d
    36f5:	e9 96 fe ff ff       	jmpq   3590 <cstr_trim+0x150>
    36fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3700:	ba 01 00 00 00       	mov    $0x1,%edx
    3705:	48 8d 35 f8 38 00 00 	lea    0x38f8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    370c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    3711:	48 8d 3d 00 39 00 00 	lea    0x3900(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    3718:	e8 53 32 00 00       	callq  6970 <__cstr_debug>
    371d:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    3722:	e9 c3 fe ff ff       	jmpq   35ea <cstr_trim+0x1aa>
    3727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    372e:	00 00 
    3730:	44 88 71 01          	mov    %r14b,0x1(%rcx)
    3734:	44 8b 34 24          	mov    (%rsp),%r14d
    3738:	44 88 21             	mov    %r12b,(%rcx)
    373b:	41 c1 ee 18          	shr    $0x18,%r14d
    373f:	44 88 71 02          	mov    %r14b,0x2(%rcx)
    3743:	e9 eb fe ff ff       	jmpq   3633 <cstr_trim+0x1f3>
    3748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    374f:	00 
    3750:	44 89 71 04          	mov    %r14d,0x4(%rcx)
    3754:	44 8b 34 24          	mov    (%rsp),%r14d
    3758:	44 89 21             	mov    %r12d,(%rcx)
    375b:	41 c1 ee 18          	shr    $0x18,%r14d
    375f:	44 89 71 08          	mov    %r14d,0x8(%rcx)
    3763:	e9 cb fe ff ff       	jmpq   3633 <cstr_trim+0x1f3>
    3768:	ba 02 00 00 00       	mov    $0x2,%edx
    376d:	48 8d 35 80 39 00 00 	lea    0x3980(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    3774:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
    3779:	48 8d 3d 92 39 00 00 	lea    0x3992(%rip),%rdi        # 7112 <_IO_stdin_used+0x112>
    3780:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3785:	e8 e6 31 00 00       	callq  6970 <__cstr_debug>
    378a:	44 8b 44 24 18       	mov    0x18(%rsp),%r8d
    378f:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    3794:	e9 2e fe ff ff       	jmpq   35c7 <cstr_trim+0x187>
    3799:	ba 02 00 00 00       	mov    $0x2,%edx
    379e:	48 8d 35 4f 39 00 00 	lea    0x394f(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    37a5:	48 8d 3d 66 39 00 00 	lea    0x3966(%rip),%rdi        # 7112 <_IO_stdin_used+0x112>
    37ac:	48 89 04 24          	mov    %rax,(%rsp)
    37b0:	e8 bb 31 00 00       	callq  6970 <__cstr_debug>
    37b5:	48 8b 04 24          	mov    (%rsp),%rax
    37b9:	e9 e3 fe ff ff       	jmpq   36a1 <cstr_trim+0x261>
    37be:	66 90                	xchg   %ax,%ax

00000000000037c0 <cstrcpy>:
    37c0:	48 39 f7             	cmp    %rsi,%rdi
    37c3:	74 1b                	je     37e0 <cstrcpy+0x20>
    37c5:	48 8b 06             	mov    (%rsi),%rax
    37c8:	48 39 07             	cmp    %rax,(%rdi)
    37cb:	74 13                	je     37e0 <cstrcpy+0x20>
    37cd:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    37d4:	48 89 07             	mov    %rax,(%rdi)
    37d7:	c3                   	retq   
    37d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    37df:	00 
    37e0:	31 c0                	xor    %eax,%eax
    37e2:	c3                   	retq   
    37e3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    37ea:	00 00 00 00 
    37ee:	66 90                	xchg   %ax,%ax

00000000000037f0 <cstrdcpy>:
    37f0:	48 39 37             	cmp    %rsi,(%rdi)
    37f3:	74 3b                	je     3830 <cstrdcpy+0x40>
    37f5:	55                   	push   %rbp
    37f6:	48 89 f5             	mov    %rsi,%rbp
    37f9:	53                   	push   %rbx
    37fa:	48 89 fb             	mov    %rdi,%rbx
    37fd:	48 89 f7             	mov    %rsi,%rdi
    3800:	48 83 ec 08          	sub    $0x8,%rsp
    3804:	e8 77 dc ff ff       	callq  1480 <__cstr_type>
    3809:	48 89 ef             	mov    %rbp,%rdi
    380c:	89 c6                	mov    %eax,%esi
    380e:	e8 7d dd ff ff       	callq  1590 <__cstr_relsiz>
    3813:	48 89 ee             	mov    %rbp,%rsi
    3816:	48 89 df             	mov    %rbx,%rdi
    3819:	b9 01 00 00 00       	mov    $0x1,%ecx
    381e:	48 89 c2             	mov    %rax,%rdx
    3821:	e8 6a ee ff ff       	callq  2690 <__cstr_resize_from>
    3826:	48 8b 03             	mov    (%rbx),%rax
    3829:	48 83 c4 08          	add    $0x8,%rsp
    382d:	5b                   	pop    %rbx
    382e:	5d                   	pop    %rbp
    382f:	c3                   	retq   
    3830:	31 c0                	xor    %eax,%eax
    3832:	c3                   	retq   
    3833:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    383a:	00 00 00 00 
    383e:	66 90                	xchg   %ax,%ax

0000000000003840 <cstrdgcpy>:
    3840:	48 39 37             	cmp    %rsi,(%rdi)
    3843:	74 3b                	je     3880 <cstrdgcpy+0x40>
    3845:	55                   	push   %rbp
    3846:	48 89 f5             	mov    %rsi,%rbp
    3849:	be 00 20 00 00       	mov    $0x2000,%esi
    384e:	53                   	push   %rbx
    384f:	48 89 fb             	mov    %rdi,%rbx
    3852:	48 89 ef             	mov    %rbp,%rdi
    3855:	48 83 ec 08          	sub    $0x8,%rsp
    3859:	e8 42 d8 ff ff       	callq  10a0 <strnlen@plt>
    385e:	48 89 ee             	mov    %rbp,%rsi
    3861:	48 89 df             	mov    %rbx,%rdi
    3864:	b9 01 00 00 00       	mov    $0x1,%ecx
    3869:	48 89 c2             	mov    %rax,%rdx
    386c:	e8 1f ee ff ff       	callq  2690 <__cstr_resize_from>
    3871:	48 8b 03             	mov    (%rbx),%rax
    3874:	48 83 c4 08          	add    $0x8,%rsp
    3878:	5b                   	pop    %rbx
    3879:	5d                   	pop    %rbp
    387a:	c3                   	retq   
    387b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3880:	31 c0                	xor    %eax,%eax
    3882:	c3                   	retq   
    3883:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    388a:	00 00 00 00 
    388e:	66 90                	xchg   %ax,%ax

0000000000003890 <cstrncpy>:
    3890:	48 39 f7             	cmp    %rsi,%rdi
    3893:	74 33                	je     38c8 <cstrncpy+0x38>
    3895:	53                   	push   %rbx
    3896:	48 89 fb             	mov    %rdi,%rbx
    3899:	48 8b 06             	mov    (%rsi),%rax
    389c:	48 39 07             	cmp    %rax,(%rdi)
    389f:	74 1f                	je     38c0 <cstrncpy+0x30>
    38a1:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    38a8:	b9 01 00 00 00       	mov    $0x1,%ecx
    38ad:	31 f6                	xor    %esi,%esi
    38af:	48 89 07             	mov    %rax,(%rdi)
    38b2:	e8 d9 ed ff ff       	callq  2690 <__cstr_resize_from>
    38b7:	48 8b 03             	mov    (%rbx),%rax
    38ba:	5b                   	pop    %rbx
    38bb:	c3                   	retq   
    38bc:	0f 1f 40 00          	nopl   0x0(%rax)
    38c0:	31 c0                	xor    %eax,%eax
    38c2:	5b                   	pop    %rbx
    38c3:	c3                   	retq   
    38c4:	0f 1f 40 00          	nopl   0x0(%rax)
    38c8:	31 c0                	xor    %eax,%eax
    38ca:	c3                   	retq   
    38cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000038d0 <cstrndcpy>:
    38d0:	48 39 37             	cmp    %rsi,(%rdi)
    38d3:	74 1b                	je     38f0 <cstrndcpy+0x20>
    38d5:	53                   	push   %rbx
    38d6:	b9 01 00 00 00       	mov    $0x1,%ecx
    38db:	48 89 fb             	mov    %rdi,%rbx
    38de:	e8 ad ed ff ff       	callq  2690 <__cstr_resize_from>
    38e3:	48 8b 03             	mov    (%rbx),%rax
    38e6:	5b                   	pop    %rbx
    38e7:	c3                   	retq   
    38e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    38ef:	00 
    38f0:	31 c0                	xor    %eax,%eax
    38f2:	c3                   	retq   
    38f3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    38fa:	00 00 00 00 
    38fe:	66 90                	xchg   %ax,%ax

0000000000003900 <cstrndgcpy>:
    3900:	48 3b 37             	cmp    (%rdi),%rsi
    3903:	74 1b                	je     3920 <cstrndgcpy+0x20>
    3905:	53                   	push   %rbx
    3906:	b9 01 00 00 00       	mov    $0x1,%ecx
    390b:	48 89 fb             	mov    %rdi,%rbx
    390e:	e8 7d ed ff ff       	callq  2690 <__cstr_resize_from>
    3913:	48 8b 03             	mov    (%rbx),%rax
    3916:	5b                   	pop    %rbx
    3917:	c3                   	retq   
    3918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    391f:	00 
    3920:	31 c0                	xor    %eax,%eax
    3922:	c3                   	retq   
    3923:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    392a:	00 00 00 00 
    392e:	66 90                	xchg   %ax,%ax

0000000000003930 <cstrcat>:
    3930:	41 55                	push   %r13
    3932:	41 54                	push   %r12
    3934:	55                   	push   %rbp
    3935:	48 89 f5             	mov    %rsi,%rbp
    3938:	53                   	push   %rbx
    3939:	48 89 fb             	mov    %rdi,%rbx
    393c:	48 83 ec 08          	sub    $0x8,%rsp
    3940:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    3944:	48 89 f7             	mov    %rsi,%rdi
    3947:	74 67                	je     39b0 <cstrcat+0x80>
    3949:	e8 32 db ff ff       	callq  1480 <__cstr_type>
    394e:	48 89 ef             	mov    %rbp,%rdi
    3951:	89 c6                	mov    %eax,%esi
    3953:	e8 38 dc ff ff       	callq  1590 <__cstr_relsiz>
    3958:	49 89 c4             	mov    %rax,%r12
    395b:	48 85 c0             	test   %rax,%rax
    395e:	75 10                	jne    3970 <cstrcat+0x40>
    3960:	48 8b 03             	mov    (%rbx),%rax
    3963:	48 83 c4 08          	add    $0x8,%rsp
    3967:	5b                   	pop    %rbx
    3968:	5d                   	pop    %rbp
    3969:	41 5c                	pop    %r12
    396b:	41 5d                	pop    %r13
    396d:	c3                   	retq   
    396e:	66 90                	xchg   %ax,%ax
    3970:	48 8b 3b             	mov    (%rbx),%rdi
    3973:	e8 08 db ff ff       	callq  1480 <__cstr_type>
    3978:	48 8b 3b             	mov    (%rbx),%rdi
    397b:	89 c6                	mov    %eax,%esi
    397d:	e8 0e dc ff ff       	callq  1590 <__cstr_relsiz>
    3982:	31 f6                	xor    %esi,%esi
    3984:	48 89 df             	mov    %rbx,%rdi
    3987:	b9 01 00 00 00       	mov    $0x1,%ecx
    398c:	49 8d 14 04          	lea    (%r12,%rax,1),%rdx
    3990:	49 89 c5             	mov    %rax,%r13
    3993:	e8 f8 ec ff ff       	callq  2690 <__cstr_resize_from>
    3998:	48 8b 3b             	mov    (%rbx),%rdi
    399b:	4c 89 e2             	mov    %r12,%rdx
    399e:	48 89 ee             	mov    %rbp,%rsi
    39a1:	4c 01 ef             	add    %r13,%rdi
    39a4:	e8 27 d7 ff ff       	callq  10d0 <memcpy@plt>
    39a9:	eb b5                	jmp    3960 <cstrcat+0x30>
    39ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    39b0:	e8 2b eb ff ff       	callq  24e0 <ncstrcpy>
    39b5:	48 89 03             	mov    %rax,(%rbx)
    39b8:	48 83 c4 08          	add    $0x8,%rsp
    39bc:	5b                   	pop    %rbx
    39bd:	5d                   	pop    %rbp
    39be:	41 5c                	pop    %r12
    39c0:	41 5d                	pop    %r13
    39c2:	c3                   	retq   
    39c3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    39ca:	00 00 00 00 
    39ce:	66 90                	xchg   %ax,%ax

00000000000039d0 <cstrgcat>:
    39d0:	41 56                	push   %r14
    39d2:	41 55                	push   %r13
    39d4:	49 89 f5             	mov    %rsi,%r13
    39d7:	41 54                	push   %r12
    39d9:	55                   	push   %rbp
    39da:	48 89 fd             	mov    %rdi,%rbp
    39dd:	53                   	push   %rbx
    39de:	4c 8b 27             	mov    (%rdi),%r12
    39e1:	4d 85 e4             	test   %r12,%r12
    39e4:	0f 84 d6 00 00 00    	je     3ac0 <cstrgcat+0xf0>
    39ea:	be 00 20 00 00       	mov    $0x2000,%esi
    39ef:	4c 89 ef             	mov    %r13,%rdi
    39f2:	e8 a9 d6 ff ff       	callq  10a0 <strnlen@plt>
    39f7:	48 89 c3             	mov    %rax,%rbx
    39fa:	48 85 c0             	test   %rax,%rax
    39fd:	75 11                	jne    3a10 <cstrgcat+0x40>
    39ff:	5b                   	pop    %rbx
    3a00:	4c 89 e0             	mov    %r12,%rax
    3a03:	5d                   	pop    %rbp
    3a04:	41 5c                	pop    %r12
    3a06:	41 5d                	pop    %r13
    3a08:	41 5e                	pop    %r14
    3a0a:	c3                   	retq   
    3a0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3a10:	4c 89 e7             	mov    %r12,%rdi
    3a13:	e8 68 da ff ff       	callq  1480 <__cstr_type>
    3a18:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    3a1c:	89 c6                	mov    %eax,%esi
    3a1e:	e8 6d db ff ff       	callq  1590 <__cstr_relsiz>
    3a23:	b9 01 00 00 00       	mov    $0x1,%ecx
    3a28:	31 f6                	xor    %esi,%esi
    3a2a:	48 89 ef             	mov    %rbp,%rdi
    3a2d:	4c 8d 34 03          	lea    (%rbx,%rax,1),%r14
    3a31:	49 89 c4             	mov    %rax,%r12
    3a34:	4c 89 f2             	mov    %r14,%rdx
    3a37:	e8 54 ec ff ff       	callq  2690 <__cstr_resize_from>
    3a3c:	48 8b 45 00          	mov    0x0(%rbp),%rax
    3a40:	4a 8d 0c 20          	lea    (%rax,%r12,1),%rcx
    3a44:	83 fb 08             	cmp    $0x8,%ebx
    3a47:	73 2f                	jae    3a78 <cstrgcat+0xa8>
    3a49:	f6 c3 04             	test   $0x4,%bl
    3a4c:	0f 85 86 00 00 00    	jne    3ad8 <cstrgcat+0x108>
    3a52:	85 db                	test   %ebx,%ebx
    3a54:	74 52                	je     3aa8 <cstrgcat+0xd8>
    3a56:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    3a5b:	88 01                	mov    %al,(%rcx)
    3a5d:	f6 c3 02             	test   $0x2,%bl
    3a60:	74 42                	je     3aa4 <cstrgcat+0xd4>
    3a62:	89 db                	mov    %ebx,%ebx
    3a64:	41 0f b7 44 1d fe    	movzwl -0x2(%r13,%rbx,1),%eax
    3a6a:	66 89 44 19 fe       	mov    %ax,-0x2(%rcx,%rbx,1)
    3a6f:	48 8b 45 00          	mov    0x0(%rbp),%rax
    3a73:	eb 33                	jmp    3aa8 <cstrgcat+0xd8>
    3a75:	0f 1f 00             	nopl   (%rax)
    3a78:	49 8b 45 00          	mov    0x0(%r13),%rax
    3a7c:	48 8d 79 08          	lea    0x8(%rcx),%rdi
    3a80:	4c 89 ee             	mov    %r13,%rsi
    3a83:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    3a87:	48 89 01             	mov    %rax,(%rcx)
    3a8a:	89 d8                	mov    %ebx,%eax
    3a8c:	49 8b 54 05 f8       	mov    -0x8(%r13,%rax,1),%rdx
    3a91:	48 89 54 01 f8       	mov    %rdx,-0x8(%rcx,%rax,1)
    3a96:	48 29 f9             	sub    %rdi,%rcx
    3a99:	48 29 ce             	sub    %rcx,%rsi
    3a9c:	01 d9                	add    %ebx,%ecx
    3a9e:	c1 e9 03             	shr    $0x3,%ecx
    3aa1:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    3aa4:	48 8b 45 00          	mov    0x0(%rbp),%rax
    3aa8:	42 c6 44 30 ff 00    	movb   $0x0,-0x1(%rax,%r14,1)
    3aae:	4c 8b 65 00          	mov    0x0(%rbp),%r12
    3ab2:	5b                   	pop    %rbx
    3ab3:	5d                   	pop    %rbp
    3ab4:	4c 89 e0             	mov    %r12,%rax
    3ab7:	41 5c                	pop    %r12
    3ab9:	41 5d                	pop    %r13
    3abb:	41 5e                	pop    %r14
    3abd:	c3                   	retq   
    3abe:	66 90                	xchg   %ax,%ax
    3ac0:	48 89 f7             	mov    %rsi,%rdi
    3ac3:	e8 78 e8 ff ff       	callq  2340 <ncstr_from>
    3ac8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3acc:	49 89 c4             	mov    %rax,%r12
    3acf:	e9 2b ff ff ff       	jmpq   39ff <cstrgcat+0x2f>
    3ad4:	0f 1f 40 00          	nopl   0x0(%rax)
    3ad8:	41 8b 45 00          	mov    0x0(%r13),%eax
    3adc:	89 db                	mov    %ebx,%ebx
    3ade:	89 01                	mov    %eax,(%rcx)
    3ae0:	41 8b 44 1d fc       	mov    -0x4(%r13,%rbx,1),%eax
    3ae5:	89 44 19 fc          	mov    %eax,-0x4(%rcx,%rbx,1)
    3ae9:	48 8b 45 00          	mov    0x0(%rbp),%rax
    3aed:	eb b9                	jmp    3aa8 <cstrgcat+0xd8>
    3aef:	90                   	nop

0000000000003af0 <cstrncat>:
    3af0:	41 56                	push   %r14
    3af2:	41 55                	push   %r13
    3af4:	49 89 f5             	mov    %rsi,%r13
    3af7:	be 00 20 00 00       	mov    $0x2000,%esi
    3afc:	41 54                	push   %r12
    3afe:	49 89 d4             	mov    %rdx,%r12
    3b01:	55                   	push   %rbp
    3b02:	53                   	push   %rbx
    3b03:	48 89 fb             	mov    %rdi,%rbx
    3b06:	4c 89 ef             	mov    %r13,%rdi
    3b09:	e8 92 d5 ff ff       	callq  10a0 <strnlen@plt>
    3b0e:	4c 39 e0             	cmp    %r12,%rax
    3b11:	4c 0f 46 e0          	cmovbe %rax,%r12
    3b15:	48 8b 03             	mov    (%rbx),%rax
    3b18:	4d 85 e4             	test   %r12,%r12
    3b1b:	74 7b                	je     3b98 <cstrncat+0xa8>
    3b1d:	48 85 c0             	test   %rax,%rax
    3b20:	0f 84 b2 00 00 00    	je     3bd8 <cstrncat+0xe8>
    3b26:	48 89 c7             	mov    %rax,%rdi
    3b29:	e8 52 d9 ff ff       	callq  1480 <__cstr_type>
    3b2e:	48 8b 3b             	mov    (%rbx),%rdi
    3b31:	89 c6                	mov    %eax,%esi
    3b33:	e8 58 da ff ff       	callq  1590 <__cstr_relsiz>
    3b38:	b9 01 00 00 00       	mov    $0x1,%ecx
    3b3d:	31 f6                	xor    %esi,%esi
    3b3f:	48 89 df             	mov    %rbx,%rdi
    3b42:	4d 8d 34 04          	lea    (%r12,%rax,1),%r14
    3b46:	48 89 c5             	mov    %rax,%rbp
    3b49:	4c 89 f2             	mov    %r14,%rdx
    3b4c:	e8 3f eb ff ff       	callq  2690 <__cstr_resize_from>
    3b51:	48 8b 03             	mov    (%rbx),%rax
    3b54:	48 8d 0c 28          	lea    (%rax,%rbp,1),%rcx
    3b58:	41 83 fc 08          	cmp    $0x8,%r12d
    3b5c:	72 4a                	jb     3ba8 <cstrncat+0xb8>
    3b5e:	49 8b 45 00          	mov    0x0(%r13),%rax
    3b62:	48 8d 79 08          	lea    0x8(%rcx),%rdi
    3b66:	4c 89 ee             	mov    %r13,%rsi
    3b69:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    3b6d:	48 89 01             	mov    %rax,(%rcx)
    3b70:	44 89 e0             	mov    %r12d,%eax
    3b73:	49 8b 54 05 f8       	mov    -0x8(%r13,%rax,1),%rdx
    3b78:	48 89 54 01 f8       	mov    %rdx,-0x8(%rcx,%rax,1)
    3b7d:	48 29 f9             	sub    %rdi,%rcx
    3b80:	48 29 ce             	sub    %rcx,%rsi
    3b83:	44 01 e1             	add    %r12d,%ecx
    3b86:	c1 e9 03             	shr    $0x3,%ecx
    3b89:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    3b8c:	48 8b 03             	mov    (%rbx),%rax
    3b8f:	42 c6 44 30 ff 00    	movb   $0x0,-0x1(%rax,%r14,1)
    3b95:	48 8b 03             	mov    (%rbx),%rax
    3b98:	5b                   	pop    %rbx
    3b99:	5d                   	pop    %rbp
    3b9a:	41 5c                	pop    %r12
    3b9c:	41 5d                	pop    %r13
    3b9e:	41 5e                	pop    %r14
    3ba0:	c3                   	retq   
    3ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3ba8:	41 f6 c4 04          	test   $0x4,%r12b
    3bac:	75 52                	jne    3c00 <cstrncat+0x110>
    3bae:	45 85 e4             	test   %r12d,%r12d
    3bb1:	74 dc                	je     3b8f <cstrncat+0x9f>
    3bb3:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    3bb8:	88 01                	mov    %al,(%rcx)
    3bba:	41 f6 c4 02          	test   $0x2,%r12b
    3bbe:	74 cc                	je     3b8c <cstrncat+0x9c>
    3bc0:	45 89 e4             	mov    %r12d,%r12d
    3bc3:	43 0f b7 44 25 fe    	movzwl -0x2(%r13,%r12,1),%eax
    3bc9:	66 42 89 44 21 fe    	mov    %ax,-0x2(%rcx,%r12,1)
    3bcf:	48 8b 03             	mov    (%rbx),%rax
    3bd2:	eb bb                	jmp    3b8f <cstrncat+0x9f>
    3bd4:	0f 1f 40 00          	nopl   0x0(%rax)
    3bd8:	4c 89 e2             	mov    %r12,%rdx
    3bdb:	48 89 df             	mov    %rbx,%rdi
    3bde:	b9 01 00 00 00       	mov    $0x1,%ecx
    3be3:	31 f6                	xor    %esi,%esi
    3be5:	e8 a6 ea ff ff       	callq  2690 <__cstr_resize_from>
    3bea:	48 8b 03             	mov    (%rbx),%rax
    3bed:	5b                   	pop    %rbx
    3bee:	5d                   	pop    %rbp
    3bef:	41 5c                	pop    %r12
    3bf1:	41 5d                	pop    %r13
    3bf3:	41 5e                	pop    %r14
    3bf5:	c3                   	retq   
    3bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3bfd:	00 00 00 
    3c00:	41 8b 45 00          	mov    0x0(%r13),%eax
    3c04:	45 89 e4             	mov    %r12d,%r12d
    3c07:	89 01                	mov    %eax,(%rcx)
    3c09:	43 8b 44 25 fc       	mov    -0x4(%r13,%r12,1),%eax
    3c0e:	42 89 44 21 fc       	mov    %eax,-0x4(%rcx,%r12,1)
    3c13:	48 8b 03             	mov    (%rbx),%rax
    3c16:	e9 74 ff ff ff       	jmpq   3b8f <cstrncat+0x9f>
    3c1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003c20 <cstrngcat>:
    3c20:	e9 cb fe ff ff       	jmpq   3af0 <cstrncat>
    3c25:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3c2c:	00 00 00 
    3c2f:	90                   	nop

0000000000003c30 <cstr_delim.part.0>:
    3c30:	41 57                	push   %r15
    3c32:	41 56                	push   %r14
    3c34:	41 55                	push   %r13
    3c36:	49 89 fd             	mov    %rdi,%r13
    3c39:	41 54                	push   %r12
    3c3b:	41 89 f4             	mov    %esi,%r12d
    3c3e:	55                   	push   %rbp
    3c3f:	89 d5                	mov    %edx,%ebp
    3c41:	53                   	push   %rbx
    3c42:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    3c49:	48 8d 5c 24 50       	lea    0x50(%rsp),%rbx
    3c4e:	89 4c 24 04          	mov    %ecx,0x4(%rsp)
    3c52:	49 89 df             	mov    %rbx,%r15
    3c55:	eb 1f                	jmp    3c76 <cstr_delim.part.0+0x46>
    3c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3c5e:	00 00 
    3c60:	4c 89 ff             	mov    %r15,%rdi
    3c63:	49 83 c7 01          	add    $0x1,%r15
    3c67:	e8 d4 d3 ff ff       	callq  1040 <puts@plt>
    3c6c:	45 38 67 ff          	cmp    %r12b,-0x1(%r15)
    3c70:	0f 84 ea 00 00 00    	je     3d60 <cstr_delim.part.0+0x130>
    3c76:	ba 40 00 00 00       	mov    $0x40,%edx
    3c7b:	4c 89 fe             	mov    %r15,%rsi
    3c7e:	89 ef                	mov    %ebp,%edi
    3c80:	e8 2b d4 ff ff       	callq  10b0 <read@plt>
    3c85:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    3c89:	75 d5                	jne    3c60 <cstr_delim.part.0+0x30>
    3c8b:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    3c8f:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    3c94:	e8 e7 d7 ff ff       	callq  1480 <__cstr_type>
    3c99:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    3c9d:	89 c6                	mov    %eax,%esi
    3c9f:	41 89 c6             	mov    %eax,%r14d
    3ca2:	e8 e9 d7 ff ff       	callq  1490 <__cstr_head>
    3ca7:	49 8b 75 00          	mov    0x0(%r13),%rsi
    3cab:	44 89 f2             	mov    %r14d,%edx
    3cae:	4c 89 ff             	mov    %r15,%rdi
    3cb1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3cb6:	e8 f5 dd ff ff       	callq  1ab0 <__cstr_getman_wp>
    3cbb:	8b 44 24 04          	mov    0x4(%rsp),%eax
    3cbf:	83 f8 01             	cmp    $0x1,%eax
    3cc2:	74 6c                	je     3d30 <cstr_delim.part.0+0x100>
    3cc4:	83 f8 02             	cmp    $0x2,%eax
    3cc7:	0f 85 94 01 00 00    	jne    3e61 <cstr_delim.part.0+0x231>
    3ccd:	48 63 44 24 48       	movslq 0x48(%rsp),%rax
    3cd2:	48 39 44 24 38       	cmp    %rax,0x38(%rsp)
    3cd7:	0f 88 8c 00 00 00    	js     3d69 <cstr_delim.part.0+0x139>
    3cdd:	4d 8b 75 00          	mov    0x0(%r13),%r14
    3ce1:	41 c6 06 00          	movb   $0x0,(%r14)
    3ce5:	eb 1b                	jmp    3d02 <cstr_delim.part.0+0xd2>
    3ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3cee:	00 00 
    3cf0:	48 89 df             	mov    %rbx,%rdi
    3cf3:	48 83 c3 01          	add    $0x1,%rbx
    3cf7:	e8 44 d3 ff ff       	callq  1040 <puts@plt>
    3cfc:	44 3a 63 ff          	cmp    -0x1(%rbx),%r12b
    3d00:	74 15                	je     3d17 <cstr_delim.part.0+0xe7>
    3d02:	ba 40 00 00 00       	mov    $0x40,%edx
    3d07:	48 89 de             	mov    %rbx,%rsi
    3d0a:	89 ef                	mov    %ebp,%edi
    3d0c:	e8 9f d3 ff ff       	callq  10b0 <read@plt>
    3d11:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    3d15:	75 d9                	jne    3cf0 <cstr_delim.part.0+0xc0>
    3d17:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    3d1e:	4c 89 f0             	mov    %r14,%rax
    3d21:	5b                   	pop    %rbx
    3d22:	5d                   	pop    %rbp
    3d23:	41 5c                	pop    %r12
    3d25:	41 5d                	pop    %r13
    3d27:	41 5e                	pop    %r14
    3d29:	41 5f                	pop    %r15
    3d2b:	c3                   	retq   
    3d2c:	0f 1f 40 00          	nopl   0x0(%rax)
    3d30:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    3d34:	44 89 f6             	mov    %r14d,%esi
    3d37:	e8 54 d8 ff ff       	callq  1590 <__cstr_relsiz>
    3d3c:	48 63 54 24 48       	movslq 0x48(%rsp),%rdx
    3d41:	49 89 c6             	mov    %rax,%r14
    3d44:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    3d49:	48 29 d0             	sub    %rdx,%rax
    3d4c:	49 39 c6             	cmp    %rax,%r14
    3d4f:	0f 8f 83 00 00 00    	jg     3dd8 <cstr_delim.part.0+0x1a8>
    3d55:	4d 03 75 00          	add    0x0(%r13),%r14
    3d59:	41 c6 06 00          	movb   $0x0,(%r14)
    3d5d:	eb a3                	jmp    3d02 <cstr_delim.part.0+0xd2>
    3d5f:	90                   	nop
    3d60:	41 c6 07 00          	movb   $0x0,(%r15)
    3d64:	e9 22 ff ff ff       	jmpq   3c8b <cstr_delim.part.0+0x5b>
    3d69:	31 f6                	xor    %esi,%esi
    3d6b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    3d70:	e8 4b dc ff ff       	callq  19c0 <__cstr_getman>
    3d75:	f3 0f 6f 54 24 10    	movdqu 0x10(%rsp),%xmm2
    3d7b:	f3 0f 6f 5c 24 20    	movdqu 0x20(%rsp),%xmm3
    3d81:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    3d86:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
    3d8b:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    3d90:	0f 11 5c 24 40       	movups %xmm3,0x40(%rsp)
    3d95:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
    3d9a:	44 89 44 24 04       	mov    %r8d,0x4(%rsp)
    3d9f:	e8 6c d3 ff ff       	callq  1110 <realloc@plt>
    3da4:	44 8b 44 24 04       	mov    0x4(%rsp),%r8d
    3da9:	48 85 c0             	test   %rax,%rax
    3dac:	49 89 c6             	mov    %rax,%r14
    3daf:	0f 84 8a 00 00 00    	je     3e3f <cstr_delim.part.0+0x20f>
    3db5:	4c 89 f7             	mov    %r14,%rdi
    3db8:	44 89 c2             	mov    %r8d,%edx
    3dbb:	4c 89 fe             	mov    %r15,%rsi
    3dbe:	e8 2d df ff ff       	callq  1cf0 <__cstr_set_header>
    3dc3:	49 89 45 00          	mov    %rax,0x0(%r13)
    3dc7:	49 89 c6             	mov    %rax,%r14
    3dca:	c6 00 00             	movb   $0x0,(%rax)
    3dcd:	e9 30 ff ff ff       	jmpq   3d02 <cstr_delim.part.0+0xd2>
    3dd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3dd8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    3ddd:	4c 89 f6             	mov    %r14,%rsi
    3de0:	e8 db db ff ff       	callq  19c0 <__cstr_getman>
    3de5:	f3 0f 6f 44 24 10    	movdqu 0x10(%rsp),%xmm0
    3deb:	f3 0f 6f 4c 24 20    	movdqu 0x20(%rsp),%xmm1
    3df1:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    3df6:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
    3dfb:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    3e00:	0f 11 4c 24 40       	movups %xmm1,0x40(%rsp)
    3e05:	44 8b 4c 24 4c       	mov    0x4c(%rsp),%r9d
    3e0a:	44 89 4c 24 04       	mov    %r9d,0x4(%rsp)
    3e0f:	e8 fc d2 ff ff       	callq  1110 <realloc@plt>
    3e14:	44 8b 4c 24 04       	mov    0x4(%rsp),%r9d
    3e19:	48 85 c0             	test   %rax,%rax
    3e1c:	49 89 c0             	mov    %rax,%r8
    3e1f:	74 4a                	je     3e6b <cstr_delim.part.0+0x23b>
    3e21:	44 89 ca             	mov    %r9d,%edx
    3e24:	4c 89 fe             	mov    %r15,%rsi
    3e27:	4c 89 c7             	mov    %r8,%rdi
    3e2a:	e8 c1 de ff ff       	callq  1cf0 <__cstr_set_header>
    3e2f:	49 01 c6             	add    %rax,%r14
    3e32:	49 89 45 00          	mov    %rax,0x0(%r13)
    3e36:	41 c6 06 00          	movb   $0x0,(%r14)
    3e3a:	e9 c3 fe ff ff       	jmpq   3d02 <cstr_delim.part.0+0xd2>
    3e3f:	ba 02 00 00 00       	mov    $0x2,%edx
    3e44:	48 8d 35 6f 32 00 00 	lea    0x326f(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    3e4b:	48 8d 3d ee 32 00 00 	lea    0x32ee(%rip),%rdi        # 7140 <CSWTCH.19+0x10>
    3e52:	e8 19 2b 00 00       	callq  6970 <__cstr_debug>
    3e57:	44 8b 44 24 04       	mov    0x4(%rsp),%r8d
    3e5c:	e9 54 ff ff ff       	jmpq   3db5 <cstr_delim.part.0+0x185>
    3e61:	bf 01 00 00 00       	mov    $0x1,%edi
    3e66:	e8 c5 d2 ff ff       	callq  1130 <exit@plt>
    3e6b:	ba 02 00 00 00       	mov    $0x2,%edx
    3e70:	48 8d 35 43 32 00 00 	lea    0x3243(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    3e77:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3e7c:	48 8d 3d bd 32 00 00 	lea    0x32bd(%rip),%rdi        # 7140 <CSWTCH.19+0x10>
    3e83:	e8 e8 2a 00 00       	callq  6970 <__cstr_debug>
    3e88:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    3e8d:	44 8b 4c 24 04       	mov    0x4(%rsp),%r9d
    3e92:	eb 8d                	jmp    3e21 <cstr_delim.part.0+0x1f1>
    3e94:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    3e9b:	00 00 00 00 
    3e9f:	90                   	nop

0000000000003ea0 <cstr_delim>:
    3ea0:	44 89 c9             	mov    %r9d,%ecx
    3ea3:	48 85 ff             	test   %rdi,%rdi
    3ea6:	74 0b                	je     3eb3 <cstr_delim+0x13>
    3ea8:	0f be f2             	movsbl %dl,%esi
    3eab:	44 89 c2             	mov    %r8d,%edx
    3eae:	e9 7d fd ff ff       	jmpq   3c30 <cstr_delim.part.0>
    3eb3:	31 c0                	xor    %eax,%eax
    3eb5:	c3                   	retq   
    3eb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3ebd:	00 00 00 

0000000000003ec0 <cstr_getline>:
    3ec0:	89 ca                	mov    %ecx,%edx
    3ec2:	44 89 c1             	mov    %r8d,%ecx
    3ec5:	48 85 ff             	test   %rdi,%rdi
    3ec8:	74 0e                	je     3ed8 <cstr_getline+0x18>
    3eca:	be 0a 00 00 00       	mov    $0xa,%esi
    3ecf:	e9 5c fd ff ff       	jmpq   3c30 <cstr_delim.part.0>
    3ed4:	0f 1f 40 00          	nopl   0x0(%rax)
    3ed8:	31 c0                	xor    %eax,%eax
    3eda:	c3                   	retq   
    3edb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003ee0 <cstr_fgets>:
    3ee0:	41 57                	push   %r15
    3ee2:	49 89 d7             	mov    %rdx,%r15
    3ee5:	41 56                	push   %r14
    3ee7:	45 31 f6             	xor    %r14d,%r14d
    3eea:	41 55                	push   %r13
    3eec:	41 54                	push   %r12
    3eee:	55                   	push   %rbp
    3eef:	89 cd                	mov    %ecx,%ebp
    3ef1:	53                   	push   %rbx
    3ef2:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
    3ef9:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    3efe:	48 8d 5c 24 70       	lea    0x70(%rsp),%rbx
    3f03:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    3f08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    3f0f:	00 
    3f10:	ba 40 00 00 00       	mov    $0x40,%edx
    3f15:	48 89 de             	mov    %rbx,%rsi
    3f18:	89 ef                	mov    %ebp,%edi
    3f1a:	41 83 c6 01          	add    $0x1,%r14d
    3f1e:	e8 8d d1 ff ff       	callq  10b0 <read@plt>
    3f23:	41 83 fe 40          	cmp    $0x40,%r14d
    3f27:	75 e7                	jne    3f10 <cstr_fgets+0x30>
    3f29:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
    3f2e:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    3f32:	e8 49 d5 ff ff       	callq  1480 <__cstr_type>
    3f37:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    3f3b:	4c 89 6c 24 08       	mov    %r13,0x8(%rsp)
    3f40:	89 c6                	mov    %eax,%esi
    3f42:	41 89 c4             	mov    %eax,%r12d
    3f45:	e8 46 d5 ff ff       	callq  1490 <__cstr_head>
    3f4a:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    3f4f:	44 89 e2             	mov    %r12d,%edx
    3f52:	49 89 c5             	mov    %rax,%r13
    3f55:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3f5a:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    3f5f:	48 8b 30             	mov    (%rax),%rsi
    3f62:	e8 49 db ff ff       	callq  1ab0 <__cstr_getman_wp>
    3f67:	8b 44 24 10          	mov    0x10(%rsp),%eax
    3f6b:	83 f8 01             	cmp    $0x1,%eax
    3f6e:	0f 84 0f 01 00 00    	je     4083 <cstr_fgets+0x1a3>
    3f74:	83 f8 02             	cmp    $0x2,%eax
    3f77:	0f 85 27 07 00 00    	jne    46a4 <cstr_fgets+0x7c4>
    3f7d:	48 63 54 24 68       	movslq 0x68(%rsp),%rdx
    3f82:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    3f87:	49 63 ce             	movslq %r14d,%rcx
    3f8a:	49 89 cc             	mov    %rcx,%r12
    3f8d:	48 29 d0             	sub    %rdx,%rax
    3f90:	48 39 c1             	cmp    %rax,%rcx
    3f93:	0f 8e a7 00 00 00    	jle    4040 <cstr_fgets+0x160>
    3f99:	48 89 ce             	mov    %rcx,%rsi
    3f9c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    3fa1:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    3fa6:	e8 15 da ff ff       	callq  19c0 <__cstr_getman>
    3fab:	f3 0f 6f 64 24 30    	movdqu 0x30(%rsp),%xmm4
    3fb1:	f3 0f 6f 6c 24 40    	movdqu 0x40(%rsp),%xmm5
    3fb7:	4c 89 ef             	mov    %r13,%rdi
    3fba:	0f 11 64 24 50       	movups %xmm4,0x50(%rsp)
    3fbf:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
    3fc4:	0f 11 6c 24 60       	movups %xmm5,0x60(%rsp)
    3fc9:	44 8b 74 24 6c       	mov    0x6c(%rsp),%r14d
    3fce:	e8 3d d1 ff ff       	callq  1110 <realloc@plt>
    3fd3:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    3fd8:	48 85 c0             	test   %rax,%rax
    3fdb:	49 89 c5             	mov    %rax,%r13
    3fde:	0f 84 2f 06 00 00    	je     4613 <cstr_fgets+0x733>
    3fe4:	48 63 44 24 68       	movslq 0x68(%rsp),%rax
    3fe9:	4c 01 e8             	add    %r13,%rax
    3fec:	83 f9 08             	cmp    $0x8,%ecx
    3fef:	0f 83 85 03 00 00    	jae    437a <cstr_fgets+0x49a>
    3ff5:	f6 c1 04             	test   $0x4,%cl
    3ff8:	0f 85 c5 05 00 00    	jne    45c3 <cstr_fgets+0x6e3>
    3ffe:	85 c9                	test   %ecx,%ecx
    4000:	74 0e                	je     4010 <cstr_fgets+0x130>
    4002:	0f b6 13             	movzbl (%rbx),%edx
    4005:	88 10                	mov    %dl,(%rax)
    4007:	f6 c1 02             	test   $0x2,%cl
    400a:	0f 85 a2 05 00 00    	jne    45b2 <cstr_fgets+0x6d2>
    4010:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    4015:	44 89 f2             	mov    %r14d,%edx
    4018:	4c 89 ef             	mov    %r13,%rdi
    401b:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    4020:	e8 cb dc ff ff       	callq  1cf0 <__cstr_set_header>
    4025:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    402a:	48 89 c2             	mov    %rax,%rdx
    402d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4032:	48 89 10             	mov    %rdx,(%rax)
    4035:	48 01 ca             	add    %rcx,%rdx
    4038:	c6 02 00             	movb   $0x0,(%rdx)
    403b:	e9 7a 01 00 00       	jmpq   41ba <cstr_fgets+0x2da>
    4040:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4045:	48 8b 10             	mov    (%rax),%rdx
    4048:	41 83 fe 08          	cmp    $0x8,%r14d
    404c:	0f 83 76 03 00 00    	jae    43c8 <cstr_fgets+0x4e8>
    4052:	41 f6 c6 04          	test   $0x4,%r14b
    4056:	0f 85 3a 05 00 00    	jne    4596 <cstr_fgets+0x6b6>
    405c:	45 85 f6             	test   %r14d,%r14d
    405f:	74 17                	je     4078 <cstr_fgets+0x198>
    4061:	0f b6 03             	movzbl (%rbx),%eax
    4064:	88 02                	mov    %al,(%rdx)
    4066:	41 f6 c6 02          	test   $0x2,%r14b
    406a:	0f 85 0c 05 00 00    	jne    457c <cstr_fgets+0x69c>
    4070:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4075:	48 8b 10             	mov    (%rax),%rdx
    4078:	48 01 ca             	add    %rcx,%rdx
    407b:	c6 02 00             	movb   $0x0,(%rdx)
    407e:	e9 37 01 00 00       	jmpq   41ba <cstr_fgets+0x2da>
    4083:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4088:	44 89 e6             	mov    %r12d,%esi
    408b:	48 8b 38             	mov    (%rax),%rdi
    408e:	e8 fd d4 ff ff       	callq  1590 <__cstr_relsiz>
    4093:	49 63 ce             	movslq %r14d,%rcx
    4096:	48 63 54 24 68       	movslq 0x68(%rsp),%rdx
    409b:	4c 8d 04 01          	lea    (%rcx,%rax,1),%r8
    409f:	49 89 c1             	mov    %rax,%r9
    40a2:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    40a7:	4d 89 c4             	mov    %r8,%r12
    40aa:	48 29 d0             	sub    %rdx,%rax
    40ad:	49 39 c0             	cmp    %rax,%r8
    40b0:	0f 8e c5 00 00 00    	jle    417b <cstr_fgets+0x29b>
    40b6:	4c 89 c6             	mov    %r8,%rsi
    40b9:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    40be:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
    40c3:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    40c8:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    40cd:	e8 ee d8 ff ff       	callq  19c0 <__cstr_getman>
    40d2:	f3 0f 6f 54 24 30    	movdqu 0x30(%rsp),%xmm2
    40d8:	f3 0f 6f 5c 24 40    	movdqu 0x40(%rsp),%xmm3
    40de:	4c 89 ef             	mov    %r13,%rdi
    40e1:	0f 11 54 24 50       	movups %xmm2,0x50(%rsp)
    40e6:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
    40eb:	0f 11 5c 24 60       	movups %xmm3,0x60(%rsp)
    40f0:	44 8b 74 24 6c       	mov    0x6c(%rsp),%r14d
    40f5:	e8 16 d0 ff ff       	callq  1110 <realloc@plt>
    40fa:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    40ff:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    4104:	48 85 c0             	test   %rax,%rax
    4107:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    410c:	49 89 c5             	mov    %rax,%r13
    410f:	0f 84 59 05 00 00    	je     466e <cstr_fgets+0x78e>
    4115:	48 63 44 24 68       	movslq 0x68(%rsp),%rax
    411a:	4c 01 c8             	add    %r9,%rax
    411d:	4c 01 e8             	add    %r13,%rax
    4120:	83 f9 08             	cmp    $0x8,%ecx
    4123:	0f 83 03 02 00 00    	jae    432c <cstr_fgets+0x44c>
    4129:	f6 c1 04             	test   $0x4,%cl
    412c:	0f 85 b5 04 00 00    	jne    45e7 <cstr_fgets+0x707>
    4132:	85 c9                	test   %ecx,%ecx
    4134:	74 0e                	je     4144 <cstr_fgets+0x264>
    4136:	0f b6 13             	movzbl (%rbx),%edx
    4139:	88 10                	mov    %dl,(%rax)
    413b:	f6 c1 02             	test   $0x2,%cl
    413e:	0f 85 92 04 00 00    	jne    45d6 <cstr_fgets+0x6f6>
    4144:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    4149:	44 89 f2             	mov    %r14d,%edx
    414c:	4c 89 ef             	mov    %r13,%rdi
    414f:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    4154:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    4159:	e8 92 db ff ff       	callq  1cf0 <__cstr_set_header>
    415e:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    4163:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    4168:	48 89 c2             	mov    %rax,%rdx
    416b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4170:	48 89 10             	mov    %rdx,(%rax)
    4173:	4c 01 c2             	add    %r8,%rdx
    4176:	c6 02 00             	movb   $0x0,(%rdx)
    4179:	eb 3f                	jmp    41ba <cstr_fgets+0x2da>
    417b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4180:	48 8b 10             	mov    (%rax),%rdx
    4183:	4a 8d 04 0a          	lea    (%rdx,%r9,1),%rax
    4187:	41 83 fe 08          	cmp    $0x8,%r14d
    418b:	0f 83 4d 01 00 00    	jae    42de <cstr_fgets+0x3fe>
    4191:	f6 c1 04             	test   $0x4,%cl
    4194:	0f 85 c7 03 00 00    	jne    4561 <cstr_fgets+0x681>
    419a:	85 c9                	test   %ecx,%ecx
    419c:	74 16                	je     41b4 <cstr_fgets+0x2d4>
    419e:	0f b6 13             	movzbl (%rbx),%edx
    41a1:	88 10                	mov    %dl,(%rax)
    41a3:	f6 c1 02             	test   $0x2,%cl
    41a6:	0f 85 4e 04 00 00    	jne    45fa <cstr_fgets+0x71a>
    41ac:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    41b1:	48 8b 10             	mov    (%rax),%rdx
    41b4:	4c 01 c2             	add    %r8,%rdx
    41b7:	c6 02 00             	movb   $0x0,(%rdx)
    41ba:	4d 85 ff             	test   %r15,%r15
    41bd:	74 03                	je     41c2 <cstr_fgets+0x2e2>
    41bf:	49 01 0f             	add    %rcx,(%r15)
    41c2:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
    41c7:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    41cc:	0f 1f 40 00          	nopl   0x0(%rax)
    41d0:	45 31 f6             	xor    %r14d,%r14d
    41d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    41d8:	ba 40 00 00 00       	mov    $0x40,%edx
    41dd:	48 89 de             	mov    %rbx,%rsi
    41e0:	89 ef                	mov    %ebp,%edi
    41e2:	41 83 c6 01          	add    $0x1,%r14d
    41e6:	e8 c5 ce ff ff       	callq  10b0 <read@plt>
    41eb:	41 83 fe 40          	cmp    $0x40,%r14d
    41ef:	75 e7                	jne    41d8 <cstr_fgets+0x2f8>
    41f1:	48 63 54 24 68       	movslq 0x68(%rsp),%rdx
    41f6:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    41fb:	4d 8d 44 24 40       	lea    0x40(%r12),%r8
    4200:	b9 40 00 00 00       	mov    $0x40,%ecx
    4205:	4d 89 c6             	mov    %r8,%r14
    4208:	48 29 d0             	sub    %rdx,%rax
    420b:	49 39 c0             	cmp    %rax,%r8
    420e:	0f 8c 0c 02 00 00    	jl     4420 <cstr_fgets+0x540>
    4214:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    4219:	4c 89 c6             	mov    %r8,%rsi
    421c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    4221:	e8 9a d7 ff ff       	callq  19c0 <__cstr_getman>
    4226:	f3 0f 6f 44 24 30    	movdqu 0x30(%rsp),%xmm0
    422c:	f3 0f 6f 4c 24 40    	movdqu 0x40(%rsp),%xmm1
    4232:	4c 89 ef             	mov    %r13,%rdi
    4235:	0f 11 44 24 50       	movups %xmm0,0x50(%rsp)
    423a:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
    423f:	0f 11 4c 24 60       	movups %xmm1,0x60(%rsp)
    4244:	44 8b 4c 24 6c       	mov    0x6c(%rsp),%r9d
    4249:	44 89 4c 24 10       	mov    %r9d,0x10(%rsp)
    424e:	e8 bd ce ff ff       	callq  1110 <realloc@plt>
    4253:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
    4258:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    425d:	b9 40 00 00 00       	mov    $0x40,%ecx
    4262:	48 85 c0             	test   %rax,%rax
    4265:	49 89 c5             	mov    %rax,%r13
    4268:	0f 84 ca 03 00 00    	je     4638 <cstr_fgets+0x758>
    426e:	48 63 44 24 68       	movslq 0x68(%rsp),%rax
    4273:	49 01 c4             	add    %rax,%r12
    4276:	89 c8                	mov    %ecx,%eax
    4278:	4d 01 ec             	add    %r13,%r12
    427b:	83 f9 08             	cmp    $0x8,%ecx
    427e:	0f 83 34 02 00 00    	jae    44b8 <cstr_fgets+0x5d8>
    4284:	83 e1 04             	and    $0x4,%ecx
    4287:	0f 85 7c 02 00 00    	jne    4509 <cstr_fgets+0x629>
    428d:	85 c0                	test   %eax,%eax
    428f:	74 0f                	je     42a0 <cstr_fgets+0x3c0>
    4291:	0f b6 13             	movzbl (%rbx),%edx
    4294:	41 88 14 24          	mov    %dl,(%r12)
    4298:	a8 02                	test   $0x2,%al
    429a:	0f 85 b1 02 00 00    	jne    4551 <cstr_fgets+0x671>
    42a0:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    42a5:	44 89 ca             	mov    %r9d,%edx
    42a8:	4c 89 ef             	mov    %r13,%rdi
    42ab:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    42b0:	e8 3b da ff ff       	callq  1cf0 <__cstr_set_header>
    42b5:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    42ba:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    42bf:	49 01 c6             	add    %rax,%r14
    42c2:	48 89 01             	mov    %rax,(%rcx)
    42c5:	b9 40 00 00 00       	mov    $0x40,%ecx
    42ca:	41 c6 06 00          	movb   $0x0,(%r14)
    42ce:	4d 85 ff             	test   %r15,%r15
    42d1:	74 03                	je     42d6 <cstr_fgets+0x3f6>
    42d3:	49 01 0f             	add    %rcx,(%r15)
    42d6:	4d 89 c4             	mov    %r8,%r12
    42d9:	e9 f2 fe ff ff       	jmpq   41d0 <cstr_fgets+0x2f0>
    42de:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
    42e3:	48 8d 78 08          	lea    0x8(%rax),%rdi
    42e7:	49 89 d9             	mov    %rbx,%r9
    42ea:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    42ee:	48 89 10             	mov    %rdx,(%rax)
    42f1:	89 ca                	mov    %ecx,%edx
    42f3:	48 8b 74 13 f8       	mov    -0x8(%rbx,%rdx,1),%rsi
    42f8:	48 89 74 10 f8       	mov    %rsi,-0x8(%rax,%rdx,1)
    42fd:	48 29 f8             	sub    %rdi,%rax
    4300:	49 29 c1             	sub    %rax,%r9
    4303:	01 c8                	add    %ecx,%eax
    4305:	83 e0 f8             	and    $0xfffffff8,%eax
    4308:	83 f8 08             	cmp    $0x8,%eax
    430b:	0f 82 9b fe ff ff    	jb     41ac <cstr_fgets+0x2cc>
    4311:	83 e0 f8             	and    $0xfffffff8,%eax
    4314:	31 d2                	xor    %edx,%edx
    4316:	89 d6                	mov    %edx,%esi
    4318:	83 c2 08             	add    $0x8,%edx
    431b:	4d 8b 14 31          	mov    (%r9,%rsi,1),%r10
    431f:	4c 89 14 37          	mov    %r10,(%rdi,%rsi,1)
    4323:	39 c2                	cmp    %eax,%edx
    4325:	72 ef                	jb     4316 <cstr_fgets+0x436>
    4327:	e9 80 fe ff ff       	jmpq   41ac <cstr_fgets+0x2cc>
    432c:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
    4331:	48 8d 78 08          	lea    0x8(%rax),%rdi
    4335:	49 89 d9             	mov    %rbx,%r9
    4338:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    433c:	48 89 10             	mov    %rdx,(%rax)
    433f:	89 ca                	mov    %ecx,%edx
    4341:	48 8b 74 13 f8       	mov    -0x8(%rbx,%rdx,1),%rsi
    4346:	48 89 74 10 f8       	mov    %rsi,-0x8(%rax,%rdx,1)
    434b:	48 29 f8             	sub    %rdi,%rax
    434e:	49 29 c1             	sub    %rax,%r9
    4351:	01 c8                	add    %ecx,%eax
    4353:	83 e0 f8             	and    $0xfffffff8,%eax
    4356:	83 f8 08             	cmp    $0x8,%eax
    4359:	0f 82 e5 fd ff ff    	jb     4144 <cstr_fgets+0x264>
    435f:	83 e0 f8             	and    $0xfffffff8,%eax
    4362:	31 d2                	xor    %edx,%edx
    4364:	89 d6                	mov    %edx,%esi
    4366:	83 c2 08             	add    $0x8,%edx
    4369:	4d 8b 14 31          	mov    (%r9,%rsi,1),%r10
    436d:	4c 89 14 37          	mov    %r10,(%rdi,%rsi,1)
    4371:	39 c2                	cmp    %eax,%edx
    4373:	72 ef                	jb     4364 <cstr_fgets+0x484>
    4375:	e9 ca fd ff ff       	jmpq   4144 <cstr_fgets+0x264>
    437a:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
    437f:	48 8d 78 08          	lea    0x8(%rax),%rdi
    4383:	49 89 d9             	mov    %rbx,%r9
    4386:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    438a:	48 89 10             	mov    %rdx,(%rax)
    438d:	89 ca                	mov    %ecx,%edx
    438f:	48 8b 74 13 f8       	mov    -0x8(%rbx,%rdx,1),%rsi
    4394:	48 89 74 10 f8       	mov    %rsi,-0x8(%rax,%rdx,1)
    4399:	48 29 f8             	sub    %rdi,%rax
    439c:	49 29 c1             	sub    %rax,%r9
    439f:	01 c8                	add    %ecx,%eax
    43a1:	83 e0 f8             	and    $0xfffffff8,%eax
    43a4:	83 f8 08             	cmp    $0x8,%eax
    43a7:	0f 82 63 fc ff ff    	jb     4010 <cstr_fgets+0x130>
    43ad:	83 e0 f8             	and    $0xfffffff8,%eax
    43b0:	31 d2                	xor    %edx,%edx
    43b2:	89 d6                	mov    %edx,%esi
    43b4:	83 c2 08             	add    $0x8,%edx
    43b7:	4d 8b 04 31          	mov    (%r9,%rsi,1),%r8
    43bb:	4c 89 04 37          	mov    %r8,(%rdi,%rsi,1)
    43bf:	39 c2                	cmp    %eax,%edx
    43c1:	72 ef                	jb     43b2 <cstr_fgets+0x4d2>
    43c3:	e9 48 fc ff ff       	jmpq   4010 <cstr_fgets+0x130>
    43c8:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
    43cd:	4c 8d 42 08          	lea    0x8(%rdx),%r8
    43d1:	49 89 d9             	mov    %rbx,%r9
    43d4:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
    43d8:	48 89 02             	mov    %rax,(%rdx)
    43db:	44 89 f0             	mov    %r14d,%eax
    43de:	48 8b 74 03 f8       	mov    -0x8(%rbx,%rax,1),%rsi
    43e3:	48 89 74 02 f8       	mov    %rsi,-0x8(%rdx,%rax,1)
    43e8:	48 89 d0             	mov    %rdx,%rax
    43eb:	4c 29 c0             	sub    %r8,%rax
    43ee:	49 29 c1             	sub    %rax,%r9
    43f1:	44 01 f0             	add    %r14d,%eax
    43f4:	83 e0 f8             	and    $0xfffffff8,%eax
    43f7:	83 f8 08             	cmp    $0x8,%eax
    43fa:	0f 82 70 fc ff ff    	jb     4070 <cstr_fgets+0x190>
    4400:	83 e0 f8             	and    $0xfffffff8,%eax
    4403:	31 d2                	xor    %edx,%edx
    4405:	89 d6                	mov    %edx,%esi
    4407:	83 c2 08             	add    $0x8,%edx
    440a:	49 8b 3c 31          	mov    (%r9,%rsi,1),%rdi
    440e:	49 89 3c 30          	mov    %rdi,(%r8,%rsi,1)
    4412:	39 c2                	cmp    %eax,%edx
    4414:	72 ef                	jb     4405 <cstr_fgets+0x525>
    4416:	e9 55 fc ff ff       	jmpq   4070 <cstr_fgets+0x190>
    441b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4420:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4425:	48 8b 10             	mov    (%rax),%rdx
    4428:	89 c8                	mov    %ecx,%eax
    442a:	49 01 d4             	add    %rdx,%r12
    442d:	83 f9 08             	cmp    $0x8,%ecx
    4430:	73 36                	jae    4468 <cstr_fgets+0x588>
    4432:	f6 c1 04             	test   $0x4,%cl
    4435:	0f 85 e2 00 00 00    	jne    451d <cstr_fgets+0x63d>
    443b:	85 c0                	test   %eax,%eax
    443d:	74 17                	je     4456 <cstr_fgets+0x576>
    443f:	0f b6 13             	movzbl (%rbx),%edx
    4442:	41 88 14 24          	mov    %dl,(%r12)
    4446:	a8 02                	test   $0x2,%al
    4448:	0f 85 eb 00 00 00    	jne    4539 <cstr_fgets+0x659>
    444e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4453:	48 8b 10             	mov    (%rax),%rdx
    4456:	49 01 d6             	add    %rdx,%r14
    4459:	41 c6 06 00          	movb   $0x0,(%r14)
    445d:	e9 6c fe ff ff       	jmpq   42ce <cstr_fgets+0x3ee>
    4462:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4468:	48 8b 03             	mov    (%rbx),%rax
    446b:	49 8d 7c 24 08       	lea    0x8(%r12),%rdi
    4470:	49 89 d9             	mov    %rbx,%r9
    4473:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    4477:	49 89 04 24          	mov    %rax,(%r12)
    447b:	89 c8                	mov    %ecx,%eax
    447d:	48 8b 54 03 f8       	mov    -0x8(%rbx,%rax,1),%rdx
    4482:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
    4487:	49 29 fc             	sub    %rdi,%r12
    448a:	42 8d 04 21          	lea    (%rcx,%r12,1),%eax
    448e:	4d 29 e1             	sub    %r12,%r9
    4491:	83 e0 f8             	and    $0xfffffff8,%eax
    4494:	83 f8 08             	cmp    $0x8,%eax
    4497:	72 b5                	jb     444e <cstr_fgets+0x56e>
    4499:	83 e0 f8             	and    $0xfffffff8,%eax
    449c:	31 d2                	xor    %edx,%edx
    449e:	89 d6                	mov    %edx,%esi
    44a0:	83 c2 08             	add    $0x8,%edx
    44a3:	4d 8b 14 31          	mov    (%r9,%rsi,1),%r10
    44a7:	4c 89 14 37          	mov    %r10,(%rdi,%rsi,1)
    44ab:	39 c2                	cmp    %eax,%edx
    44ad:	72 ef                	jb     449e <cstr_fgets+0x5be>
    44af:	eb 9d                	jmp    444e <cstr_fgets+0x56e>
    44b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    44b8:	48 8b 03             	mov    (%rbx),%rax
    44bb:	49 8d 74 24 08       	lea    0x8(%r12),%rsi
    44c0:	48 89 df             	mov    %rbx,%rdi
    44c3:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
    44c7:	49 89 04 24          	mov    %rax,(%r12)
    44cb:	89 c8                	mov    %ecx,%eax
    44cd:	48 8b 54 03 f8       	mov    -0x8(%rbx,%rax,1),%rdx
    44d2:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
    44d7:	49 29 f4             	sub    %rsi,%r12
    44da:	42 8d 04 21          	lea    (%rcx,%r12,1),%eax
    44de:	4c 29 e7             	sub    %r12,%rdi
    44e1:	83 e0 f8             	and    $0xfffffff8,%eax
    44e4:	83 f8 08             	cmp    $0x8,%eax
    44e7:	0f 82 b3 fd ff ff    	jb     42a0 <cstr_fgets+0x3c0>
    44ed:	83 e0 f8             	and    $0xfffffff8,%eax
    44f0:	31 d2                	xor    %edx,%edx
    44f2:	41 89 d2             	mov    %edx,%r10d
    44f5:	83 c2 08             	add    $0x8,%edx
    44f8:	4e 8b 1c 17          	mov    (%rdi,%r10,1),%r11
    44fc:	4e 89 1c 16          	mov    %r11,(%rsi,%r10,1)
    4500:	39 c2                	cmp    %eax,%edx
    4502:	72 ee                	jb     44f2 <cstr_fgets+0x612>
    4504:	e9 97 fd ff ff       	jmpq   42a0 <cstr_fgets+0x3c0>
    4509:	8b 13                	mov    (%rbx),%edx
    450b:	41 89 14 24          	mov    %edx,(%r12)
    450f:	8b 54 03 fc          	mov    -0x4(%rbx,%rax,1),%edx
    4513:	41 89 54 04 fc       	mov    %edx,-0x4(%r12,%rax,1)
    4518:	e9 83 fd ff ff       	jmpq   42a0 <cstr_fgets+0x3c0>
    451d:	8b 13                	mov    (%rbx),%edx
    451f:	41 89 14 24          	mov    %edx,(%r12)
    4523:	8b 54 03 fc          	mov    -0x4(%rbx,%rax,1),%edx
    4527:	41 89 54 04 fc       	mov    %edx,-0x4(%r12,%rax,1)
    452c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4531:	48 8b 10             	mov    (%rax),%rdx
    4534:	e9 1d ff ff ff       	jmpq   4456 <cstr_fgets+0x576>
    4539:	0f b7 54 03 fe       	movzwl -0x2(%rbx,%rax,1),%edx
    453e:	66 41 89 54 04 fe    	mov    %dx,-0x2(%r12,%rax,1)
    4544:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4549:	48 8b 10             	mov    (%rax),%rdx
    454c:	e9 05 ff ff ff       	jmpq   4456 <cstr_fgets+0x576>
    4551:	0f b7 54 03 fe       	movzwl -0x2(%rbx,%rax,1),%edx
    4556:	66 41 89 54 04 fe    	mov    %dx,-0x2(%r12,%rax,1)
    455c:	e9 3f fd ff ff       	jmpq   42a0 <cstr_fgets+0x3c0>
    4561:	8b 13                	mov    (%rbx),%edx
    4563:	89 10                	mov    %edx,(%rax)
    4565:	89 ca                	mov    %ecx,%edx
    4567:	8b 74 13 fc          	mov    -0x4(%rbx,%rdx,1),%esi
    456b:	89 74 10 fc          	mov    %esi,-0x4(%rax,%rdx,1)
    456f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4574:	48 8b 10             	mov    (%rax),%rdx
    4577:	e9 38 fc ff ff       	jmpq   41b4 <cstr_fgets+0x2d4>
    457c:	44 89 f0             	mov    %r14d,%eax
    457f:	0f b7 74 03 fe       	movzwl -0x2(%rbx,%rax,1),%esi
    4584:	66 89 74 02 fe       	mov    %si,-0x2(%rdx,%rax,1)
    4589:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    458e:	48 8b 10             	mov    (%rax),%rdx
    4591:	e9 e2 fa ff ff       	jmpq   4078 <cstr_fgets+0x198>
    4596:	8b 03                	mov    (%rbx),%eax
    4598:	89 02                	mov    %eax,(%rdx)
    459a:	44 89 f0             	mov    %r14d,%eax
    459d:	8b 74 03 fc          	mov    -0x4(%rbx,%rax,1),%esi
    45a1:	89 74 02 fc          	mov    %esi,-0x4(%rdx,%rax,1)
    45a5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    45aa:	48 8b 10             	mov    (%rax),%rdx
    45ad:	e9 c6 fa ff ff       	jmpq   4078 <cstr_fgets+0x198>
    45b2:	89 ca                	mov    %ecx,%edx
    45b4:	0f b7 74 13 fe       	movzwl -0x2(%rbx,%rdx,1),%esi
    45b9:	66 89 74 10 fe       	mov    %si,-0x2(%rax,%rdx,1)
    45be:	e9 4d fa ff ff       	jmpq   4010 <cstr_fgets+0x130>
    45c3:	8b 13                	mov    (%rbx),%edx
    45c5:	89 10                	mov    %edx,(%rax)
    45c7:	89 ca                	mov    %ecx,%edx
    45c9:	8b 74 13 fc          	mov    -0x4(%rbx,%rdx,1),%esi
    45cd:	89 74 10 fc          	mov    %esi,-0x4(%rax,%rdx,1)
    45d1:	e9 3a fa ff ff       	jmpq   4010 <cstr_fgets+0x130>
    45d6:	89 ca                	mov    %ecx,%edx
    45d8:	0f b7 74 13 fe       	movzwl -0x2(%rbx,%rdx,1),%esi
    45dd:	66 89 74 10 fe       	mov    %si,-0x2(%rax,%rdx,1)
    45e2:	e9 5d fb ff ff       	jmpq   4144 <cstr_fgets+0x264>
    45e7:	8b 13                	mov    (%rbx),%edx
    45e9:	89 10                	mov    %edx,(%rax)
    45eb:	89 ca                	mov    %ecx,%edx
    45ed:	8b 74 13 fc          	mov    -0x4(%rbx,%rdx,1),%esi
    45f1:	89 74 10 fc          	mov    %esi,-0x4(%rax,%rdx,1)
    45f5:	e9 4a fb ff ff       	jmpq   4144 <cstr_fgets+0x264>
    45fa:	89 ca                	mov    %ecx,%edx
    45fc:	0f b7 74 13 fe       	movzwl -0x2(%rbx,%rdx,1),%esi
    4601:	66 89 74 10 fe       	mov    %si,-0x2(%rax,%rdx,1)
    4606:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    460b:	48 8b 10             	mov    (%rax),%rdx
    460e:	e9 a1 fb ff ff       	jmpq   41b4 <cstr_fgets+0x2d4>
    4613:	ba 02 00 00 00       	mov    $0x2,%edx
    4618:	48 8d 35 9b 2a 00 00 	lea    0x2a9b(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    461f:	48 8d 3d 1a 2b 00 00 	lea    0x2b1a(%rip),%rdi        # 7140 <CSWTCH.19+0x10>
    4626:	e8 45 23 00 00       	callq  6970 <__cstr_debug>
    462b:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    4630:	e9 af f9 ff ff       	jmpq   3fe4 <cstr_fgets+0x104>
    4635:	0f 1f 00             	nopl   (%rax)
    4638:	ba 02 00 00 00       	mov    $0x2,%edx
    463d:	48 8d 35 76 2a 00 00 	lea    0x2a76(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    4644:	44 89 4c 24 18       	mov    %r9d,0x18(%rsp)
    4649:	48 8d 3d f0 2a 00 00 	lea    0x2af0(%rip),%rdi        # 7140 <CSWTCH.19+0x10>
    4650:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    4655:	e8 16 23 00 00       	callq  6970 <__cstr_debug>
    465a:	44 8b 4c 24 18       	mov    0x18(%rsp),%r9d
    465f:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    4664:	b9 40 00 00 00       	mov    $0x40,%ecx
    4669:	e9 00 fc ff ff       	jmpq   426e <cstr_fgets+0x38e>
    466e:	ba 02 00 00 00       	mov    $0x2,%edx
    4673:	48 8d 35 40 2a 00 00 	lea    0x2a40(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    467a:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    467f:	48 8d 3d ba 2a 00 00 	lea    0x2aba(%rip),%rdi        # 7140 <CSWTCH.19+0x10>
    4686:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    468b:	e8 e0 22 00 00       	callq  6970 <__cstr_debug>
    4690:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    4695:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    469a:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    469f:	e9 71 fa ff ff       	jmpq   4115 <cstr_fgets+0x235>
    46a4:	bf 01 00 00 00       	mov    $0x1,%edi
    46a9:	e8 82 ca ff ff       	callq  1130 <exit@plt>
    46ae:	66 90                	xchg   %ax,%ax

00000000000046b0 <cstr_puts>:
    46b0:	41 54                	push   %r12
    46b2:	41 89 d4             	mov    %edx,%r12d
    46b5:	55                   	push   %rbp
    46b6:	48 89 f5             	mov    %rsi,%rbp
    46b9:	53                   	push   %rbx
    46ba:	48 89 fb             	mov    %rdi,%rbx
    46bd:	e8 be cd ff ff       	callq  1480 <__cstr_type>
    46c2:	48 89 df             	mov    %rbx,%rdi
    46c5:	89 c6                	mov    %eax,%esi
    46c7:	e8 c4 ce ff ff       	callq  1590 <__cstr_relsiz>
    46cc:	48 29 e8             	sub    %rbp,%rax
    46cf:	78 17                	js     46e8 <cstr_puts+0x38>
    46d1:	48 8d 34 2b          	lea    (%rbx,%rbp,1),%rsi
    46d5:	44 89 e7             	mov    %r12d,%edi
    46d8:	5b                   	pop    %rbx
    46d9:	48 89 c2             	mov    %rax,%rdx
    46dc:	5d                   	pop    %rbp
    46dd:	41 5c                	pop    %r12
    46df:	e9 6c c9 ff ff       	jmpq   1050 <write@plt>
    46e4:	0f 1f 40 00          	nopl   0x0(%rax)
    46e8:	5b                   	pop    %rbx
    46e9:	31 d2                	xor    %edx,%edx
    46eb:	48 8d 35 59 2a 00 00 	lea    0x2a59(%rip),%rsi        # 714b <CSWTCH.19+0x1b>
    46f2:	5d                   	pop    %rbp
    46f3:	48 8d 3d 67 2a 00 00 	lea    0x2a67(%rip),%rdi        # 7161 <CSWTCH.19+0x31>
    46fa:	41 5c                	pop    %r12
    46fc:	e9 6f 22 00 00       	jmpq   6970 <__cstr_debug>
    4701:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4708:	00 00 00 00 
    470c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000004710 <cstr_putsn>:
    4710:	41 55                	push   %r13
    4712:	41 89 cd             	mov    %ecx,%r13d
    4715:	41 54                	push   %r12
    4717:	49 89 f4             	mov    %rsi,%r12
    471a:	55                   	push   %rbp
    471b:	48 89 d5             	mov    %rdx,%rbp
    471e:	53                   	push   %rbx
    471f:	48 89 fb             	mov    %rdi,%rbx
    4722:	48 83 ec 08          	sub    $0x8,%rsp
    4726:	e8 55 cd ff ff       	callq  1480 <__cstr_type>
    472b:	48 89 df             	mov    %rbx,%rdi
    472e:	89 c6                	mov    %eax,%esi
    4730:	e8 5b ce ff ff       	callq  1590 <__cstr_relsiz>
    4735:	48 89 ea             	mov    %rbp,%rdx
    4738:	4c 29 e0             	sub    %r12,%rax
    473b:	48 39 e8             	cmp    %rbp,%rax
    473e:	48 0f 4e d0          	cmovle %rax,%rdx
    4742:	48 85 d2             	test   %rdx,%rdx
    4745:	78 19                	js     4760 <cstr_putsn+0x50>
    4747:	48 83 c4 08          	add    $0x8,%rsp
    474b:	4a 8d 34 23          	lea    (%rbx,%r12,1),%rsi
    474f:	44 89 ef             	mov    %r13d,%edi
    4752:	5b                   	pop    %rbx
    4753:	5d                   	pop    %rbp
    4754:	41 5c                	pop    %r12
    4756:	41 5d                	pop    %r13
    4758:	e9 f3 c8 ff ff       	jmpq   1050 <write@plt>
    475d:	0f 1f 00             	nopl   (%rax)
    4760:	48 83 c4 08          	add    $0x8,%rsp
    4764:	31 d2                	xor    %edx,%edx
    4766:	48 8d 35 de 29 00 00 	lea    0x29de(%rip),%rsi        # 714b <CSWTCH.19+0x1b>
    476d:	5b                   	pop    %rbx
    476e:	48 8d 3d f6 29 00 00 	lea    0x29f6(%rip),%rdi        # 716b <CSWTCH.19+0x3b>
    4775:	5d                   	pop    %rbp
    4776:	41 5c                	pop    %r12
    4778:	41 5d                	pop    %r13
    477a:	e9 f1 21 00 00       	jmpq   6970 <__cstr_debug>
    477f:	90                   	nop

0000000000004780 <cstr_dump>:
    4780:	41 56                	push   %r14
    4782:	41 55                	push   %r13
    4784:	41 89 f5             	mov    %esi,%r13d
    4787:	41 54                	push   %r12
    4789:	49 89 fc             	mov    %rdi,%r12
    478c:	55                   	push   %rbp
    478d:	53                   	push   %rbx
    478e:	e8 ed cc ff ff       	callq  1480 <__cstr_type>
    4793:	4c 89 e7             	mov    %r12,%rdi
    4796:	89 c5                	mov    %eax,%ebp
    4798:	89 c6                	mov    %eax,%esi
    479a:	e8 f1 cc ff ff       	callq  1490 <__cstr_head>
    479f:	89 ee                	mov    %ebp,%esi
    47a1:	4c 89 e7             	mov    %r12,%rdi
    47a4:	49 89 c6             	mov    %rax,%r14
    47a7:	e8 74 cd ff ff       	callq  1520 <__cstr_nofbuf>
    47ac:	89 ef                	mov    %ebp,%edi
    47ae:	89 c3                	mov    %eax,%ebx
    47b0:	e8 2b cf ff ff       	callq  16e0 <__cstr_datbuf>
    47b5:	89 ef                	mov    %ebp,%edi
    47b7:	0f af d8             	imul   %eax,%ebx
    47ba:	e8 b1 ce ff ff       	callq  1670 <__cstr_datoff>
    47bf:	4c 89 f6             	mov    %r14,%rsi
    47c2:	44 89 ef             	mov    %r13d,%edi
    47c5:	8d 14 03             	lea    (%rbx,%rax,1),%edx
    47c8:	5b                   	pop    %rbx
    47c9:	5d                   	pop    %rbp
    47ca:	48 63 d2             	movslq %edx,%rdx
    47cd:	41 5c                	pop    %r12
    47cf:	41 5d                	pop    %r13
    47d1:	41 5e                	pop    %r14
    47d3:	e9 78 c8 ff ff       	jmpq   1050 <write@plt>
    47d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    47df:	00 

00000000000047e0 <__wcstr_type>:
    47e0:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    47e4:	83 e0 03             	and    $0x3,%eax
    47e7:	c3                   	retq   
    47e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    47ef:	00 

00000000000047f0 <__wcstr_head>:
    47f0:	55                   	push   %rbp
    47f1:	83 ee 01             	sub    $0x1,%esi
    47f4:	53                   	push   %rbx
    47f5:	48 89 fb             	mov    %rdi,%rbx
    47f8:	48 83 ec 08          	sub    $0x8,%rsp
    47fc:	83 fe 03             	cmp    $0x3,%esi
    47ff:	77 1f                	ja     4820 <__wcstr_head+0x30>
    4801:	48 8d 05 88 29 00 00 	lea    0x2988(%rip),%rax        # 7190 <CSWTCH.19>
    4808:	8b 2c b0             	mov    (%rax,%rsi,4),%ebp
    480b:	48 89 d8             	mov    %rbx,%rax
    480e:	48 83 c4 08          	add    $0x8,%rsp
    4812:	5b                   	pop    %rbx
    4813:	48 63 d5             	movslq %ebp,%rdx
    4816:	5d                   	pop    %rbp
    4817:	48 29 d0             	sub    %rdx,%rax
    481a:	c3                   	retq   
    481b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4820:	ba 01 00 00 00       	mov    $0x1,%edx
    4825:	48 8d 35 d8 27 00 00 	lea    0x27d8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    482c:	48 8d 3d e5 27 00 00 	lea    0x27e5(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    4833:	e8 f8 22 00 00       	callq  6b30 <__wcstr_debug>
    4838:	48 63 d5             	movslq %ebp,%rdx
    483b:	48 89 d8             	mov    %rbx,%rax
    483e:	48 83 c4 08          	add    $0x8,%rsp
    4842:	48 29 d0             	sub    %rdx,%rax
    4845:	5b                   	pop    %rbx
    4846:	5d                   	pop    %rbp
    4847:	c3                   	retq   
    4848:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    484f:	00 

0000000000004850 <__wcstr_type_wn>:
    4850:	b8 01 00 00 00       	mov    $0x1,%eax
    4855:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    485c:	76 1f                	jbe    487d <__wcstr_type_wn+0x2d>
    485e:	b8 02 00 00 00       	mov    $0x2,%eax
    4863:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    486a:	76 11                	jbe    487d <__wcstr_type_wn+0x2d>
    486c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4871:	48 39 c7             	cmp    %rax,%rdi
    4874:	0f 97 c0             	seta   %al
    4877:	0f b6 c0             	movzbl %al,%eax
    487a:	83 c0 03             	add    $0x3,%eax
    487d:	c3                   	retq   
    487e:	66 90                	xchg   %ax,%ax

0000000000004880 <__wcstr_nofbuf>:
    4880:	83 fe 03             	cmp    $0x3,%esi
    4883:	74 2b                	je     48b0 <__wcstr_nofbuf+0x30>
    4885:	77 19                	ja     48a0 <__wcstr_nofbuf+0x20>
    4887:	83 fe 01             	cmp    $0x1,%esi
    488a:	74 5c                	je     48e8 <__wcstr_nofbuf+0x68>
    488c:	83 fe 02             	cmp    $0x2,%esi
    488f:	75 27                	jne    48b8 <__wcstr_nofbuf+0x38>
    4891:	0f b7 47 fa          	movzwl -0x6(%rdi),%eax
    4895:	c3                   	retq   
    4896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    489d:	00 00 00 
    48a0:	83 fe 04             	cmp    $0x4,%esi
    48a3:	75 13                	jne    48b8 <__wcstr_nofbuf+0x38>
    48a5:	8b 47 e8             	mov    -0x18(%rdi),%eax
    48a8:	c3                   	retq   
    48a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    48b0:	8b 47 f4             	mov    -0xc(%rdi),%eax
    48b3:	c3                   	retq   
    48b4:	0f 1f 40 00          	nopl   0x0(%rax)
    48b8:	48 83 ec 18          	sub    $0x18,%rsp
    48bc:	ba 01 00 00 00       	mov    $0x1,%edx
    48c1:	48 8d 35 3c 27 00 00 	lea    0x273c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    48c8:	48 8d 3d 57 27 00 00 	lea    0x2757(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    48cf:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    48d3:	e8 58 22 00 00       	callq  6b30 <__wcstr_debug>
    48d8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    48dc:	48 83 c4 18          	add    $0x18,%rsp
    48e0:	c3                   	retq   
    48e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    48e8:	0f b6 47 fd          	movzbl -0x3(%rdi),%eax
    48ec:	c3                   	retq   
    48ed:	0f 1f 00             	nopl   (%rax)

00000000000048f0 <__wcstr_relsiz>:
    48f0:	83 fe 03             	cmp    $0x3,%esi
    48f3:	74 2b                	je     4920 <__wcstr_relsiz+0x30>
    48f5:	77 19                	ja     4910 <__wcstr_relsiz+0x20>
    48f7:	83 fe 01             	cmp    $0x1,%esi
    48fa:	74 5c                	je     4958 <__wcstr_relsiz+0x68>
    48fc:	83 fe 02             	cmp    $0x2,%esi
    48ff:	75 27                	jne    4928 <__wcstr_relsiz+0x38>
    4901:	0f b7 47 fc          	movzwl -0x4(%rdi),%eax
    4905:	c3                   	retq   
    4906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    490d:	00 00 00 
    4910:	83 fe 04             	cmp    $0x4,%esi
    4913:	75 13                	jne    4928 <__wcstr_relsiz+0x38>
    4915:	48 8b 47 f0          	mov    -0x10(%rdi),%rax
    4919:	c3                   	retq   
    491a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4920:	8b 47 f8             	mov    -0x8(%rdi),%eax
    4923:	c3                   	retq   
    4924:	0f 1f 40 00          	nopl   0x0(%rax)
    4928:	48 83 ec 18          	sub    $0x18,%rsp
    492c:	ba 01 00 00 00       	mov    $0x1,%edx
    4931:	48 8d 35 cc 26 00 00 	lea    0x26cc(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4938:	48 8d 3d f5 26 00 00 	lea    0x26f5(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    493f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    4944:	e8 e7 21 00 00       	callq  6b30 <__wcstr_debug>
    4949:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    494e:	48 83 c4 18          	add    $0x18,%rsp
    4952:	c3                   	retq   
    4953:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4958:	0f b6 47 fe          	movzbl -0x2(%rdi),%eax
    495c:	c3                   	retq   
    495d:	0f 1f 00             	nopl   (%rax)

0000000000004960 <__wcstr_flag>:
    4960:	83 fe 03             	cmp    $0x3,%esi
    4963:	74 2b                	je     4990 <__wcstr_flag+0x30>
    4965:	77 19                	ja     4980 <__wcstr_flag+0x20>
    4967:	83 fe 01             	cmp    $0x1,%esi
    496a:	74 5c                	je     49c8 <__wcstr_flag+0x68>
    496c:	83 fe 02             	cmp    $0x2,%esi
    496f:	75 27                	jne    4998 <__wcstr_flag+0x38>
    4971:	0f b7 47 fe          	movzwl -0x2(%rdi),%eax
    4975:	c3                   	retq   
    4976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    497d:	00 00 00 
    4980:	83 fe 04             	cmp    $0x4,%esi
    4983:	75 13                	jne    4998 <__wcstr_flag+0x38>
    4985:	8b 47 f8             	mov    -0x8(%rdi),%eax
    4988:	c3                   	retq   
    4989:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4990:	8b 47 fc             	mov    -0x4(%rdi),%eax
    4993:	c3                   	retq   
    4994:	0f 1f 40 00          	nopl   0x0(%rax)
    4998:	48 83 ec 18          	sub    $0x18,%rsp
    499c:	ba 01 00 00 00       	mov    $0x1,%edx
    49a1:	48 8d 35 5c 26 00 00 	lea    0x265c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    49a8:	48 8d 3d 93 26 00 00 	lea    0x2693(%rip),%rdi        # 7042 <_IO_stdin_used+0x42>
    49af:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    49b3:	e8 78 21 00 00       	callq  6b30 <__wcstr_debug>
    49b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    49bc:	48 83 c4 18          	add    $0x18,%rsp
    49c0:	c3                   	retq   
    49c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    49c8:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    49cc:	c3                   	retq   
    49cd:	0f 1f 00             	nopl   (%rax)

00000000000049d0 <__wcstr_datoff>:
    49d0:	83 ef 01             	sub    $0x1,%edi
    49d3:	41 54                	push   %r12
    49d5:	83 ff 03             	cmp    $0x3,%edi
    49d8:	77 16                	ja     49f0 <__wcstr_datoff+0x20>
    49da:	48 8d 05 af 27 00 00 	lea    0x27af(%rip),%rax        # 7190 <CSWTCH.19>
    49e1:	44 8b 24 b8          	mov    (%rax,%rdi,4),%r12d
    49e5:	44 89 e0             	mov    %r12d,%eax
    49e8:	41 5c                	pop    %r12
    49ea:	c3                   	retq   
    49eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    49f0:	ba 01 00 00 00       	mov    $0x1,%edx
    49f5:	48 8d 35 08 26 00 00 	lea    0x2608(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    49fc:	48 8d 3d 15 26 00 00 	lea    0x2615(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    4a03:	e8 28 21 00 00       	callq  6b30 <__wcstr_debug>
    4a08:	44 89 e0             	mov    %r12d,%eax
    4a0b:	41 5c                	pop    %r12
    4a0d:	c3                   	retq   
    4a0e:	66 90                	xchg   %ax,%ax

0000000000004a10 <__wcstr_datoff_wn>:
    4a10:	b8 03 00 00 00       	mov    $0x3,%eax
    4a15:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    4a1c:	76 1e                	jbe    4a3c <__wcstr_datoff_wn+0x2c>
    4a1e:	b8 06 00 00 00       	mov    $0x6,%eax
    4a23:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    4a2a:	76 10                	jbe    4a3c <__wcstr_datoff_wn+0x2c>
    4a2c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4a31:	48 39 f8             	cmp    %rdi,%rax
    4a34:	19 c0                	sbb    %eax,%eax
    4a36:	83 e0 0c             	and    $0xc,%eax
    4a39:	83 c0 0c             	add    $0xc,%eax
    4a3c:	c3                   	retq   
    4a3d:	0f 1f 00             	nopl   (%rax)

0000000000004a40 <__wcstr_datbuf>:
    4a40:	83 ef 01             	sub    $0x1,%edi
    4a43:	41 54                	push   %r12
    4a45:	83 ff 03             	cmp    $0x3,%edi
    4a48:	77 16                	ja     4a60 <__wcstr_datbuf+0x20>
    4a4a:	48 8d 05 2f 27 00 00 	lea    0x272f(%rip),%rax        # 7180 <CSWTCH.23>
    4a51:	44 8b 24 b8          	mov    (%rax,%rdi,4),%r12d
    4a55:	44 89 e0             	mov    %r12d,%eax
    4a58:	41 5c                	pop    %r12
    4a5a:	c3                   	retq   
    4a5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4a60:	ba 01 00 00 00       	mov    $0x1,%edx
    4a65:	48 8d 35 98 25 00 00 	lea    0x2598(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4a6c:	48 8d 3d db 25 00 00 	lea    0x25db(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    4a73:	e8 b8 20 00 00       	callq  6b30 <__wcstr_debug>
    4a78:	44 89 e0             	mov    %r12d,%eax
    4a7b:	41 5c                	pop    %r12
    4a7d:	c3                   	retq   
    4a7e:	66 90                	xchg   %ax,%ax

0000000000004a80 <__wcstr_datbuf_wn>:
    4a80:	b8 10 00 00 00       	mov    $0x10,%eax
    4a85:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    4a8c:	76 22                	jbe    4ab0 <__wcstr_datbuf_wn+0x30>
    4a8e:	b8 00 04 00 00       	mov    $0x400,%eax
    4a93:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    4a9a:	76 14                	jbe    4ab0 <__wcstr_datbuf_wn+0x30>
    4a9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4aa1:	48 39 f8             	cmp    %rdi,%rax
    4aa4:	19 c0                	sbb    %eax,%eax
    4aa6:	25 00 f0 ff 00       	and    $0xfff000,%eax
    4aab:	05 00 10 00 00       	add    $0x1000,%eax
    4ab0:	c3                   	retq   
    4ab1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4ab8:	00 00 00 00 
    4abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000004ac0 <__wcstr_set_nofbuf>:
    4ac0:	83 fa 03             	cmp    $0x3,%edx
    4ac3:	74 2b                	je     4af0 <__wcstr_set_nofbuf+0x30>
    4ac5:	77 19                	ja     4ae0 <__wcstr_set_nofbuf+0x20>
    4ac7:	83 fa 01             	cmp    $0x1,%edx
    4aca:	74 44                	je     4b10 <__wcstr_set_nofbuf+0x50>
    4acc:	83 fa 02             	cmp    $0x2,%edx
    4acf:	75 27                	jne    4af8 <__wcstr_set_nofbuf+0x38>
    4ad1:	66 89 77 fa          	mov    %si,-0x6(%rdi)
    4ad5:	c3                   	retq   
    4ad6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    4add:	00 00 00 
    4ae0:	83 fa 04             	cmp    $0x4,%edx
    4ae3:	75 13                	jne    4af8 <__wcstr_set_nofbuf+0x38>
    4ae5:	48 63 f6             	movslq %esi,%rsi
    4ae8:	48 89 77 e8          	mov    %rsi,-0x18(%rdi)
    4aec:	c3                   	retq   
    4aed:	0f 1f 00             	nopl   (%rax)
    4af0:	89 77 f4             	mov    %esi,-0xc(%rdi)
    4af3:	c3                   	retq   
    4af4:	0f 1f 40 00          	nopl   0x0(%rax)
    4af8:	ba 01 00 00 00       	mov    $0x1,%edx
    4afd:	48 8d 35 00 25 00 00 	lea    0x2500(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4b04:	48 8d 3d 51 25 00 00 	lea    0x2551(%rip),%rdi        # 705c <_IO_stdin_used+0x5c>
    4b0b:	e9 20 20 00 00       	jmpq   6b30 <__wcstr_debug>
    4b10:	40 88 77 fd          	mov    %sil,-0x3(%rdi)
    4b14:	c3                   	retq   
    4b15:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4b1c:	00 00 00 00 

0000000000004b20 <__wcstr_set_relsiz>:
    4b20:	83 fa 03             	cmp    $0x3,%edx
    4b23:	74 2b                	je     4b50 <__wcstr_set_relsiz+0x30>
    4b25:	77 19                	ja     4b40 <__wcstr_set_relsiz+0x20>
    4b27:	83 fa 01             	cmp    $0x1,%edx
    4b2a:	74 44                	je     4b70 <__wcstr_set_relsiz+0x50>
    4b2c:	83 fa 02             	cmp    $0x2,%edx
    4b2f:	75 27                	jne    4b58 <__wcstr_set_relsiz+0x38>
    4b31:	66 89 77 fa          	mov    %si,-0x6(%rdi)
    4b35:	c3                   	retq   
    4b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    4b3d:	00 00 00 
    4b40:	83 fa 04             	cmp    $0x4,%edx
    4b43:	75 13                	jne    4b58 <__wcstr_set_relsiz+0x38>
    4b45:	48 89 77 e8          	mov    %rsi,-0x18(%rdi)
    4b49:	c3                   	retq   
    4b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4b50:	89 77 f4             	mov    %esi,-0xc(%rdi)
    4b53:	c3                   	retq   
    4b54:	0f 1f 40 00          	nopl   0x0(%rax)
    4b58:	ba 01 00 00 00       	mov    $0x1,%edx
    4b5d:	48 8d 35 a0 24 00 00 	lea    0x24a0(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4b64:	48 8d 3d 03 25 00 00 	lea    0x2503(%rip),%rdi        # 706e <_IO_stdin_used+0x6e>
    4b6b:	e9 c0 1f 00 00       	jmpq   6b30 <__wcstr_debug>
    4b70:	40 88 77 fd          	mov    %sil,-0x3(%rdi)
    4b74:	c3                   	retq   
    4b75:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4b7c:	00 00 00 00 

0000000000004b80 <__wcstr_header>:
    4b80:	41 54                	push   %r12
    4b82:	49 89 fc             	mov    %rdi,%r12
    4b85:	48 89 f7             	mov    %rsi,%rdi
    4b88:	89 d6                	mov    %edx,%esi
    4b8a:	53                   	push   %rbx
    4b8b:	89 d3                	mov    %edx,%ebx
    4b8d:	48 83 ec 08          	sub    $0x8,%rsp
    4b91:	e8 fa c8 ff ff       	callq  1490 <__cstr_head>
    4b96:	83 fb 03             	cmp    $0x3,%ebx
    4b99:	74 65                	je     4c00 <__wcstr_header+0x80>
    4b9b:	77 33                	ja     4bd0 <__wcstr_header+0x50>
    4b9d:	83 fb 01             	cmp    $0x1,%ebx
    4ba0:	0f 84 aa 00 00 00    	je     4c50 <__wcstr_header+0xd0>
    4ba6:	83 fb 02             	cmp    $0x2,%ebx
    4ba9:	75 7d                	jne    4c28 <__wcstr_header+0xa8>
    4bab:	0f b7 48 02          	movzwl 0x2(%rax),%ecx
    4baf:	0f b7 50 04          	movzwl 0x4(%rax),%edx
    4bb3:	0f b7 00             	movzwl (%rax),%eax
    4bb6:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
    4bbb:	49 89 04 24          	mov    %rax,(%r12)
    4bbf:	4c 89 e0             	mov    %r12,%rax
    4bc2:	49 89 54 24 10       	mov    %rdx,0x10(%r12)
    4bc7:	48 83 c4 08          	add    $0x8,%rsp
    4bcb:	5b                   	pop    %rbx
    4bcc:	41 5c                	pop    %r12
    4bce:	c3                   	retq   
    4bcf:	90                   	nop
    4bd0:	83 fb 04             	cmp    $0x4,%ebx
    4bd3:	75 53                	jne    4c28 <__wcstr_header+0xa8>
    4bd5:	48 8b 48 08          	mov    0x8(%rax),%rcx
    4bd9:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4bdd:	48 8b 00             	mov    (%rax),%rax
    4be0:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
    4be5:	49 89 04 24          	mov    %rax,(%r12)
    4be9:	4c 89 e0             	mov    %r12,%rax
    4bec:	49 89 54 24 10       	mov    %rdx,0x10(%r12)
    4bf1:	48 83 c4 08          	add    $0x8,%rsp
    4bf5:	5b                   	pop    %rbx
    4bf6:	41 5c                	pop    %r12
    4bf8:	c3                   	retq   
    4bf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4c00:	8b 08                	mov    (%rax),%ecx
    4c02:	49 89 0c 24          	mov    %rcx,(%r12)
    4c06:	8b 48 04             	mov    0x4(%rax),%ecx
    4c09:	8b 40 08             	mov    0x8(%rax),%eax
    4c0c:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
    4c11:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    4c16:	48 83 c4 08          	add    $0x8,%rsp
    4c1a:	4c 89 e0             	mov    %r12,%rax
    4c1d:	5b                   	pop    %rbx
    4c1e:	41 5c                	pop    %r12
    4c20:	c3                   	retq   
    4c21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4c28:	ba 01 00 00 00       	mov    $0x1,%edx
    4c2d:	48 8d 35 d0 23 00 00 	lea    0x23d0(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4c34:	48 8d 3d 45 24 00 00 	lea    0x2445(%rip),%rdi        # 7080 <_IO_stdin_used+0x80>
    4c3b:	e8 f0 1e 00 00       	callq  6b30 <__wcstr_debug>
    4c40:	48 83 c4 08          	add    $0x8,%rsp
    4c44:	4c 89 e0             	mov    %r12,%rax
    4c47:	5b                   	pop    %rbx
    4c48:	41 5c                	pop    %r12
    4c4a:	c3                   	retq   
    4c4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4c50:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
    4c54:	0f b6 50 02          	movzbl 0x2(%rax),%edx
    4c58:	0f b6 00             	movzbl (%rax),%eax
    4c5b:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
    4c60:	49 89 04 24          	mov    %rax,(%r12)
    4c64:	4c 89 e0             	mov    %r12,%rax
    4c67:	49 89 54 24 10       	mov    %rdx,0x10(%r12)
    4c6c:	48 83 c4 08          	add    $0x8,%rsp
    4c70:	5b                   	pop    %rbx
    4c71:	41 5c                	pop    %r12
    4c73:	c3                   	retq   
    4c74:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4c7b:	00 00 00 00 
    4c7f:	90                   	nop

0000000000004c80 <__wcstr_header_from>:
    4c80:	48 89 f8             	mov    %rdi,%rax
    4c83:	83 fa 03             	cmp    $0x3,%edx
    4c86:	74 48                	je     4cd0 <__wcstr_header_from+0x50>
    4c88:	77 26                	ja     4cb0 <__wcstr_header_from+0x30>
    4c8a:	83 fa 01             	cmp    $0x1,%edx
    4c8d:	0f 84 85 00 00 00    	je     4d18 <__wcstr_header_from+0x98>
    4c93:	83 fa 02             	cmp    $0x2,%edx
    4c96:	75 50                	jne    4ce8 <__wcstr_header_from+0x68>
    4c98:	0f b7 4e 02          	movzwl 0x2(%rsi),%ecx
    4c9c:	0f b7 56 04          	movzwl 0x4(%rsi),%edx
    4ca0:	0f b7 36             	movzwl (%rsi),%esi
    4ca3:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    4ca7:	48 89 37             	mov    %rsi,(%rdi)
    4caa:	48 89 57 10          	mov    %rdx,0x10(%rdi)
    4cae:	c3                   	retq   
    4caf:	90                   	nop
    4cb0:	83 fa 04             	cmp    $0x4,%edx
    4cb3:	75 33                	jne    4ce8 <__wcstr_header_from+0x68>
    4cb5:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
    4cb9:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    4cbd:	48 8b 36             	mov    (%rsi),%rsi
    4cc0:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    4cc4:	48 89 37             	mov    %rsi,(%rdi)
    4cc7:	48 89 57 10          	mov    %rdx,0x10(%rdi)
    4ccb:	c3                   	retq   
    4ccc:	0f 1f 40 00          	nopl   0x0(%rax)
    4cd0:	8b 0e                	mov    (%rsi),%ecx
    4cd2:	48 89 0f             	mov    %rcx,(%rdi)
    4cd5:	8b 4e 04             	mov    0x4(%rsi),%ecx
    4cd8:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    4cdc:	8b 4e 08             	mov    0x8(%rsi),%ecx
    4cdf:	48 89 4f 10          	mov    %rcx,0x10(%rdi)
    4ce3:	c3                   	retq   
    4ce4:	0f 1f 40 00          	nopl   0x0(%rax)
    4ce8:	48 83 ec 18          	sub    $0x18,%rsp
    4cec:	ba 01 00 00 00       	mov    $0x1,%edx
    4cf1:	48 8d 35 0c 23 00 00 	lea    0x230c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4cf8:	48 8d 3d 81 23 00 00 	lea    0x2381(%rip),%rdi        # 7080 <_IO_stdin_used+0x80>
    4cff:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    4d04:	e8 27 1e 00 00       	callq  6b30 <__wcstr_debug>
    4d09:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    4d0e:	48 83 c4 18          	add    $0x18,%rsp
    4d12:	c3                   	retq   
    4d13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4d18:	0f b6 4e 01          	movzbl 0x1(%rsi),%ecx
    4d1c:	0f b6 56 02          	movzbl 0x2(%rsi),%edx
    4d20:	0f b6 36             	movzbl (%rsi),%esi
    4d23:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    4d27:	48 89 37             	mov    %rsi,(%rdi)
    4d2a:	48 89 57 10          	mov    %rdx,0x10(%rdi)
    4d2e:	c3                   	retq   
    4d2f:	90                   	nop

0000000000004d30 <__wcstr_getman>:
    4d30:	49 89 f8             	mov    %rdi,%r8
    4d33:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
    4d3a:	76 64                	jbe    4da0 <__wcstr_getman+0x70>
    4d3c:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
    4d43:	0f 86 b7 00 00 00    	jbe    4e00 <__wcstr_getman+0xd0>
    4d49:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    4d4e:	48 39 f2             	cmp    %rsi,%rdx
    4d51:	19 c0                	sbb    %eax,%eax
    4d53:	f7 d0                	not    %eax
    4d55:	83 c0 04             	add    $0x4,%eax
    4d58:	48 39 f2             	cmp    %rsi,%rdx
    4d5b:	19 ff                	sbb    %edi,%edi
    4d5d:	83 e7 0c             	and    $0xc,%edi
    4d60:	83 c7 0c             	add    $0xc,%edi
    4d63:	48 39 f2             	cmp    %rsi,%rdx
    4d66:	19 c9                	sbb    %ecx,%ecx
    4d68:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    4d6e:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    4d74:	48 39 f2             	cmp    %rsi,%rdx
    4d77:	4d 19 c9             	sbb    %r9,%r9
    4d7a:	41 81 e1 00 f0 ff 00 	and    $0xfff000,%r9d
    4d81:	49 81 c1 00 10 00 00 	add    $0x1000,%r9
    4d88:	48 39 f2             	cmp    %rsi,%rdx
    4d8b:	45 19 d2             	sbb    %r10d,%r10d
    4d8e:	41 f7 d2             	not    %r10d
    4d91:	41 83 c2 04          	add    $0x4,%r10d
    4d95:	eb 24                	jmp    4dbb <__wcstr_getman+0x8b>
    4d97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    4d9e:	00 00 
    4da0:	b8 01 00 00 00       	mov    $0x1,%eax
    4da5:	bf 03 00 00 00       	mov    $0x3,%edi
    4daa:	b9 10 00 00 00       	mov    $0x10,%ecx
    4daf:	41 b9 10 00 00 00    	mov    $0x10,%r9d
    4db5:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    4dbb:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    4dc2:	00 
    4dc3:	31 d2                	xor    %edx,%edx
    4dc5:	88 44 24 ff          	mov    %al,-0x1(%rsp)
    4dc9:	48 89 f0             	mov    %rsi,%rax
    4dcc:	49 f7 f1             	div    %r9
    4dcf:	49 89 30             	mov    %rsi,(%r8)
    4dd2:	41 89 78 18          	mov    %edi,0x18(%r8)
    4dd6:	45 89 50 1c          	mov    %r10d,0x1c(%r8)
    4dda:	83 c0 01             	add    $0x1,%eax
    4ddd:	0f af c8             	imul   %eax,%ecx
    4de0:	41 89 40 10          	mov    %eax,0x10(%r8)
    4de4:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    4de8:	41 89 40 14          	mov    %eax,0x14(%r8)
    4dec:	4c 89 c0             	mov    %r8,%rax
    4def:	01 f9                	add    %edi,%ecx
    4df1:	48 63 c9             	movslq %ecx,%rcx
    4df4:	49 89 48 08          	mov    %rcx,0x8(%r8)
    4df8:	c3                   	retq   
    4df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4e00:	b8 02 00 00 00       	mov    $0x2,%eax
    4e05:	bf 06 00 00 00       	mov    $0x6,%edi
    4e0a:	b9 00 04 00 00       	mov    $0x400,%ecx
    4e0f:	41 b9 00 04 00 00    	mov    $0x400,%r9d
    4e15:	41 ba 02 00 00 00    	mov    $0x2,%r10d
    4e1b:	eb 9e                	jmp    4dbb <__wcstr_getman+0x8b>
    4e1d:	0f 1f 00             	nopl   (%rax)

0000000000004e20 <__wcstr_getman_wp>:
    4e20:	41 57                	push   %r15
    4e22:	8d 42 ff             	lea    -0x1(%rdx),%eax
    4e25:	41 56                	push   %r14
    4e27:	41 55                	push   %r13
    4e29:	41 54                	push   %r12
    4e2b:	49 89 fc             	mov    %rdi,%r12
    4e2e:	55                   	push   %rbp
    4e2f:	53                   	push   %rbx
    4e30:	89 d3                	mov    %edx,%ebx
    4e32:	48 83 ec 18          	sub    $0x18,%rsp
    4e36:	83 fa 03             	cmp    $0x3,%edx
    4e39:	0f 84 49 01 00 00    	je     4f88 <__wcstr_getman_wp+0x168>
    4e3f:	77 6f                	ja     4eb0 <__wcstr_getman_wp+0x90>
    4e41:	83 fa 01             	cmp    $0x1,%edx
    4e44:	0f 84 26 01 00 00    	je     4f70 <__wcstr_getman_wp+0x150>
    4e4a:	83 fa 02             	cmp    $0x2,%edx
    4e4d:	75 79                	jne    4ec8 <__wcstr_getman_wp+0xa8>
    4e4f:	0f b7 4e fc          	movzwl -0x4(%rsi),%ecx
    4e53:	44 0f b7 6e fa       	movzwl -0x6(%rsi),%r13d
    4e58:	44 0f b7 7e fe       	movzwl -0x2(%rsi),%r15d
    4e5d:	48 8d 15 2c 23 00 00 	lea    0x232c(%rip),%rdx        # 7190 <CSWTCH.19>
    4e64:	44 8b 34 82          	mov    (%rdx,%rax,4),%r14d
    4e68:	48 8d 15 11 23 00 00 	lea    0x2311(%rip),%rdx        # 7180 <CSWTCH.23>
    4e6f:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    4e72:	89 e8                	mov    %ebp,%eax
    4e74:	45 89 6c 24 10       	mov    %r13d,0x10(%r12)
    4e79:	41 0f af c5          	imul   %r13d,%eax
    4e7d:	45 89 7c 24 14       	mov    %r15d,0x14(%r12)
    4e82:	45 89 74 24 18       	mov    %r14d,0x18(%r12)
    4e87:	41 89 5c 24 1c       	mov    %ebx,0x1c(%r12)
    4e8c:	44 01 f0             	add    %r14d,%eax
    4e8f:	49 89 0c 24          	mov    %rcx,(%r12)
    4e93:	48 98                	cltq   
    4e95:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    4e9a:	48 83 c4 18          	add    $0x18,%rsp
    4e9e:	4c 89 e0             	mov    %r12,%rax
    4ea1:	5b                   	pop    %rbx
    4ea2:	5d                   	pop    %rbp
    4ea3:	41 5c                	pop    %r12
    4ea5:	41 5d                	pop    %r13
    4ea7:	41 5e                	pop    %r14
    4ea9:	41 5f                	pop    %r15
    4eab:	c3                   	retq   
    4eac:	0f 1f 40 00          	nopl   0x0(%rax)
    4eb0:	83 fa 04             	cmp    $0x4,%edx
    4eb3:	75 13                	jne    4ec8 <__wcstr_getman_wp+0xa8>
    4eb5:	48 8b 4e f0          	mov    -0x10(%rsi),%rcx
    4eb9:	44 8b 6e e8          	mov    -0x18(%rsi),%r13d
    4ebd:	44 8b 7e f8          	mov    -0x8(%rsi),%r15d
    4ec1:	eb 9a                	jmp    4e5d <__wcstr_getman_wp+0x3d>
    4ec3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4ec8:	ba 01 00 00 00       	mov    $0x1,%edx
    4ecd:	48 8d 35 30 21 00 00 	lea    0x2130(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4ed4:	48 8d 3d 59 21 00 00 	lea    0x2159(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    4edb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    4edf:	48 89 0c 24          	mov    %rcx,(%rsp)
    4ee3:	e8 48 1c 00 00       	callq  6b30 <__wcstr_debug>
    4ee8:	ba 01 00 00 00       	mov    $0x1,%edx
    4eed:	48 8d 35 10 21 00 00 	lea    0x2110(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4ef4:	48 8d 3d 2b 21 00 00 	lea    0x212b(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    4efb:	e8 30 1c 00 00       	callq  6b30 <__wcstr_debug>
    4f00:	ba 01 00 00 00       	mov    $0x1,%edx
    4f05:	48 8d 35 f8 20 00 00 	lea    0x20f8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4f0c:	48 8d 3d 2f 21 00 00 	lea    0x212f(%rip),%rdi        # 7042 <_IO_stdin_used+0x42>
    4f13:	e8 18 1c 00 00       	callq  6b30 <__wcstr_debug>
    4f18:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    4f1c:	48 8b 0c 24          	mov    (%rsp),%rcx
    4f20:	83 f8 03             	cmp    $0x3,%eax
    4f23:	0f 86 34 ff ff ff    	jbe    4e5d <__wcstr_getman_wp+0x3d>
    4f29:	ba 01 00 00 00       	mov    $0x1,%edx
    4f2e:	48 8d 35 cf 20 00 00 	lea    0x20cf(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4f35:	48 8d 3d dc 20 00 00 	lea    0x20dc(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    4f3c:	48 89 0c 24          	mov    %rcx,(%rsp)
    4f40:	e8 eb 1b 00 00       	callq  6b30 <__wcstr_debug>
    4f45:	ba 01 00 00 00       	mov    $0x1,%edx
    4f4a:	48 8d 35 b3 20 00 00 	lea    0x20b3(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    4f51:	48 8d 3d f6 20 00 00 	lea    0x20f6(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    4f58:	e8 d3 1b 00 00       	callq  6b30 <__wcstr_debug>
    4f5d:	48 8b 0c 24          	mov    (%rsp),%rcx
    4f61:	e9 0c ff ff ff       	jmpq   4e72 <__wcstr_getman_wp+0x52>
    4f66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    4f6d:	00 00 00 
    4f70:	0f b6 4e fe          	movzbl -0x2(%rsi),%ecx
    4f74:	44 0f b6 6e fd       	movzbl -0x3(%rsi),%r13d
    4f79:	44 0f b6 7e ff       	movzbl -0x1(%rsi),%r15d
    4f7e:	e9 da fe ff ff       	jmpq   4e5d <__wcstr_getman_wp+0x3d>
    4f83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4f88:	8b 4e f8             	mov    -0x8(%rsi),%ecx
    4f8b:	44 8b 6e f4          	mov    -0xc(%rsi),%r13d
    4f8f:	44 8b 7e fc          	mov    -0x4(%rsi),%r15d
    4f93:	e9 c5 fe ff ff       	jmpq   4e5d <__wcstr_getman_wp+0x3d>
    4f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    4f9f:	00 

0000000000004fa0 <__wcstr_getman_wh>:
    4fa0:	41 57                	push   %r15
    4fa2:	8d 56 ff             	lea    -0x1(%rsi),%edx
    4fa5:	41 56                	push   %r14
    4fa7:	41 55                	push   %r13
    4fa9:	41 54                	push   %r12
    4fab:	49 89 fc             	mov    %rdi,%r12
    4fae:	55                   	push   %rbp
    4faf:	53                   	push   %rbx
    4fb0:	89 f3                	mov    %esi,%ebx
    4fb2:	48 83 ec 18          	sub    $0x18,%rsp
    4fb6:	48 8b 6c 24 58       	mov    0x58(%rsp),%rbp
    4fbb:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    4fc0:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    4fc5:	83 fa 03             	cmp    $0x3,%edx
    4fc8:	77 56                	ja     5020 <__wcstr_getman_wh+0x80>
    4fca:	48 8d 05 bf 21 00 00 	lea    0x21bf(%rip),%rax        # 7190 <CSWTCH.19>
    4fd1:	44 8b 34 90          	mov    (%rax,%rdx,4),%r14d
    4fd5:	48 8d 05 a4 21 00 00 	lea    0x21a4(%rip),%rax        # 7180 <CSWTCH.23>
    4fdc:	8b 04 90             	mov    (%rax,%rdx,4),%eax
    4fdf:	41 0f af c5          	imul   %r13d,%eax
    4fe3:	49 89 2c 24          	mov    %rbp,(%r12)
    4fe7:	45 89 6c 24 10       	mov    %r13d,0x10(%r12)
    4fec:	45 89 7c 24 14       	mov    %r15d,0x14(%r12)
    4ff1:	44 01 f0             	add    %r14d,%eax
    4ff4:	45 89 74 24 18       	mov    %r14d,0x18(%r12)
    4ff9:	48 98                	cltq   
    4ffb:	41 89 5c 24 1c       	mov    %ebx,0x1c(%r12)
    5000:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    5005:	48 83 c4 18          	add    $0x18,%rsp
    5009:	4c 89 e0             	mov    %r12,%rax
    500c:	5b                   	pop    %rbx
    500d:	5d                   	pop    %rbp
    500e:	41 5c                	pop    %r12
    5010:	41 5d                	pop    %r13
    5012:	41 5e                	pop    %r14
    5014:	41 5f                	pop    %r15
    5016:	c3                   	retq   
    5017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    501e:	00 00 
    5020:	ba 01 00 00 00       	mov    $0x1,%edx
    5025:	48 8d 35 d8 1f 00 00 	lea    0x1fd8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    502c:	48 8d 3d e5 1f 00 00 	lea    0x1fe5(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    5033:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    5037:	e8 f4 1a 00 00       	callq  6b30 <__wcstr_debug>
    503c:	ba 01 00 00 00       	mov    $0x1,%edx
    5041:	48 8d 35 bc 1f 00 00 	lea    0x1fbc(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    5048:	48 8d 3d ff 1f 00 00 	lea    0x1fff(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    504f:	e8 dc 1a 00 00       	callq  6b30 <__wcstr_debug>
    5054:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    5058:	eb 85                	jmp    4fdf <__wcstr_getman_wh+0x3f>
    505a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000005060 <__wcstr_set_header>:
    5060:	41 54                	push   %r12
    5062:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    5067:	48 63 54 24 20       	movslq 0x20(%rsp),%rdx
    506c:	0f b6 44 24 27       	movzbl 0x27(%rsp),%eax
    5071:	83 fe 03             	cmp    $0x3,%esi
    5074:	74 4a                	je     50c0 <__wcstr_set_header+0x60>
    5076:	77 28                	ja     50a0 <__wcstr_set_header+0x40>
    5078:	83 fe 01             	cmp    $0x1,%esi
    507b:	0f 84 7f 00 00 00    	je     5100 <__wcstr_set_header+0xa0>
    5081:	83 fe 02             	cmp    $0x2,%esi
    5084:	75 52                	jne    50d8 <__wcstr_set_header+0x78>
    5086:	4c 8d 67 06          	lea    0x6(%rdi),%r12
    508a:	66 89 47 04          	mov    %ax,0x4(%rdi)
    508e:	66 89 17             	mov    %dx,(%rdi)
    5091:	4c 89 e0             	mov    %r12,%rax
    5094:	66 89 4f 02          	mov    %cx,0x2(%rdi)
    5098:	41 5c                	pop    %r12
    509a:	c3                   	retq   
    509b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    50a0:	83 fe 04             	cmp    $0x4,%esi
    50a3:	75 33                	jne    50d8 <__wcstr_set_header+0x78>
    50a5:	4c 8d 67 18          	lea    0x18(%rdi),%r12
    50a9:	48 89 47 10          	mov    %rax,0x10(%rdi)
    50ad:	48 89 17             	mov    %rdx,(%rdi)
    50b0:	4c 89 e0             	mov    %r12,%rax
    50b3:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    50b7:	41 5c                	pop    %r12
    50b9:	c3                   	retq   
    50ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    50c0:	4c 8d 67 0c          	lea    0xc(%rdi),%r12
    50c4:	89 47 08             	mov    %eax,0x8(%rdi)
    50c7:	89 17                	mov    %edx,(%rdi)
    50c9:	4c 89 e0             	mov    %r12,%rax
    50cc:	89 4f 04             	mov    %ecx,0x4(%rdi)
    50cf:	41 5c                	pop    %r12
    50d1:	c3                   	retq   
    50d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    50d8:	ba 01 00 00 00       	mov    $0x1,%edx
    50dd:	48 8d 35 20 1f 00 00 	lea    0x1f20(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    50e4:	48 8d 3d a8 1f 00 00 	lea    0x1fa8(%rip),%rdi        # 7093 <_IO_stdin_used+0x93>
    50eb:	e8 40 1a 00 00       	callq  6b30 <__wcstr_debug>
    50f0:	4c 89 e0             	mov    %r12,%rax
    50f3:	41 5c                	pop    %r12
    50f5:	c3                   	retq   
    50f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    50fd:	00 00 00 
    5100:	4c 8d 67 03          	lea    0x3(%rdi),%r12
    5104:	88 47 02             	mov    %al,0x2(%rdi)
    5107:	88 17                	mov    %dl,(%rdi)
    5109:	4c 89 e0             	mov    %r12,%rax
    510c:	88 4f 01             	mov    %cl,0x1(%rdi)
    510f:	41 5c                	pop    %r12
    5111:	c3                   	retq   
    5112:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    5119:	00 00 00 00 
    511d:	0f 1f 00             	nopl   (%rax)

0000000000005120 <__wcstr_set_header_wh>:
    5120:	48 83 ec 08          	sub    $0x8,%rsp
    5124:	83 fe 03             	cmp    $0x3,%esi
    5127:	74 67                	je     5190 <__wcstr_set_header_wh+0x70>
    5129:	77 35                	ja     5160 <__wcstr_set_header_wh+0x40>
    512b:	83 fe 01             	cmp    $0x1,%esi
    512e:	0f 84 9c 00 00 00    	je     51d0 <__wcstr_set_header_wh+0xb0>
    5134:	83 fe 02             	cmp    $0x2,%esi
    5137:	75 77                	jne    51b0 <__wcstr_set_header_wh+0x90>
    5139:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    513e:	66 89 07             	mov    %ax,(%rdi)
    5141:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    5146:	66 89 47 02          	mov    %ax,0x2(%rdi)
    514a:	0f b7 44 24 2e       	movzwl 0x2e(%rsp),%eax
    514f:	66 89 47 04          	mov    %ax,0x4(%rdi)
    5153:	48 8d 47 06          	lea    0x6(%rdi),%rax
    5157:	48 83 c4 08          	add    $0x8,%rsp
    515b:	c3                   	retq   
    515c:	0f 1f 40 00          	nopl   0x0(%rax)
    5160:	83 fe 04             	cmp    $0x4,%esi
    5163:	75 4b                	jne    51b0 <__wcstr_set_header_wh+0x90>
    5165:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    516a:	48 89 07             	mov    %rax,(%rdi)
    516d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    5172:	48 89 47 08          	mov    %rax,0x8(%rdi)
    5176:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    517b:	48 89 47 10          	mov    %rax,0x10(%rdi)
    517f:	48 8d 47 18          	lea    0x18(%rdi),%rax
    5183:	48 83 c4 08          	add    $0x8,%rsp
    5187:	c3                   	retq   
    5188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    518f:	00 
    5190:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    5195:	89 07                	mov    %eax,(%rdi)
    5197:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    519c:	89 47 04             	mov    %eax,0x4(%rdi)
    519f:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
    51a3:	89 47 08             	mov    %eax,0x8(%rdi)
    51a6:	48 8d 47 0c          	lea    0xc(%rdi),%rax
    51aa:	48 83 c4 08          	add    $0x8,%rsp
    51ae:	c3                   	retq   
    51af:	90                   	nop
    51b0:	ba 01 00 00 00       	mov    $0x1,%edx
    51b5:	48 8d 35 48 1e 00 00 	lea    0x1e48(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    51bc:	48 8d 3d e2 1e 00 00 	lea    0x1ee2(%rip),%rdi        # 70a5 <_IO_stdin_used+0xa5>
    51c3:	e8 68 19 00 00       	callq  6b30 <__wcstr_debug>
    51c8:	48 83 c4 08          	add    $0x8,%rsp
    51cc:	c3                   	retq   
    51cd:	0f 1f 00             	nopl   (%rax)
    51d0:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    51d5:	88 07                	mov    %al,(%rdi)
    51d7:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    51dc:	88 47 01             	mov    %al,0x1(%rdi)
    51df:	0f b6 44 24 27       	movzbl 0x27(%rsp),%eax
    51e4:	88 47 02             	mov    %al,0x2(%rdi)
    51e7:	48 8d 47 03          	lea    0x3(%rdi),%rax
    51eb:	48 83 c4 08          	add    $0x8,%rsp
    51ef:	c3                   	retq   

00000000000051f0 <__wcstr_toflag>:
    51f0:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    51f7:	00 
    51f8:	40 88 7c 24 ff       	mov    %dil,-0x1(%rsp)
    51fd:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    5201:	c3                   	retq   
    5202:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    5209:	00 00 00 00 
    520d:	0f 1f 00             	nopl   (%rax)

0000000000005210 <__wcstr_from_flag>:
    5210:	89 f8                	mov    %edi,%eax
    5212:	c1 e8 18             	shr    $0x18,%eax
    5215:	c3                   	retq   
    5216:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    521d:	00 00 00 

0000000000005220 <__wcstr_nof_buffer>:
    5220:	55                   	push   %rbp
    5221:	83 ee 01             	sub    $0x1,%esi
    5224:	53                   	push   %rbx
    5225:	48 89 fb             	mov    %rdi,%rbx
    5228:	48 83 ec 08          	sub    $0x8,%rsp
    522c:	83 fe 03             	cmp    $0x3,%esi
    522f:	77 1f                	ja     5250 <__wcstr_nof_buffer+0x30>
    5231:	48 8d 05 48 1f 00 00 	lea    0x1f48(%rip),%rax        # 7180 <CSWTCH.23>
    5238:	8b 2c b0             	mov    (%rax,%rsi,4),%ebp
    523b:	48 63 cd             	movslq %ebp,%rcx
    523e:	48 89 d8             	mov    %rbx,%rax
    5241:	31 d2                	xor    %edx,%edx
    5243:	48 83 c4 08          	add    $0x8,%rsp
    5247:	48 f7 f1             	div    %rcx
    524a:	5b                   	pop    %rbx
    524b:	5d                   	pop    %rbp
    524c:	83 c0 01             	add    $0x1,%eax
    524f:	c3                   	retq   
    5250:	ba 01 00 00 00       	mov    $0x1,%edx
    5255:	48 8d 35 a8 1d 00 00 	lea    0x1da8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    525c:	48 8d 3d eb 1d 00 00 	lea    0x1deb(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    5263:	e8 c8 18 00 00       	callq  6b30 <__wcstr_debug>
    5268:	eb d1                	jmp    523b <__wcstr_nof_buffer+0x1b>
    526a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000005270 <__wcstr_nof_buffer_alone>:
    5270:	48 89 f8             	mov    %rdi,%rax
    5273:	b9 10 00 00 00       	mov    $0x10,%ecx
    5278:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    527f:	76 26                	jbe    52a7 <__wcstr_nof_buffer_alone+0x37>
    5281:	b9 00 04 00 00       	mov    $0x400,%ecx
    5286:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    528d:	76 18                	jbe    52a7 <__wcstr_nof_buffer_alone+0x37>
    528f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    5294:	48 39 fa             	cmp    %rdi,%rdx
    5297:	48 19 c9             	sbb    %rcx,%rcx
    529a:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    52a0:	48 81 c1 00 10 00 00 	add    $0x1000,%rcx
    52a7:	31 d2                	xor    %edx,%edx
    52a9:	48 f7 f1             	div    %rcx
    52ac:	83 c0 01             	add    $0x1,%eax
    52af:	c3                   	retq   

00000000000052b0 <wcstr_buf>:
    52b0:	53                   	push   %rbx
    52b1:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    52b5:	83 e0 03             	and    $0x3,%eax
    52b8:	3c 02                	cmp    $0x2,%al
    52ba:	74 2c                	je     52e8 <wcstr_buf+0x38>
    52bc:	3c 03                	cmp    $0x3,%al
    52be:	74 48                	je     5308 <wcstr_buf+0x58>
    52c0:	3c 01                	cmp    $0x1,%al
    52c2:	74 34                	je     52f8 <wcstr_buf+0x48>
    52c4:	ba 01 00 00 00       	mov    $0x1,%edx
    52c9:	48 8d 35 34 1d 00 00 	lea    0x1d34(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    52d0:	48 8d 3d 4f 1d 00 00 	lea    0x1d4f(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    52d7:	e8 54 18 00 00       	callq  6b30 <__wcstr_debug>
    52dc:	48 63 c3             	movslq %ebx,%rax
    52df:	5b                   	pop    %rbx
    52e0:	c3                   	retq   
    52e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    52e8:	0f b7 5f fa          	movzwl -0x6(%rdi),%ebx
    52ec:	48 63 c3             	movslq %ebx,%rax
    52ef:	5b                   	pop    %rbx
    52f0:	c3                   	retq   
    52f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    52f8:	0f b6 5f fd          	movzbl -0x3(%rdi),%ebx
    52fc:	48 63 c3             	movslq %ebx,%rax
    52ff:	5b                   	pop    %rbx
    5300:	c3                   	retq   
    5301:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5308:	8b 5f f4             	mov    -0xc(%rdi),%ebx
    530b:	48 63 c3             	movslq %ebx,%rax
    530e:	5b                   	pop    %rbx
    530f:	c3                   	retq   

0000000000005310 <wcstr_len>:
    5310:	41 54                	push   %r12
    5312:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    5316:	83 e0 03             	and    $0x3,%eax
    5319:	3c 02                	cmp    $0x2,%al
    531b:	74 2b                	je     5348 <wcstr_len+0x38>
    531d:	3c 03                	cmp    $0x3,%al
    531f:	74 47                	je     5368 <wcstr_len+0x58>
    5321:	3c 01                	cmp    $0x1,%al
    5323:	74 33                	je     5358 <wcstr_len+0x48>
    5325:	ba 01 00 00 00       	mov    $0x1,%edx
    532a:	48 8d 35 d3 1c 00 00 	lea    0x1cd3(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    5331:	48 8d 3d fc 1c 00 00 	lea    0x1cfc(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    5338:	e8 f3 17 00 00       	callq  6b30 <__wcstr_debug>
    533d:	4c 89 e0             	mov    %r12,%rax
    5340:	41 5c                	pop    %r12
    5342:	c3                   	retq   
    5343:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5348:	44 0f b7 67 fc       	movzwl -0x4(%rdi),%r12d
    534d:	4c 89 e0             	mov    %r12,%rax
    5350:	41 5c                	pop    %r12
    5352:	c3                   	retq   
    5353:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5358:	44 0f b6 67 fe       	movzbl -0x2(%rdi),%r12d
    535d:	4c 89 e0             	mov    %r12,%rax
    5360:	41 5c                	pop    %r12
    5362:	c3                   	retq   
    5363:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5368:	44 8b 67 f8          	mov    -0x8(%rdi),%r12d
    536c:	4c 89 e0             	mov    %r12,%rax
    536f:	41 5c                	pop    %r12
    5371:	c3                   	retq   
    5372:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    5379:	00 00 00 00 
    537d:	0f 1f 00             	nopl   (%rax)

0000000000005380 <wcstr_rmn>:
    5380:	41 55                	push   %r13
    5382:	41 54                	push   %r12
    5384:	49 89 fc             	mov    %rdi,%r12
    5387:	55                   	push   %rbp
    5388:	53                   	push   %rbx
    5389:	48 83 ec 08          	sub    $0x8,%rsp
    538d:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    5391:	41 89 c5             	mov    %eax,%r13d
    5394:	83 e0 03             	and    $0x3,%eax
    5397:	41 83 e5 03          	and    $0x3,%r13d
    539b:	8d 58 ff             	lea    -0x1(%rax),%ebx
    539e:	41 80 fd 02          	cmp    $0x2,%r13b
    53a2:	74 7c                	je     5420 <wcstr_rmn+0xa0>
    53a4:	41 80 fd 03          	cmp    $0x3,%r13b
    53a8:	0f 84 c2 00 00 00    	je     5470 <wcstr_rmn+0xf0>
    53ae:	41 80 fd 01          	cmp    $0x1,%r13b
    53b2:	0f 84 88 00 00 00    	je     5440 <wcstr_rmn+0xc0>
    53b8:	ba 01 00 00 00       	mov    $0x1,%edx
    53bd:	48 8d 35 40 1c 00 00 	lea    0x1c40(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    53c4:	48 8d 3d 5b 1c 00 00 	lea    0x1c5b(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    53cb:	e8 60 17 00 00       	callq  6b30 <__wcstr_debug>
    53d0:	83 fb 03             	cmp    $0x3,%ebx
    53d3:	0f 86 9f 00 00 00    	jbe    5478 <wcstr_rmn+0xf8>
    53d9:	ba 01 00 00 00       	mov    $0x1,%edx
    53de:	48 8d 35 1f 1c 00 00 	lea    0x1c1f(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    53e5:	48 8d 3d 62 1c 00 00 	lea    0x1c62(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    53ec:	31 db                	xor    %ebx,%ebx
    53ee:	e8 3d 17 00 00       	callq  6b30 <__wcstr_debug>
    53f3:	ba 01 00 00 00       	mov    $0x1,%edx
    53f8:	48 8d 35 05 1c 00 00 	lea    0x1c05(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    53ff:	48 8d 3d 2e 1c 00 00 	lea    0x1c2e(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    5406:	e8 25 17 00 00       	callq  6b30 <__wcstr_debug>
    540b:	48 83 c4 08          	add    $0x8,%rsp
    540f:	48 89 d8             	mov    %rbx,%rax
    5412:	48 29 e8             	sub    %rbp,%rax
    5415:	5b                   	pop    %rbx
    5416:	5d                   	pop    %rbp
    5417:	41 5c                	pop    %r12
    5419:	41 5d                	pop    %r13
    541b:	c3                   	retq   
    541c:	0f 1f 40 00          	nopl   0x0(%rax)
    5420:	48 8d 15 59 1d 00 00 	lea    0x1d59(%rip),%rdx        # 7180 <CSWTCH.23>
    5427:	0f b7 47 fa          	movzwl -0x6(%rdi),%eax
    542b:	0f b7 6f fc          	movzwl -0x4(%rdi),%ebp
    542f:	0f af 04 9a          	imul   (%rdx,%rbx,4),%eax
    5433:	48 63 d8             	movslq %eax,%rbx
    5436:	eb d3                	jmp    540b <wcstr_rmn+0x8b>
    5438:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    543f:	00 
    5440:	0f b6 47 fd          	movzbl -0x3(%rdi),%eax
    5444:	48 8d 15 35 1d 00 00 	lea    0x1d35(%rip),%rdx        # 7180 <CSWTCH.23>
    544b:	0f af 04 9a          	imul   (%rdx,%rbx,4),%eax
    544f:	48 63 d8             	movslq %eax,%rbx
    5452:	41 80 fd 03          	cmp    $0x3,%r13b
    5456:	75 08                	jne    5460 <wcstr_rmn+0xe0>
    5458:	41 8b 6c 24 f8       	mov    -0x8(%r12),%ebp
    545d:	eb ac                	jmp    540b <wcstr_rmn+0x8b>
    545f:	90                   	nop
    5460:	41 80 fd 01          	cmp    $0x1,%r13b
    5464:	75 8d                	jne    53f3 <wcstr_rmn+0x73>
    5466:	41 0f b6 6c 24 fe    	movzbl -0x2(%r12),%ebp
    546c:	eb 9d                	jmp    540b <wcstr_rmn+0x8b>
    546e:	66 90                	xchg   %ax,%ax
    5470:	8b 47 f4             	mov    -0xc(%rdi),%eax
    5473:	eb cf                	jmp    5444 <wcstr_rmn+0xc4>
    5475:	0f 1f 00             	nopl   (%rax)
    5478:	31 db                	xor    %ebx,%ebx
    547a:	eb d6                	jmp    5452 <wcstr_rmn+0xd2>
    547c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000005480 <wcstr_free>:
    5480:	55                   	push   %rbp
    5481:	53                   	push   %rbx
    5482:	48 89 fb             	mov    %rdi,%rbx
    5485:	48 83 ec 08          	sub    $0x8,%rsp
    5489:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    548d:	83 e0 03             	and    $0x3,%eax
    5490:	83 e8 01             	sub    $0x1,%eax
    5493:	83 f8 03             	cmp    $0x3,%eax
    5496:	77 28                	ja     54c0 <wcstr_free+0x40>
    5498:	48 8d 15 f1 1c 00 00 	lea    0x1cf1(%rip),%rdx        # 7190 <CSWTCH.19>
    549f:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    54a2:	48 63 c5             	movslq %ebp,%rax
    54a5:	48 83 c4 08          	add    $0x8,%rsp
    54a9:	48 29 c3             	sub    %rax,%rbx
    54ac:	48 89 df             	mov    %rbx,%rdi
    54af:	5b                   	pop    %rbx
    54b0:	5d                   	pop    %rbp
    54b1:	e9 7a bb ff ff       	jmpq   1030 <free@plt>
    54b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    54bd:	00 00 00 
    54c0:	ba 01 00 00 00       	mov    $0x1,%edx
    54c5:	48 8d 35 38 1b 00 00 	lea    0x1b38(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    54cc:	48 8d 3d 45 1b 00 00 	lea    0x1b45(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    54d3:	e8 58 16 00 00       	callq  6b30 <__wcstr_debug>
    54d8:	eb c8                	jmp    54a2 <wcstr_free+0x22>
    54da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000054e0 <nwcstr_mt>:
    54e0:	48 83 ec 08          	sub    $0x8,%rsp
    54e4:	bf 4c 00 00 00       	mov    $0x4c,%edi
    54e9:	e8 12 bc ff ff       	callq  1100 <malloc@plt>
    54ee:	48 85 c0             	test   %rax,%rax
    54f1:	74 1d                	je     5510 <nwcstr_mt+0x30>
    54f3:	ba 01 01 00 00       	mov    $0x101,%edx
    54f8:	c6 40 02 01          	movb   $0x1,0x2(%rax)
    54fc:	48 83 c0 0c          	add    $0xc,%rax
    5500:	66 89 50 f4          	mov    %dx,-0xc(%rax)
    5504:	c7 40 3c 00 00 00 00 	movl   $0x0,0x3c(%rax)
    550b:	48 83 c4 08          	add    $0x8,%rsp
    550f:	c3                   	retq   
    5510:	ba 02 00 00 00       	mov    $0x2,%edx
    5515:	48 8d 35 9e 1b 00 00 	lea    0x1b9e(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    551c:	48 8d 3d aa 1b 00 00 	lea    0x1baa(%rip),%rdi        # 70cd <_IO_stdin_used+0xcd>
    5523:	e8 08 16 00 00       	callq  6b30 <__wcstr_debug>
    5528:	eb e1                	jmp    550b <nwcstr_mt+0x2b>
    552a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000005530 <nwcstr_new>:
    5530:	41 56                	push   %r14
    5532:	41 55                	push   %r13
    5534:	41 54                	push   %r12
    5536:	49 89 fc             	mov    %rdi,%r12
    5539:	55                   	push   %rbp
    553a:	53                   	push   %rbx
    553b:	48 83 ec 10          	sub    $0x10,%rsp
    553f:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    5546:	76 60                	jbe    55a8 <nwcstr_new+0x78>
    5548:	48 81 ff ff ff 00 00 	cmp    $0xffff,%rdi
    554f:	0f 86 eb 00 00 00    	jbe    5640 <nwcstr_new+0x110>
    5555:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    555a:	48 39 fa             	cmp    %rdi,%rdx
    555d:	19 db                	sbb    %ebx,%ebx
    555f:	83 e3 0c             	and    $0xc,%ebx
    5562:	83 c3 0c             	add    $0xc,%ebx
    5565:	48 39 fa             	cmp    %rdi,%rdx
    5568:	19 c9                	sbb    %ecx,%ecx
    556a:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    5570:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    5576:	48 39 fa             	cmp    %rdi,%rdx
    5579:	48 19 f6             	sbb    %rsi,%rsi
    557c:	81 e6 00 f0 ff 00    	and    $0xfff000,%esi
    5582:	48 81 c6 00 10 00 00 	add    $0x1000,%rsi
    5589:	48 39 fa             	cmp    %rdi,%rdx
    558c:	19 c0                	sbb    %eax,%eax
    558e:	f7 d0                	not    %eax
    5590:	83 c0 04             	add    $0x4,%eax
    5593:	48 39 fa             	cmp    %rdi,%rdx
    5596:	45 19 ed             	sbb    %r13d,%r13d
    5599:	41 f7 d5             	not    %r13d
    559c:	41 83 c5 04          	add    $0x4,%r13d
    55a0:	eb 20                	jmp    55c2 <nwcstr_new+0x92>
    55a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    55a8:	bb 03 00 00 00       	mov    $0x3,%ebx
    55ad:	b9 10 00 00 00       	mov    $0x10,%ecx
    55b2:	be 10 00 00 00       	mov    $0x10,%esi
    55b7:	b8 01 00 00 00       	mov    $0x1,%eax
    55bc:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    55c2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    55c9:	00 
    55ca:	31 d2                	xor    %edx,%edx
    55cc:	88 44 24 0f          	mov    %al,0xf(%rsp)
    55d0:	4c 89 e0             	mov    %r12,%rax
    55d3:	8b 6c 24 0c          	mov    0xc(%rsp),%ebp
    55d7:	48 f7 f6             	div    %rsi
    55da:	44 8d 70 01          	lea    0x1(%rax),%r14d
    55de:	41 0f af ce          	imul   %r14d,%ecx
    55e2:	01 cb                	add    %ecx,%ebx
    55e4:	48 63 db             	movslq %ebx,%rbx
    55e7:	48 c1 e3 02          	shl    $0x2,%rbx
    55eb:	48 89 df             	mov    %rbx,%rdi
    55ee:	e8 0d bb ff ff       	callq  1100 <malloc@plt>
    55f3:	48 85 c0             	test   %rax,%rax
    55f6:	0f 84 aa 00 00 00    	je     56a6 <nwcstr_new+0x176>
    55fc:	c1 ed 18             	shr    $0x18,%ebp
    55ff:	41 83 fd 03          	cmp    $0x3,%r13d
    5603:	74 5b                	je     5660 <nwcstr_new+0x130>
    5605:	41 83 fd 04          	cmp    $0x4,%r13d
    5609:	74 65                	je     5670 <nwcstr_new+0x140>
    560b:	41 83 fd 02          	cmp    $0x2,%r13d
    560f:	74 7f                	je     5690 <nwcstr_new+0x160>
    5611:	44 88 30             	mov    %r14b,(%rax)
    5614:	4c 8d 40 03          	lea    0x3(%rax),%r8
    5618:	44 88 60 01          	mov    %r12b,0x1(%rax)
    561c:	40 88 68 02          	mov    %bpl,0x2(%rax)
    5620:	c7 44 18 fc 00 00 00 	movl   $0x0,-0x4(%rax,%rbx,1)
    5627:	00 
    5628:	48 83 c4 10          	add    $0x10,%rsp
    562c:	4c 89 c0             	mov    %r8,%rax
    562f:	5b                   	pop    %rbx
    5630:	5d                   	pop    %rbp
    5631:	41 5c                	pop    %r12
    5633:	41 5d                	pop    %r13
    5635:	41 5e                	pop    %r14
    5637:	c3                   	retq   
    5638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    563f:	00 
    5640:	bb 06 00 00 00       	mov    $0x6,%ebx
    5645:	b9 00 04 00 00       	mov    $0x400,%ecx
    564a:	be 00 04 00 00       	mov    $0x400,%esi
    564f:	b8 02 00 00 00       	mov    $0x2,%eax
    5654:	41 bd 02 00 00 00    	mov    $0x2,%r13d
    565a:	e9 63 ff ff ff       	jmpq   55c2 <nwcstr_new+0x92>
    565f:	90                   	nop
    5660:	44 89 30             	mov    %r14d,(%rax)
    5663:	4c 8d 40 0c          	lea    0xc(%rax),%r8
    5667:	44 89 60 04          	mov    %r12d,0x4(%rax)
    566b:	89 68 08             	mov    %ebp,0x8(%rax)
    566e:	eb b0                	jmp    5620 <nwcstr_new+0xf0>
    5670:	4d 63 f6             	movslq %r14d,%r14
    5673:	40 0f b6 ed          	movzbl %bpl,%ebp
    5677:	4c 89 60 08          	mov    %r12,0x8(%rax)
    567b:	4c 8d 40 18          	lea    0x18(%rax),%r8
    567f:	4c 89 30             	mov    %r14,(%rax)
    5682:	48 89 68 10          	mov    %rbp,0x10(%rax)
    5686:	eb 98                	jmp    5620 <nwcstr_new+0xf0>
    5688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    568f:	00 
    5690:	66 44 89 30          	mov    %r14w,(%rax)
    5694:	4c 8d 40 06          	lea    0x6(%rax),%r8
    5698:	66 44 89 60 02       	mov    %r12w,0x2(%rax)
    569d:	66 89 68 04          	mov    %bp,0x4(%rax)
    56a1:	e9 7a ff ff ff       	jmpq   5620 <nwcstr_new+0xf0>
    56a6:	ba 02 00 00 00       	mov    $0x2,%edx
    56ab:	48 8d 35 08 1a 00 00 	lea    0x1a08(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    56b2:	48 8d 3d 1d 1a 00 00 	lea    0x1a1d(%rip),%rdi        # 70d6 <_IO_stdin_used+0xd6>
    56b9:	e8 72 14 00 00       	callq  6b30 <__wcstr_debug>
    56be:	e9 65 ff ff ff       	jmpq   5628 <nwcstr_new+0xf8>
    56c3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    56ca:	00 00 00 00 
    56ce:	66 90                	xchg   %ax,%ax

00000000000056d0 <nwcstr_from>:
    56d0:	41 57                	push   %r15
    56d2:	be 00 20 00 00       	mov    $0x2000,%esi
    56d7:	49 89 ff             	mov    %rdi,%r15
    56da:	41 56                	push   %r14
    56dc:	41 55                	push   %r13
    56de:	41 54                	push   %r12
    56e0:	55                   	push   %rbp
    56e1:	53                   	push   %rbx
    56e2:	48 83 ec 28          	sub    $0x28,%rsp
    56e6:	e8 65 ba ff ff       	callq  1150 <wcsnlen@plt>
    56eb:	48 89 c3             	mov    %rax,%rbx
    56ee:	48 3d ff 00 00 00    	cmp    $0xff,%rax
    56f4:	76 5a                	jbe    5750 <nwcstr_from+0x80>
    56f6:	48 3d ff ff 00 00    	cmp    $0xffff,%rax
    56fc:	0f 86 0e 01 00 00    	jbe    5810 <nwcstr_from+0x140>
    5702:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    5707:	48 39 c2             	cmp    %rax,%rdx
    570a:	19 c0                	sbb    %eax,%eax
    570c:	f7 d0                	not    %eax
    570e:	83 c0 04             	add    $0x4,%eax
    5711:	48 39 da             	cmp    %rbx,%rdx
    5714:	19 ed                	sbb    %ebp,%ebp
    5716:	83 e5 0c             	and    $0xc,%ebp
    5719:	83 c5 0c             	add    $0xc,%ebp
    571c:	48 39 da             	cmp    %rbx,%rdx
    571f:	48 19 f6             	sbb    %rsi,%rsi
    5722:	81 e6 00 f0 ff 00    	and    $0xfff000,%esi
    5728:	48 81 c6 00 10 00 00 	add    $0x1000,%rsi
    572f:	48 39 da             	cmp    %rbx,%rdx
    5732:	19 c9                	sbb    %ecx,%ecx
    5734:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    573a:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    5740:	48 39 da             	cmp    %rbx,%rdx
    5743:	45 19 f6             	sbb    %r14d,%r14d
    5746:	41 f7 d6             	not    %r14d
    5749:	41 83 c6 04          	add    $0x4,%r14d
    574d:	eb 1b                	jmp    576a <nwcstr_from+0x9a>
    574f:	90                   	nop
    5750:	b8 01 00 00 00       	mov    $0x1,%eax
    5755:	bd 03 00 00 00       	mov    $0x3,%ebp
    575a:	be 10 00 00 00       	mov    $0x10,%esi
    575f:	b9 10 00 00 00       	mov    $0x10,%ecx
    5764:	41 be 01 00 00 00    	mov    $0x1,%r14d
    576a:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
    5771:	00 
    5772:	31 d2                	xor    %edx,%edx
    5774:	88 44 24 1f          	mov    %al,0x1f(%rsp)
    5778:	48 89 d8             	mov    %rbx,%rax
    577b:	44 8b 64 24 1c       	mov    0x1c(%rsp),%r12d
    5780:	48 f7 f6             	div    %rsi
    5783:	8d 50 01             	lea    0x1(%rax),%edx
    5786:	0f af ca             	imul   %edx,%ecx
    5789:	89 54 24 0c          	mov    %edx,0xc(%rsp)
    578d:	01 cd                	add    %ecx,%ebp
    578f:	48 63 ed             	movslq %ebp,%rbp
    5792:	48 c1 e5 02          	shl    $0x2,%rbp
    5796:	48 89 ef             	mov    %rbp,%rdi
    5799:	e8 62 b9 ff ff       	callq  1100 <malloc@plt>
    579e:	48 63 54 24 0c       	movslq 0xc(%rsp),%rdx
    57a3:	48 85 c0             	test   %rax,%rax
    57a6:	49 89 c5             	mov    %rax,%r13
    57a9:	0f 84 d1 00 00 00    	je     5880 <nwcstr_from+0x1b0>
    57af:	41 c1 ec 18          	shr    $0x18,%r12d
    57b3:	41 83 fe 03          	cmp    $0x3,%r14d
    57b7:	74 77                	je     5830 <nwcstr_from+0x160>
    57b9:	41 83 fe 04          	cmp    $0x4,%r14d
    57bd:	0f 84 85 00 00 00    	je     5848 <nwcstr_from+0x178>
    57c3:	41 83 fe 02          	cmp    $0x2,%r14d
    57c7:	0f 84 9b 00 00 00    	je     5868 <nwcstr_from+0x198>
    57cd:	41 88 55 00          	mov    %dl,0x0(%r13)
    57d1:	4d 8d 45 03          	lea    0x3(%r13),%r8
    57d5:	41 88 5d 01          	mov    %bl,0x1(%r13)
    57d9:	45 88 65 02          	mov    %r12b,0x2(%r13)
    57dd:	4c 89 c7             	mov    %r8,%rdi
    57e0:	48 8d 14 9d 00 00 00 	lea    0x0(,%rbx,4),%rdx
    57e7:	00 
    57e8:	4c 89 fe             	mov    %r15,%rsi
    57eb:	e8 e0 b8 ff ff       	callq  10d0 <memcpy@plt>
    57f0:	41 c7 44 2d fc 00 00 	movl   $0x0,-0x4(%r13,%rbp,1)
    57f7:	00 00 
    57f9:	49 89 c0             	mov    %rax,%r8
    57fc:	48 83 c4 28          	add    $0x28,%rsp
    5800:	4c 89 c0             	mov    %r8,%rax
    5803:	5b                   	pop    %rbx
    5804:	5d                   	pop    %rbp
    5805:	41 5c                	pop    %r12
    5807:	41 5d                	pop    %r13
    5809:	41 5e                	pop    %r14
    580b:	41 5f                	pop    %r15
    580d:	c3                   	retq   
    580e:	66 90                	xchg   %ax,%ax
    5810:	b8 02 00 00 00       	mov    $0x2,%eax
    5815:	bd 06 00 00 00       	mov    $0x6,%ebp
    581a:	be 00 04 00 00       	mov    $0x400,%esi
    581f:	b9 00 04 00 00       	mov    $0x400,%ecx
    5824:	41 be 02 00 00 00    	mov    $0x2,%r14d
    582a:	e9 3b ff ff ff       	jmpq   576a <nwcstr_from+0x9a>
    582f:	90                   	nop
    5830:	41 89 55 00          	mov    %edx,0x0(%r13)
    5834:	4d 8d 45 0c          	lea    0xc(%r13),%r8
    5838:	41 89 5d 04          	mov    %ebx,0x4(%r13)
    583c:	45 89 65 08          	mov    %r12d,0x8(%r13)
    5840:	eb 9b                	jmp    57dd <nwcstr_from+0x10d>
    5842:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5848:	45 0f b6 e4          	movzbl %r12b,%r12d
    584c:	49 89 55 00          	mov    %rdx,0x0(%r13)
    5850:	4d 8d 45 18          	lea    0x18(%r13),%r8
    5854:	49 89 5d 08          	mov    %rbx,0x8(%r13)
    5858:	4d 89 65 10          	mov    %r12,0x10(%r13)
    585c:	e9 7c ff ff ff       	jmpq   57dd <nwcstr_from+0x10d>
    5861:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5868:	66 41 89 55 00       	mov    %dx,0x0(%r13)
    586d:	4d 8d 45 06          	lea    0x6(%r13),%r8
    5871:	66 41 89 5d 02       	mov    %bx,0x2(%r13)
    5876:	66 45 89 65 04       	mov    %r12w,0x4(%r13)
    587b:	e9 5d ff ff ff       	jmpq   57dd <nwcstr_from+0x10d>
    5880:	ba 02 00 00 00       	mov    $0x2,%edx
    5885:	48 8d 35 2e 18 00 00 	lea    0x182e(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    588c:	48 8d 3d 4d 18 00 00 	lea    0x184d(%rip),%rdi        # 70e0 <_IO_stdin_used+0xe0>
    5893:	e8 98 12 00 00       	callq  6b30 <__wcstr_debug>
    5898:	e9 5f ff ff ff       	jmpq   57fc <nwcstr_from+0x12c>
    589d:	0f 1f 00             	nopl   (%rax)

00000000000058a0 <nwcstrcpy>:
    58a0:	41 57                	push   %r15
    58a2:	41 56                	push   %r14
    58a4:	49 89 fe             	mov    %rdi,%r14
    58a7:	41 55                	push   %r13
    58a9:	41 54                	push   %r12
    58ab:	55                   	push   %rbp
    58ac:	53                   	push   %rbx
    58ad:	48 83 ec 08          	sub    $0x8,%rsp
    58b1:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
    58b5:	89 c2                	mov    %eax,%edx
    58b7:	83 e0 03             	and    $0x3,%eax
    58ba:	83 e2 03             	and    $0x3,%edx
    58bd:	8d 58 ff             	lea    -0x1(%rax),%ebx
    58c0:	80 fa 02             	cmp    $0x2,%dl
    58c3:	0f 84 97 00 00 00    	je     5960 <nwcstrcpy+0xc0>
    58c9:	80 fa 03             	cmp    $0x3,%dl
    58cc:	0f 84 3e 01 00 00    	je     5a10 <nwcstrcpy+0x170>
    58d2:	80 fa 01             	cmp    $0x1,%dl
    58d5:	0f 84 25 01 00 00    	je     5a00 <nwcstrcpy+0x160>
    58db:	ba 01 00 00 00       	mov    $0x1,%edx
    58e0:	48 8d 35 1d 17 00 00 	lea    0x171d(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    58e7:	48 8d 3d 46 17 00 00 	lea    0x1746(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    58ee:	e8 3d 12 00 00       	callq  6b30 <__wcstr_debug>
    58f3:	ba 01 00 00 00       	mov    $0x1,%edx
    58f8:	48 8d 35 05 17 00 00 	lea    0x1705(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    58ff:	48 8d 3d 20 17 00 00 	lea    0x1720(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    5906:	e8 25 12 00 00       	callq  6b30 <__wcstr_debug>
    590b:	ba 01 00 00 00       	mov    $0x1,%edx
    5910:	48 8d 35 ed 16 00 00 	lea    0x16ed(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    5917:	48 8d 3d 24 17 00 00 	lea    0x1724(%rip),%rdi        # 7042 <_IO_stdin_used+0x42>
    591e:	e8 0d 12 00 00       	callq  6b30 <__wcstr_debug>
    5923:	83 fb 03             	cmp    $0x3,%ebx
    5926:	76 3d                	jbe    5965 <nwcstrcpy+0xc5>
    5928:	ba 01 00 00 00       	mov    $0x1,%edx
    592d:	48 8d 35 d0 16 00 00 	lea    0x16d0(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    5934:	48 8d 3d dd 16 00 00 	lea    0x16dd(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    593b:	e8 f0 11 00 00       	callq  6b30 <__wcstr_debug>
    5940:	ba 01 00 00 00       	mov    $0x1,%edx
    5945:	48 8d 35 b8 16 00 00 	lea    0x16b8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    594c:	48 8d 3d fb 16 00 00 	lea    0x16fb(%rip),%rdi        # 704e <_IO_stdin_used+0x4e>
    5953:	e8 d8 11 00 00       	callq  6b30 <__wcstr_debug>
    5958:	eb 21                	jmp    597b <nwcstrcpy+0xdb>
    595a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5960:	44 0f b7 67 fa       	movzwl -0x6(%rdi),%r12d
    5965:	48 8d 05 24 18 00 00 	lea    0x1824(%rip),%rax        # 7190 <CSWTCH.19>
    596c:	48 63 2c 98          	movslq (%rax,%rbx,4),%rbp
    5970:	48 8d 05 09 18 00 00 	lea    0x1809(%rip),%rax        # 7180 <CSWTCH.23>
    5977:	44 8b 3c 98          	mov    (%rax,%rbx,4),%r15d
    597b:	45 0f af e7          	imul   %r15d,%r12d
    597f:	41 01 ec             	add    %ebp,%r12d
    5982:	4d 63 e4             	movslq %r12d,%r12
    5985:	49 c1 e4 02          	shl    $0x2,%r12
    5989:	4c 89 e7             	mov    %r12,%rdi
    598c:	e8 6f b7 ff ff       	callq  1100 <malloc@plt>
    5991:	48 89 c3             	mov    %rax,%rbx
    5994:	48 85 c0             	test   %rax,%rax
    5997:	0f 84 7c 00 00 00    	je     5a19 <nwcstrcpy+0x179>
    599d:	41 0f b6 46 ff       	movzbl -0x1(%r14),%eax
    59a2:	83 e0 03             	and    $0x3,%eax
    59a5:	83 e8 01             	sub    $0x1,%eax
    59a8:	83 f8 03             	cmp    $0x3,%eax
    59ab:	77 33                	ja     59e0 <nwcstrcpy+0x140>
    59ad:	48 8d 15 dc 17 00 00 	lea    0x17dc(%rip),%rdx        # 7190 <CSWTCH.19>
    59b4:	4c 63 2c 82          	movslq (%rdx,%rax,4),%r13
    59b8:	4c 89 f6             	mov    %r14,%rsi
    59bb:	4c 89 e2             	mov    %r12,%rdx
    59be:	48 89 df             	mov    %rbx,%rdi
    59c1:	4c 29 ee             	sub    %r13,%rsi
    59c4:	e8 07 b7 ff ff       	callq  10d0 <memcpy@plt>
    59c9:	48 8d 04 ab          	lea    (%rbx,%rbp,4),%rax
    59cd:	48 83 c4 08          	add    $0x8,%rsp
    59d1:	5b                   	pop    %rbx
    59d2:	5d                   	pop    %rbp
    59d3:	41 5c                	pop    %r12
    59d5:	41 5d                	pop    %r13
    59d7:	41 5e                	pop    %r14
    59d9:	41 5f                	pop    %r15
    59db:	c3                   	retq   
    59dc:	0f 1f 40 00          	nopl   0x0(%rax)
    59e0:	ba 01 00 00 00       	mov    $0x1,%edx
    59e5:	48 8d 35 18 16 00 00 	lea    0x1618(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    59ec:	48 8d 3d 25 16 00 00 	lea    0x1625(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    59f3:	e8 38 11 00 00       	callq  6b30 <__wcstr_debug>
    59f8:	eb be                	jmp    59b8 <nwcstrcpy+0x118>
    59fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5a00:	44 0f b6 67 fd       	movzbl -0x3(%rdi),%r12d
    5a05:	e9 5b ff ff ff       	jmpq   5965 <nwcstrcpy+0xc5>
    5a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5a10:	44 8b 67 f4          	mov    -0xc(%rdi),%r12d
    5a14:	e9 4c ff ff ff       	jmpq   5965 <nwcstrcpy+0xc5>
    5a19:	ba 02 00 00 00       	mov    $0x2,%edx
    5a1e:	48 8d 35 95 16 00 00 	lea    0x1695(%rip),%rsi        # 70ba <_IO_stdin_used+0xba>
    5a25:	48 8d 3d bf 16 00 00 	lea    0x16bf(%rip),%rdi        # 70eb <_IO_stdin_used+0xeb>
    5a2c:	e8 ff 10 00 00       	callq  6b30 <__wcstr_debug>
    5a31:	eb 9a                	jmp    59cd <nwcstrcpy+0x12d>
    5a33:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    5a3a:	00 00 00 00 
    5a3e:	66 90                	xchg   %ax,%ax

0000000000005a40 <nwcstrdup>:
    5a40:	48 8b 07             	mov    (%rdi),%rax
    5a43:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    5a4a:	c3                   	retq   
    5a4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000005a50 <__wcstr_resize_from>:
    5a50:	48 85 ff             	test   %rdi,%rdi
    5a53:	0f 84 9f 03 00 00    	je     5df8 <__wcstr_resize_from+0x3a8>
    5a59:	41 57                	push   %r15
    5a5b:	41 56                	push   %r14
    5a5d:	41 55                	push   %r13
    5a5f:	41 54                	push   %r12
    5a61:	49 89 f4             	mov    %rsi,%r12
    5a64:	55                   	push   %rbp
    5a65:	48 89 fd             	mov    %rdi,%rbp
    5a68:	53                   	push   %rbx
    5a69:	48 89 d3             	mov    %rdx,%rbx
    5a6c:	48 83 ec 38          	sub    $0x38,%rsp
    5a70:	4c 8b 37             	mov    (%rdi),%r14
    5a73:	4d 89 f7             	mov    %r14,%r15
    5a76:	4d 85 f6             	test   %r14,%r14
    5a79:	0f 84 b9 00 00 00    	je     5b38 <__wcstr_resize_from+0xe8>
    5a7f:	41 0f b6 4e ff       	movzbl -0x1(%r14),%ecx
    5a84:	41 89 cd             	mov    %ecx,%r13d
    5a87:	83 e1 03             	and    $0x3,%ecx
    5a8a:	41 83 e5 03          	and    $0x3,%r13d
    5a8e:	41 80 fd 02          	cmp    $0x2,%r13b
    5a92:	0f 84 b0 02 00 00    	je     5d48 <__wcstr_resize_from+0x2f8>
    5a98:	41 80 fd 03          	cmp    $0x3,%r13b
    5a9c:	0f 84 ae 00 00 00    	je     5b50 <__wcstr_resize_from+0x100>
    5aa2:	41 80 fd 01          	cmp    $0x1,%r13b
    5aa6:	0f 84 24 02 00 00    	je     5cd0 <__wcstr_resize_from+0x280>
    5aac:	ba 01 00 00 00       	mov    $0x1,%edx
    5ab1:	48 8d 35 4c 15 00 00 	lea    0x154c(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    5ab8:	48 8d 3d 75 15 00 00 	lea    0x1575(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    5abf:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
    5ac3:	e8 68 10 00 00       	callq  6b30 <__wcstr_debug>
    5ac8:	48 85 db             	test   %rbx,%rbx
    5acb:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
    5acf:	0f 84 83 02 00 00    	je     5d58 <__wcstr_resize_from+0x308>
    5ad5:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    5ad9:	4c 8b 75 00          	mov    0x0(%rbp),%r14
    5add:	41 83 fb 03          	cmp    $0x3,%r11d
    5ae1:	76 7e                	jbe    5b61 <__wcstr_resize_from+0x111>
    5ae3:	ba 01 00 00 00       	mov    $0x1,%edx
    5ae8:	48 8d 35 15 15 00 00 	lea    0x1515(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    5aef:	48 8d 3d 22 15 00 00 	lea    0x1522(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    5af6:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
    5afa:	e8 31 10 00 00       	callq  6b30 <__wcstr_debug>
    5aff:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
    5b03:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
    5b09:	48 81 fb ff 00 00 00 	cmp    $0xff,%rbx
    5b10:	77 69                	ja     5b7b <__wcstr_resize_from+0x12b>
    5b12:	be 10 00 00 00       	mov    $0x10,%esi
    5b17:	41 ba 03 00 00 00    	mov    $0x3,%r10d
    5b1d:	b8 01 00 00 00       	mov    $0x1,%eax
    5b22:	41 bd 10 00 00 00    	mov    $0x10,%r13d
    5b28:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    5b2e:	e9 a6 00 00 00       	jmpq   5bd9 <__wcstr_resize_from+0x189>
    5b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5b38:	85 c9                	test   %ecx,%ecx
    5b3a:	0f 85 28 04 00 00    	jne    5f68 <__wcstr_resize_from+0x518>
    5b40:	48 83 c4 38          	add    $0x38,%rsp
    5b44:	5b                   	pop    %rbx
    5b45:	5d                   	pop    %rbp
    5b46:	41 5c                	pop    %r12
    5b48:	41 5d                	pop    %r13
    5b4a:	41 5e                	pop    %r14
    5b4c:	41 5f                	pop    %r15
    5b4e:	c3                   	retq   
    5b4f:	90                   	nop
    5b50:	41 8b 46 f8          	mov    -0x8(%r14),%eax
    5b54:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    5b58:	48 39 c3             	cmp    %rax,%rbx
    5b5b:	0f 84 81 01 00 00    	je     5ce2 <__wcstr_resize_from+0x292>
    5b61:	44 89 d8             	mov    %r11d,%eax
    5b64:	48 8d 15 25 16 00 00 	lea    0x1625(%rip),%rdx        # 7190 <CSWTCH.19>
    5b6b:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    5b6e:	89 44 24 10          	mov    %eax,0x10(%rsp)
    5b72:	48 81 fb ff 00 00 00 	cmp    $0xff,%rbx
    5b79:	76 97                	jbe    5b12 <__wcstr_resize_from+0xc2>
    5b7b:	48 81 fb ff ff 00 00 	cmp    $0xffff,%rbx
    5b82:	0f 86 b8 03 00 00    	jbe    5f40 <__wcstr_resize_from+0x4f0>
    5b88:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    5b8d:	48 39 da             	cmp    %rbx,%rdx
    5b90:	48 19 f6             	sbb    %rsi,%rsi
    5b93:	81 e6 00 f0 ff 00    	and    $0xfff000,%esi
    5b99:	48 81 c6 00 10 00 00 	add    $0x1000,%rsi
    5ba0:	48 39 da             	cmp    %rbx,%rdx
    5ba3:	45 19 d2             	sbb    %r10d,%r10d
    5ba6:	41 83 e2 0c          	and    $0xc,%r10d
    5baa:	41 83 c2 0c          	add    $0xc,%r10d
    5bae:	48 39 da             	cmp    %rbx,%rdx
    5bb1:	45 19 ed             	sbb    %r13d,%r13d
    5bb4:	41 81 e5 00 f0 ff 00 	and    $0xfff000,%r13d
    5bbb:	41 81 c5 00 10 00 00 	add    $0x1000,%r13d
    5bc2:	48 39 da             	cmp    %rbx,%rdx
    5bc5:	19 c0                	sbb    %eax,%eax
    5bc7:	f7 d0                	not    %eax
    5bc9:	83 c0 04             	add    $0x4,%eax
    5bcc:	48 39 da             	cmp    %rbx,%rdx
    5bcf:	45 19 c0             	sbb    %r8d,%r8d
    5bd2:	41 f7 d0             	not    %r8d
    5bd5:	41 83 c0 04          	add    $0x4,%r8d
    5bd9:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    5be0:	00 
    5be1:	31 d2                	xor    %edx,%edx
    5be3:	88 44 24 2f          	mov    %al,0x2f(%rsp)
    5be7:	48 89 d8             	mov    %rbx,%rax
    5bea:	44 8b 7c 24 2c       	mov    0x2c(%rsp),%r15d
    5bef:	48 f7 f6             	div    %rsi
    5bf2:	44 8d 48 01          	lea    0x1(%rax),%r9d
    5bf6:	45 0f af e9          	imul   %r9d,%r13d
    5bfa:	45 01 d5             	add    %r10d,%r13d
    5bfd:	4d 63 ed             	movslq %r13d,%r13
    5c00:	49 c1 e5 02          	shl    $0x2,%r13
    5c04:	44 39 c1             	cmp    %r8d,%ecx
    5c07:	0f 84 f3 01 00 00    	je     5e00 <__wcstr_resize_from+0x3b0>
    5c0d:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    5c11:	4c 89 ee             	mov    %r13,%rsi
    5c14:	44 89 54 24 18       	mov    %r10d,0x18(%rsp)
    5c19:	44 89 5c 24 14       	mov    %r11d,0x14(%rsp)
    5c1e:	44 89 4c 24 10       	mov    %r9d,0x10(%rsp)
    5c23:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    5c28:	e8 e3 b4 ff ff       	callq  1110 <realloc@plt>
    5c2d:	44 8b 44 24 08       	mov    0x8(%rsp),%r8d
    5c32:	4c 63 4c 24 10       	movslq 0x10(%rsp),%r9
    5c37:	48 85 c0             	test   %rax,%rax
    5c3a:	44 8b 5c 24 14       	mov    0x14(%rsp),%r11d
    5c3f:	4c 63 54 24 18       	movslq 0x18(%rsp),%r10
    5c44:	49 89 c6             	mov    %rax,%r14
    5c47:	0f 84 46 06 00 00    	je     6293 <__wcstr_resize_from+0x843>
    5c4d:	41 c1 ef 18          	shr    $0x18,%r15d
    5c51:	41 83 f8 03          	cmp    $0x3,%r8d
    5c55:	0f 84 e5 04 00 00    	je     6140 <__wcstr_resize_from+0x6f0>
    5c5b:	41 83 f8 04          	cmp    $0x4,%r8d
    5c5f:	0f 84 8b 04 00 00    	je     60f0 <__wcstr_resize_from+0x6a0>
    5c65:	41 83 f8 01          	cmp    $0x1,%r8d
    5c69:	0f 84 31 04 00 00    	je     60a0 <__wcstr_resize_from+0x650>
    5c6f:	41 83 f8 02          	cmp    $0x2,%r8d
    5c73:	0f 85 4b 06 00 00    	jne    62c4 <__wcstr_resize_from+0x874>
    5c79:	66 45 89 7e 04       	mov    %r15w,0x4(%r14)
    5c7e:	4d 8d 7e 06          	lea    0x6(%r14),%r15
    5c82:	66 45 89 0e          	mov    %r9w,(%r14)
    5c86:	66 41 89 5e 02       	mov    %bx,0x2(%r14)
    5c8b:	4c 89 7d 00          	mov    %r15,0x0(%rbp)
    5c8f:	4d 85 e4             	test   %r12,%r12
    5c92:	0f 84 08 01 00 00    	je     5da0 <__wcstr_resize_from+0x350>
    5c98:	be 00 20 00 00       	mov    $0x2000,%esi
    5c9d:	4c 89 e7             	mov    %r12,%rdi
    5ca0:	e8 ab b4 ff ff       	callq  1150 <wcsnlen@plt>
    5ca5:	4c 89 e6             	mov    %r12,%rsi
    5ca8:	4c 89 ff             	mov    %r15,%rdi
    5cab:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5cb2:	00 
    5cb3:	48 89 c3             	mov    %rax,%rbx
    5cb6:	e8 15 b4 ff ff       	callq  10d0 <memcpy@plt>
    5cbb:	48 8b 45 00          	mov    0x0(%rbp),%rax
    5cbf:	66 89 58 fa          	mov    %bx,-0x6(%rax)
    5cc3:	e9 11 01 00 00       	jmpq   5dd9 <__wcstr_resize_from+0x389>
    5cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5ccf:	00 
    5cd0:	41 0f b6 46 fe       	movzbl -0x2(%r14),%eax
    5cd5:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    5cd9:	48 39 c3             	cmp    %rax,%rbx
    5cdc:	0f 85 7f fe ff ff    	jne    5b61 <__wcstr_resize_from+0x111>
    5ce2:	4d 85 e4             	test   %r12,%r12
    5ce5:	0f 84 d9 01 00 00    	je     5ec4 <__wcstr_resize_from+0x474>
    5ceb:	be 00 20 00 00       	mov    $0x2000,%esi
    5cf0:	4c 89 e7             	mov    %r12,%rdi
    5cf3:	e8 58 b4 ff ff       	callq  1150 <wcsnlen@plt>
    5cf8:	4c 89 ff             	mov    %r15,%rdi
    5cfb:	4c 89 e6             	mov    %r12,%rsi
    5cfe:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5d05:	00 
    5d06:	49 89 c6             	mov    %rax,%r14
    5d09:	e8 c2 b3 ff ff       	callq  10d0 <memcpy@plt>
    5d0e:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
    5d12:	41 80 fd 02          	cmp    $0x2,%r13b
    5d16:	0f 84 c9 01 00 00    	je     5ee5 <__wcstr_resize_from+0x495>
    5d1c:	41 80 fd 03          	cmp    $0x3,%r13b
    5d20:	0f 85 7a 01 00 00    	jne    5ea0 <__wcstr_resize_from+0x450>
    5d26:	45 89 77 f4          	mov    %r14d,-0xc(%r15)
    5d2a:	41 c7 44 9f fc 00 00 	movl   $0x0,-0x4(%r15,%rbx,4)
    5d31:	00 00 
    5d33:	48 83 c4 38          	add    $0x38,%rsp
    5d37:	5b                   	pop    %rbx
    5d38:	5d                   	pop    %rbp
    5d39:	41 5c                	pop    %r12
    5d3b:	41 5d                	pop    %r13
    5d3d:	41 5e                	pop    %r14
    5d3f:	41 5f                	pop    %r15
    5d41:	c3                   	retq   
    5d42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5d48:	41 0f b7 46 fc       	movzwl -0x4(%r14),%eax
    5d4d:	e9 02 fe ff ff       	jmpq   5b54 <__wcstr_resize_from+0x104>
    5d52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5d58:	4d 85 e4             	test   %r12,%r12
    5d5b:	0f 84 5f 01 00 00    	je     5ec0 <__wcstr_resize_from+0x470>
    5d61:	be 00 20 00 00       	mov    $0x2000,%esi
    5d66:	4c 89 e7             	mov    %r12,%rdi
    5d69:	e8 e2 b3 ff ff       	callq  1150 <wcsnlen@plt>
    5d6e:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    5d72:	4c 89 e6             	mov    %r12,%rsi
    5d75:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5d7c:	00 
    5d7d:	e8 4e b3 ff ff       	callq  10d0 <memcpy@plt>
    5d82:	ba 01 00 00 00       	mov    $0x1,%edx
    5d87:	48 8d 35 76 12 00 00 	lea    0x1276(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    5d8e:	48 8d 3d d9 12 00 00 	lea    0x12d9(%rip),%rdi        # 706e <_IO_stdin_used+0x6e>
    5d95:	e8 96 0d 00 00       	callq  6b30 <__wcstr_debug>
    5d9a:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
    5d9e:	eb 8a                	jmp    5d2a <__wcstr_resize_from+0x2da>
    5da0:	4c 8d 24 9d 00 00 00 	lea    0x0(,%rbx,4),%r12
    5da7:	00 
    5da8:	4b 8d 2c 96          	lea    (%r14,%r10,4),%rbp
    5dac:	41 83 fb 03          	cmp    $0x3,%r11d
    5db0:	0f 87 ca 02 00 00    	ja     6080 <__wcstr_resize_from+0x630>
    5db6:	48 8d 05 d3 13 00 00 	lea    0x13d3(%rip),%rax        # 7190 <CSWTCH.19>
    5dbd:	42 8b 04 98          	mov    (%rax,%r11,4),%eax
    5dc1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    5dc5:	48 63 44 24 1c       	movslq 0x1c(%rsp),%rax
    5dca:	4c 89 e2             	mov    %r12,%rdx
    5dcd:	48 89 ee             	mov    %rbp,%rsi
    5dd0:	49 8d 3c 86          	lea    (%r14,%rax,4),%rdi
    5dd4:	e8 47 b3 ff ff       	callq  1120 <memmove@plt>
    5dd9:	43 c7 44 2e fc 00 00 	movl   $0x0,-0x4(%r14,%r13,1)
    5de0:	00 00 
    5de2:	48 83 c4 38          	add    $0x38,%rsp
    5de6:	5b                   	pop    %rbx
    5de7:	5d                   	pop    %rbp
    5de8:	41 5c                	pop    %r12
    5dea:	41 5d                	pop    %r13
    5dec:	41 5e                	pop    %r14
    5dee:	41 5f                	pop    %r15
    5df0:	c3                   	retq   
    5df1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5df8:	c3                   	retq   
    5df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5e00:	48 63 44 24 10       	movslq 0x10(%rsp),%rax
    5e05:	4c 89 f7             	mov    %r14,%rdi
    5e08:	4c 89 ee             	mov    %r13,%rsi
    5e0b:	44 89 4c 24 14       	mov    %r9d,0x14(%rsp)
    5e10:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    5e15:	48 29 c7             	sub    %rax,%rdi
    5e18:	e8 f3 b2 ff ff       	callq  1110 <realloc@plt>
    5e1d:	44 8b 44 24 08       	mov    0x8(%rsp),%r8d
    5e22:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
    5e27:	48 85 c0             	test   %rax,%rax
    5e2a:	0f 84 0d 05 00 00    	je     633d <__wcstr_resize_from+0x8ed>
    5e30:	42 c7 44 28 fc 00 00 	movl   $0x0,-0x4(%rax,%r13,1)
    5e37:	00 00 
    5e39:	41 c1 ef 18          	shr    $0x18,%r15d
    5e3d:	41 83 f8 02          	cmp    $0x2,%r8d
    5e41:	0f 84 89 03 00 00    	je     61d0 <__wcstr_resize_from+0x780>
    5e47:	41 83 f8 03          	cmp    $0x3,%r8d
    5e4b:	0f 85 9f 00 00 00    	jne    5ef0 <__wcstr_resize_from+0x4a0>
    5e51:	4c 8d 68 0c          	lea    0xc(%rax),%r13
    5e55:	44 89 08             	mov    %r9d,(%rax)
    5e58:	89 58 04             	mov    %ebx,0x4(%rax)
    5e5b:	44 89 78 08          	mov    %r15d,0x8(%rax)
    5e5f:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
    5e63:	4d 85 e4             	test   %r12,%r12
    5e66:	0f 84 d4 fc ff ff    	je     5b40 <__wcstr_resize_from+0xf0>
    5e6c:	be 00 20 00 00       	mov    $0x2000,%esi
    5e71:	4c 89 e7             	mov    %r12,%rdi
    5e74:	e8 d7 b2 ff ff       	callq  1150 <wcsnlen@plt>
    5e79:	4c 89 e6             	mov    %r12,%rsi
    5e7c:	4c 89 ef             	mov    %r13,%rdi
    5e7f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5e86:	00 
    5e87:	48 89 c3             	mov    %rax,%rbx
    5e8a:	e8 41 b2 ff ff       	callq  10d0 <memcpy@plt>
    5e8f:	48 8b 45 00          	mov    0x0(%rbp),%rax
    5e93:	89 58 f4             	mov    %ebx,-0xc(%rax)
    5e96:	e9 a5 fc ff ff       	jmpq   5b40 <__wcstr_resize_from+0xf0>
    5e9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5ea0:	41 80 fd 01          	cmp    $0x1,%r13b
    5ea4:	0f 85 d8 fe ff ff    	jne    5d82 <__wcstr_resize_from+0x332>
    5eaa:	45 88 77 fd          	mov    %r14b,-0x3(%r15)
    5eae:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
    5eb2:	e9 73 fe ff ff       	jmpq   5d2a <__wcstr_resize_from+0x2da>
    5eb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    5ebe:	00 00 
    5ec0:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
    5ec4:	41 80 fd 03          	cmp    $0x3,%r13b
    5ec8:	0f 84 f2 02 00 00    	je     61c0 <__wcstr_resize_from+0x770>
    5ece:	41 80 fd 01          	cmp    $0x1,%r13b
    5ed2:	0f 84 b8 02 00 00    	je     6190 <__wcstr_resize_from+0x740>
    5ed8:	41 80 fd 02          	cmp    $0x2,%r13b
    5edc:	0f 85 a0 fe ff ff    	jne    5d82 <__wcstr_resize_from+0x332>
    5ee2:	49 89 de             	mov    %rbx,%r14
    5ee5:	66 45 89 77 fa       	mov    %r14w,-0x6(%r15)
    5eea:	e9 3b fe ff ff       	jmpq   5d2a <__wcstr_resize_from+0x2da>
    5eef:	90                   	nop
    5ef0:	4c 8d 68 03          	lea    0x3(%rax),%r13
    5ef4:	44 88 08             	mov    %r9b,(%rax)
    5ef7:	88 58 01             	mov    %bl,0x1(%rax)
    5efa:	44 88 78 02          	mov    %r15b,0x2(%rax)
    5efe:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
    5f02:	4d 85 e4             	test   %r12,%r12
    5f05:	0f 84 35 fc ff ff    	je     5b40 <__wcstr_resize_from+0xf0>
    5f0b:	be 00 20 00 00       	mov    $0x2000,%esi
    5f10:	4c 89 e7             	mov    %r12,%rdi
    5f13:	e8 38 b2 ff ff       	callq  1150 <wcsnlen@plt>
    5f18:	4c 89 e6             	mov    %r12,%rsi
    5f1b:	4c 89 ef             	mov    %r13,%rdi
    5f1e:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5f25:	00 
    5f26:	48 89 c3             	mov    %rax,%rbx
    5f29:	e8 a2 b1 ff ff       	callq  10d0 <memcpy@plt>
    5f2e:	48 8b 45 00          	mov    0x0(%rbp),%rax
    5f32:	88 58 fd             	mov    %bl,-0x3(%rax)
    5f35:	e9 06 fc ff ff       	jmpq   5b40 <__wcstr_resize_from+0xf0>
    5f3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5f40:	be 00 04 00 00       	mov    $0x400,%esi
    5f45:	41 ba 06 00 00 00    	mov    $0x6,%r10d
    5f4b:	b8 02 00 00 00       	mov    $0x2,%eax
    5f50:	41 bd 00 04 00 00    	mov    $0x400,%r13d
    5f56:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    5f5c:	e9 78 fc ff ff       	jmpq   5bd9 <__wcstr_resize_from+0x189>
    5f61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5f68:	48 81 fa ff 00 00 00 	cmp    $0xff,%rdx
    5f6f:	0f 86 2b 02 00 00    	jbe    61a0 <__wcstr_resize_from+0x750>
    5f75:	48 81 fa ff ff 00 00 	cmp    $0xffff,%rdx
    5f7c:	0f 86 f1 02 00 00    	jbe    6273 <__wcstr_resize_from+0x823>
    5f82:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    5f87:	48 39 da             	cmp    %rbx,%rdx
    5f8a:	48 19 f6             	sbb    %rsi,%rsi
    5f8d:	81 e6 00 f0 ff 00    	and    $0xfff000,%esi
    5f93:	48 81 c6 00 10 00 00 	add    $0x1000,%rsi
    5f9a:	48 39 da             	cmp    %rbx,%rdx
    5f9d:	19 c0                	sbb    %eax,%eax
    5f9f:	f7 d0                	not    %eax
    5fa1:	83 c0 04             	add    $0x4,%eax
    5fa4:	48 39 da             	cmp    %rbx,%rdx
    5fa7:	45 19 ed             	sbb    %r13d,%r13d
    5faa:	41 83 e5 0c          	and    $0xc,%r13d
    5fae:	41 83 c5 0c          	add    $0xc,%r13d
    5fb2:	48 39 da             	cmp    %rbx,%rdx
    5fb5:	19 c9                	sbb    %ecx,%ecx
    5fb7:	81 e1 00 f0 ff 00    	and    $0xfff000,%ecx
    5fbd:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    5fc3:	48 39 da             	cmp    %rbx,%rdx
    5fc6:	45 19 ff             	sbb    %r15d,%r15d
    5fc9:	41 f7 d7             	not    %r15d
    5fcc:	41 83 c7 04          	add    $0x4,%r15d
    5fd0:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    5fd7:	00 
    5fd8:	31 d2                	xor    %edx,%edx
    5fda:	88 44 24 2f          	mov    %al,0x2f(%rsp)
    5fde:	48 89 d8             	mov    %rbx,%rax
    5fe1:	44 8b 74 24 2c       	mov    0x2c(%rsp),%r14d
    5fe6:	48 f7 f6             	div    %rsi
    5fe9:	44 8d 40 01          	lea    0x1(%rax),%r8d
    5fed:	41 0f af c8          	imul   %r8d,%ecx
    5ff1:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    5ff6:	41 01 cd             	add    %ecx,%r13d
    5ff9:	4d 63 ed             	movslq %r13d,%r13
    5ffc:	49 c1 e5 02          	shl    $0x2,%r13
    6000:	4c 89 ef             	mov    %r13,%rdi
    6003:	e8 f8 b0 ff ff       	callq  1100 <malloc@plt>
    6008:	4c 63 44 24 08       	movslq 0x8(%rsp),%r8
    600d:	48 85 c0             	test   %rax,%rax
    6010:	48 89 c1             	mov    %rax,%rcx
    6013:	0f 84 5a 03 00 00    	je     6373 <__wcstr_resize_from+0x923>
    6019:	41 c1 ee 18          	shr    $0x18,%r14d
    601d:	41 83 ff 03          	cmp    $0x3,%r15d
    6021:	0f 84 39 02 00 00    	je     6260 <__wcstr_resize_from+0x810>
    6027:	41 83 ff 04          	cmp    $0x4,%r15d
    602b:	0f 84 0f 02 00 00    	je     6240 <__wcstr_resize_from+0x7f0>
    6031:	41 83 ff 02          	cmp    $0x2,%r15d
    6035:	0f 84 e5 01 00 00    	je     6220 <__wcstr_resize_from+0x7d0>
    603b:	44 88 01             	mov    %r8b,(%rcx)
    603e:	48 8d 79 03          	lea    0x3(%rcx),%rdi
    6042:	88 59 01             	mov    %bl,0x1(%rcx)
    6045:	44 88 71 02          	mov    %r14b,0x2(%rcx)
    6049:	48 89 7d 00          	mov    %rdi,0x0(%rbp)
    604d:	4d 85 e4             	test   %r12,%r12
    6050:	74 1a                	je     606c <__wcstr_resize_from+0x61c>
    6052:	48 8d 14 9d 00 00 00 	lea    0x0(,%rbx,4),%rdx
    6059:	00 
    605a:	4c 89 e6             	mov    %r12,%rsi
    605d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    6062:	e8 69 b0 ff ff       	callq  10d0 <memcpy@plt>
    6067:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    606c:	42 c7 44 29 fc 00 00 	movl   $0x0,-0x4(%rcx,%r13,1)
    6073:	00 00 
    6075:	e9 c6 fa ff ff       	jmpq   5b40 <__wcstr_resize_from+0xf0>
    607a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6080:	ba 01 00 00 00       	mov    $0x1,%edx
    6085:	48 8d 35 78 0f 00 00 	lea    0xf78(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    608c:	48 8d 3d 85 0f 00 00 	lea    0xf85(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    6093:	e8 98 0a 00 00       	callq  6b30 <__wcstr_debug>
    6098:	e9 28 fd ff ff       	jmpq   5dc5 <__wcstr_resize_from+0x375>
    609d:	0f 1f 00             	nopl   (%rax)
    60a0:	45 88 7e 02          	mov    %r15b,0x2(%r14)
    60a4:	4d 8d 7e 03          	lea    0x3(%r14),%r15
    60a8:	45 88 0e             	mov    %r9b,(%r14)
    60ab:	41 88 5e 01          	mov    %bl,0x1(%r14)
    60af:	4c 89 7d 00          	mov    %r15,0x0(%rbp)
    60b3:	4d 85 e4             	test   %r12,%r12
    60b6:	0f 84 e4 fc ff ff    	je     5da0 <__wcstr_resize_from+0x350>
    60bc:	be 00 20 00 00       	mov    $0x2000,%esi
    60c1:	4c 89 e7             	mov    %r12,%rdi
    60c4:	e8 87 b0 ff ff       	callq  1150 <wcsnlen@plt>
    60c9:	4c 89 e6             	mov    %r12,%rsi
    60cc:	4c 89 ff             	mov    %r15,%rdi
    60cf:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    60d6:	00 
    60d7:	48 89 c3             	mov    %rax,%rbx
    60da:	e8 f1 af ff ff       	callq  10d0 <memcpy@plt>
    60df:	48 8b 45 00          	mov    0x0(%rbp),%rax
    60e3:	88 58 fd             	mov    %bl,-0x3(%rax)
    60e6:	e9 ee fc ff ff       	jmpq   5dd9 <__wcstr_resize_from+0x389>
    60eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    60f0:	45 0f b6 ff          	movzbl %r15b,%r15d
    60f4:	4d 89 0e             	mov    %r9,(%r14)
    60f7:	4d 89 7e 10          	mov    %r15,0x10(%r14)
    60fb:	4d 8d 7e 18          	lea    0x18(%r14),%r15
    60ff:	49 89 5e 08          	mov    %rbx,0x8(%r14)
    6103:	4c 89 7d 00          	mov    %r15,0x0(%rbp)
    6107:	4d 85 e4             	test   %r12,%r12
    610a:	0f 84 90 fc ff ff    	je     5da0 <__wcstr_resize_from+0x350>
    6110:	be 00 20 00 00       	mov    $0x2000,%esi
    6115:	4c 89 e7             	mov    %r12,%rdi
    6118:	e8 33 b0 ff ff       	callq  1150 <wcsnlen@plt>
    611d:	4c 89 e6             	mov    %r12,%rsi
    6120:	4c 89 ff             	mov    %r15,%rdi
    6123:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    612a:	00 
    612b:	48 89 c3             	mov    %rax,%rbx
    612e:	e8 9d af ff ff       	callq  10d0 <memcpy@plt>
    6133:	48 8b 45 00          	mov    0x0(%rbp),%rax
    6137:	48 89 58 e8          	mov    %rbx,-0x18(%rax)
    613b:	e9 99 fc ff ff       	jmpq   5dd9 <__wcstr_resize_from+0x389>
    6140:	45 89 7e 08          	mov    %r15d,0x8(%r14)
    6144:	4d 8d 7e 0c          	lea    0xc(%r14),%r15
    6148:	45 89 0e             	mov    %r9d,(%r14)
    614b:	41 89 5e 04          	mov    %ebx,0x4(%r14)
    614f:	4c 89 7d 00          	mov    %r15,0x0(%rbp)
    6153:	4d 85 e4             	test   %r12,%r12
    6156:	0f 84 44 fc ff ff    	je     5da0 <__wcstr_resize_from+0x350>
    615c:	be 00 20 00 00       	mov    $0x2000,%esi
    6161:	4c 89 e7             	mov    %r12,%rdi
    6164:	e8 e7 af ff ff       	callq  1150 <wcsnlen@plt>
    6169:	4c 89 e6             	mov    %r12,%rsi
    616c:	4c 89 ff             	mov    %r15,%rdi
    616f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    6176:	00 
    6177:	48 89 c3             	mov    %rax,%rbx
    617a:	e8 51 af ff ff       	callq  10d0 <memcpy@plt>
    617f:	48 8b 45 00          	mov    0x0(%rbp),%rax
    6183:	89 58 f4             	mov    %ebx,-0xc(%rax)
    6186:	e9 4e fc ff ff       	jmpq   5dd9 <__wcstr_resize_from+0x389>
    618b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6190:	49 89 de             	mov    %rbx,%r14
    6193:	e9 12 fd ff ff       	jmpq   5eaa <__wcstr_resize_from+0x45a>
    6198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    619f:	00 
    61a0:	be 10 00 00 00       	mov    $0x10,%esi
    61a5:	b8 01 00 00 00       	mov    $0x1,%eax
    61aa:	b9 10 00 00 00       	mov    $0x10,%ecx
    61af:	41 bd 03 00 00 00    	mov    $0x3,%r13d
    61b5:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    61bb:	e9 10 fe ff ff       	jmpq   5fd0 <__wcstr_resize_from+0x580>
    61c0:	49 89 de             	mov    %rbx,%r14
    61c3:	e9 5e fb ff ff       	jmpq   5d26 <__wcstr_resize_from+0x2d6>
    61c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    61cf:	00 
    61d0:	4c 8d 68 06          	lea    0x6(%rax),%r13
    61d4:	66 44 89 08          	mov    %r9w,(%rax)
    61d8:	66 89 58 02          	mov    %bx,0x2(%rax)
    61dc:	66 44 89 78 04       	mov    %r15w,0x4(%rax)
    61e1:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
    61e5:	4d 85 e4             	test   %r12,%r12
    61e8:	0f 84 52 f9 ff ff    	je     5b40 <__wcstr_resize_from+0xf0>
    61ee:	be 00 20 00 00       	mov    $0x2000,%esi
    61f3:	4c 89 e7             	mov    %r12,%rdi
    61f6:	e8 55 af ff ff       	callq  1150 <wcsnlen@plt>
    61fb:	4c 89 e6             	mov    %r12,%rsi
    61fe:	4c 89 ef             	mov    %r13,%rdi
    6201:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    6208:	00 
    6209:	48 89 c3             	mov    %rax,%rbx
    620c:	e8 bf ae ff ff       	callq  10d0 <memcpy@plt>
    6211:	48 8b 45 00          	mov    0x0(%rbp),%rax
    6215:	66 89 58 fa          	mov    %bx,-0x6(%rax)
    6219:	e9 22 f9 ff ff       	jmpq   5b40 <__wcstr_resize_from+0xf0>
    621e:	66 90                	xchg   %ax,%ax
    6220:	66 44 89 01          	mov    %r8w,(%rcx)
    6224:	48 8d 79 06          	lea    0x6(%rcx),%rdi
    6228:	66 89 59 02          	mov    %bx,0x2(%rcx)
    622c:	66 44 89 71 04       	mov    %r14w,0x4(%rcx)
    6231:	e9 13 fe ff ff       	jmpq   6049 <__wcstr_resize_from+0x5f9>
    6236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    623d:	00 00 00 
    6240:	45 0f b6 f6          	movzbl %r14b,%r14d
    6244:	4c 89 01             	mov    %r8,(%rcx)
    6247:	48 8d 79 18          	lea    0x18(%rcx),%rdi
    624b:	48 89 59 08          	mov    %rbx,0x8(%rcx)
    624f:	4c 89 71 10          	mov    %r14,0x10(%rcx)
    6253:	e9 f1 fd ff ff       	jmpq   6049 <__wcstr_resize_from+0x5f9>
    6258:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    625f:	00 
    6260:	44 89 01             	mov    %r8d,(%rcx)
    6263:	48 8d 79 0c          	lea    0xc(%rcx),%rdi
    6267:	89 59 04             	mov    %ebx,0x4(%rcx)
    626a:	44 89 71 08          	mov    %r14d,0x8(%rcx)
    626e:	e9 d6 fd ff ff       	jmpq   6049 <__wcstr_resize_from+0x5f9>
    6273:	be 00 04 00 00       	mov    $0x400,%esi
    6278:	b8 02 00 00 00       	mov    $0x2,%eax
    627d:	b9 00 04 00 00       	mov    $0x400,%ecx
    6282:	41 bd 06 00 00 00    	mov    $0x6,%r13d
    6288:	41 bf 02 00 00 00    	mov    $0x2,%r15d
    628e:	e9 3d fd ff ff       	jmpq   5fd0 <__wcstr_resize_from+0x580>
    6293:	ba 02 00 00 00       	mov    $0x2,%edx
    6298:	48 8d 35 55 0e 00 00 	lea    0xe55(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    629f:	48 8d 3d 60 0e 00 00 	lea    0xe60(%rip),%rdi        # 7106 <_IO_stdin_used+0x106>
    62a6:	e8 85 08 00 00       	callq  6b30 <__wcstr_debug>
    62ab:	4c 63 54 24 18       	movslq 0x18(%rsp),%r10
    62b0:	44 8b 5c 24 14       	mov    0x14(%rsp),%r11d
    62b5:	4c 63 4c 24 10       	movslq 0x10(%rsp),%r9
    62ba:	44 8b 44 24 08       	mov    0x8(%rsp),%r8d
    62bf:	e9 89 f9 ff ff       	jmpq   5c4d <__wcstr_resize_from+0x1fd>
    62c4:	ba 01 00 00 00       	mov    $0x1,%edx
    62c9:	48 8d 35 34 0d 00 00 	lea    0xd34(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    62d0:	44 89 54 24 10       	mov    %r10d,0x10(%rsp)
    62d5:	48 8d 3d b7 0d 00 00 	lea    0xdb7(%rip),%rdi        # 7093 <_IO_stdin_used+0x93>
    62dc:	44 89 5c 24 08       	mov    %r11d,0x8(%rsp)
    62e1:	e8 4a 08 00 00       	callq  6b30 <__wcstr_debug>
    62e6:	4d 85 e4             	test   %r12,%r12
    62e9:	44 8b 5c 24 08       	mov    0x8(%rsp),%r11d
    62ee:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
    62f5:	00 
    62f6:	4c 63 54 24 10       	movslq 0x10(%rsp),%r10
    62fb:	0f 84 9f fa ff ff    	je     5da0 <__wcstr_resize_from+0x350>
    6301:	4c 89 e7             	mov    %r12,%rdi
    6304:	be 00 20 00 00       	mov    $0x2000,%esi
    6309:	e8 42 ae ff ff       	callq  1150 <wcsnlen@plt>
    630e:	4c 89 e6             	mov    %r12,%rsi
    6311:	31 ff                	xor    %edi,%edi
    6313:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    631a:	00 
    631b:	e8 b0 ad ff ff       	callq  10d0 <memcpy@plt>
    6320:	ba 01 00 00 00       	mov    $0x1,%edx
    6325:	48 8d 35 d8 0c 00 00 	lea    0xcd8(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    632c:	48 8d 3d 3b 0d 00 00 	lea    0xd3b(%rip),%rdi        # 706e <_IO_stdin_used+0x6e>
    6333:	e8 f8 07 00 00       	callq  6b30 <__wcstr_debug>
    6338:	e9 9c fa ff ff       	jmpq   5dd9 <__wcstr_resize_from+0x389>
    633d:	ba 02 00 00 00       	mov    $0x2,%edx
    6342:	48 8d 35 ab 0d 00 00 	lea    0xdab(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    6349:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    634e:	48 8d 3d b1 0d 00 00 	lea    0xdb1(%rip),%rdi        # 7106 <_IO_stdin_used+0x106>
    6355:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    635a:	e8 d1 07 00 00       	callq  6b30 <__wcstr_debug>
    635f:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
    6364:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
    6369:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    636e:	e9 bd fa ff ff       	jmpq   5e30 <__wcstr_resize_from+0x3e0>
    6373:	ba 02 00 00 00       	mov    $0x2,%edx
    6378:	48 8d 35 75 0d 00 00 	lea    0xd75(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    637f:	44 89 44 24 10       	mov    %r8d,0x10(%rsp)
    6384:	48 8d 3d 7b 0d 00 00 	lea    0xd7b(%rip),%rdi        # 7106 <_IO_stdin_used+0x106>
    638b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    6390:	e8 9b 07 00 00       	callq  6b30 <__wcstr_debug>
    6395:	4c 63 44 24 10       	movslq 0x10(%rsp),%r8
    639a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    639f:	e9 75 fc ff ff       	jmpq   6019 <__wcstr_resize_from+0x5c9>
    63a4:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    63ab:	00 00 00 00 
    63af:	90                   	nop

00000000000063b0 <wcstr_resize>:
    63b0:	48 89 f2             	mov    %rsi,%rdx
    63b3:	31 c9                	xor    %ecx,%ecx
    63b5:	31 f6                	xor    %esi,%esi
    63b7:	e9 94 f6 ff ff       	jmpq   5a50 <__wcstr_resize_from>
    63bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000063c0 <wcstr_trim>:
    63c0:	48 85 ff             	test   %rdi,%rdi
    63c3:	0f 84 07 02 00 00    	je     65d0 <wcstr_trim+0x210>
    63c9:	41 57                	push   %r15
    63cb:	41 56                	push   %r14
    63cd:	41 55                	push   %r13
    63cf:	41 54                	push   %r12
    63d1:	55                   	push   %rbp
    63d2:	48 89 fd             	mov    %rdi,%rbp
    63d5:	53                   	push   %rbx
    63d6:	48 83 ec 48          	sub    $0x48,%rsp
    63da:	48 8b 37             	mov    (%rdi),%rsi
    63dd:	44 0f b6 7e ff       	movzbl -0x1(%rsi),%r15d
    63e2:	44 89 fb             	mov    %r15d,%ebx
    63e5:	41 83 e7 03          	and    $0x3,%r15d
    63e9:	83 e3 03             	and    $0x3,%ebx
    63ec:	80 fb 02             	cmp    $0x2,%bl
    63ef:	0f 84 6b 02 00 00    	je     6660 <wcstr_trim+0x2a0>
    63f5:	80 fb 03             	cmp    $0x3,%bl
    63f8:	0f 84 02 02 00 00    	je     6600 <wcstr_trim+0x240>
    63fe:	80 fb 01             	cmp    $0x1,%bl
    6401:	0f 84 d1 01 00 00    	je     65d8 <wcstr_trim+0x218>
    6407:	48 8d 35 f6 0b 00 00 	lea    0xbf6(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    640e:	ba 01 00 00 00       	mov    $0x1,%edx
    6413:	44 89 5c 24 08       	mov    %r11d,0x8(%rsp)
    6418:	48 8d 3d 15 0c 00 00 	lea    0xc15(%rip),%rdi        # 7034 <_IO_stdin_used+0x34>
    641f:	e8 0c 07 00 00       	callq  6b30 <__wcstr_debug>
    6424:	48 8b 75 00          	mov    0x0(%rbp),%rsi
    6428:	44 8b 5c 24 08       	mov    0x8(%rsp),%r11d
    642d:	49 81 fe ff 00 00 00 	cmp    $0xff,%r14
    6434:	0f 8e a3 01 00 00    	jle    65dd <wcstr_trim+0x21d>
    643a:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    6441:	19 c0                	sbb    %eax,%eax
    6443:	83 c0 03             	add    $0x3,%eax
    6446:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    644d:	48 19 ff             	sbb    %rdi,%rdi
    6450:	48 81 e7 00 f4 ff ff 	and    $0xfffffffffffff400,%rdi
    6457:	48 81 c7 00 10 00 00 	add    $0x1000,%rdi
    645e:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    6465:	45 19 ed             	sbb    %r13d,%r13d
    6468:	41 83 e5 fa          	and    $0xfffffffa,%r13d
    646c:	41 83 c5 0c          	add    $0xc,%r13d
    6470:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    6477:	19 c9                	sbb    %ecx,%ecx
    6479:	81 e1 00 f4 ff ff    	and    $0xfffff400,%ecx
    647f:	81 c1 00 10 00 00    	add    $0x1000,%ecx
    6485:	49 81 fe 00 00 01 00 	cmp    $0x10000,%r14
    648c:	45 19 e4             	sbb    %r12d,%r12d
    648f:	41 83 c4 03          	add    $0x3,%r12d
    6493:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    649a:	00 
    649b:	31 d2                	xor    %edx,%edx
    649d:	88 44 24 3f          	mov    %al,0x3f(%rsp)
    64a1:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
    64a5:	89 44 24 14          	mov    %eax,0x14(%rsp)
    64a9:	4c 89 f0             	mov    %r14,%rax
    64ac:	48 f7 f7             	div    %rdi
    64af:	83 c0 01             	add    $0x1,%eax
    64b2:	0f af c8             	imul   %eax,%ecx
    64b5:	89 44 24 08          	mov    %eax,0x8(%rsp)
    64b9:	44 01 e9             	add    %r13d,%ecx
    64bc:	80 fb 02             	cmp    $0x2,%bl
    64bf:	0f 84 8b 01 00 00    	je     6650 <wcstr_trim+0x290>
    64c5:	80 fb 03             	cmp    $0x3,%bl
    64c8:	0f 84 72 01 00 00    	je     6640 <wcstr_trim+0x280>
    64ce:	80 fb 01             	cmp    $0x1,%bl
    64d1:	0f 84 99 01 00 00    	je     6670 <wcstr_trim+0x2b0>
    64d7:	ba 01 00 00 00       	mov    $0x1,%edx
    64dc:	48 8d 35 21 0b 00 00 	lea    0xb21(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    64e3:	48 8d 3d 3c 0b 00 00 	lea    0xb3c(%rip),%rdi        # 7026 <_IO_stdin_used+0x26>
    64ea:	44 89 5c 24 28       	mov    %r11d,0x28(%rsp)
    64ef:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
    64f3:	e8 38 06 00 00       	callq  6b30 <__wcstr_debug>
    64f8:	44 8b 5c 24 28       	mov    0x28(%rsp),%r11d
    64fd:	8b 4c 24 20          	mov    0x20(%rsp),%ecx
    6501:	44 3b 5c 24 08       	cmp    0x8(%rsp),%r11d
    6506:	0f 84 ae 00 00 00    	je     65ba <wcstr_trim+0x1fa>
    650c:	48 63 c9             	movslq %ecx,%rcx
    650f:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    6513:	48 8d 1c 8d 00 00 00 	lea    0x0(,%rcx,4),%rbx
    651a:	00 
    651b:	48 89 de             	mov    %rbx,%rsi
    651e:	45 39 e7             	cmp    %r12d,%r15d
    6521:	0f 84 e9 00 00 00    	je     6610 <wcstr_trim+0x250>
    6527:	e8 e4 ab ff ff       	callq  1110 <realloc@plt>
    652c:	48 89 c1             	mov    %rax,%rcx
    652f:	48 85 c0             	test   %rax,%rax
    6532:	0f 84 aa 01 00 00    	je     66e2 <wcstr_trim+0x322>
    6538:	4d 63 cd             	movslq %r13d,%r9
    653b:	41 83 ef 01          	sub    $0x1,%r15d
    653f:	4e 8d 1c b5 00 00 00 	lea    0x0(,%r14,4),%r11
    6546:	00 
    6547:	4e 8d 2c 89          	lea    (%rcx,%r9,4),%r13
    654b:	41 83 ff 03          	cmp    $0x3,%r15d
    654f:	0f 87 2b 01 00 00    	ja     6680 <wcstr_trim+0x2c0>
    6555:	48 8d 05 34 0c 00 00 	lea    0xc34(%rip),%rax        # 7190 <CSWTCH.19>
    655c:	42 8b 04 b8          	mov    (%rax,%r15,4),%eax
    6560:	89 44 24 18          	mov    %eax,0x18(%rsp)
    6564:	48 63 44 24 18       	movslq 0x18(%rsp),%rax
    6569:	4c 89 da             	mov    %r11,%rdx
    656c:	4c 89 ee             	mov    %r13,%rsi
    656f:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    6574:	48 8d 3c 81          	lea    (%rcx,%rax,4),%rdi
    6578:	e8 a3 ab ff ff       	callq  1120 <memmove@plt>
    657d:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    6582:	8b 44 24 14          	mov    0x14(%rsp),%eax
    6586:	c7 44 19 fc 00 00 00 	movl   $0x0,-0x4(%rcx,%rbx,1)
    658d:	00 
    658e:	c1 e8 18             	shr    $0x18,%eax
    6591:	41 83 fc 03          	cmp    $0x3,%r12d
    6595:	0f 84 35 01 00 00    	je     66d0 <wcstr_trim+0x310>
    659b:	41 83 fc 01          	cmp    $0x1,%r12d
    659f:	0f 84 13 01 00 00    	je     66b8 <wcstr_trim+0x2f8>
    65a5:	0f b7 54 24 08       	movzwl 0x8(%rsp),%edx
    65aa:	66 44 89 71 02       	mov    %r14w,0x2(%rcx)
    65af:	66 89 41 04          	mov    %ax,0x4(%rcx)
    65b3:	66 89 11             	mov    %dx,(%rcx)
    65b6:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
    65ba:	48 83 c4 48          	add    $0x48,%rsp
    65be:	5b                   	pop    %rbx
    65bf:	5d                   	pop    %rbp
    65c0:	41 5c                	pop    %r12
    65c2:	41 5d                	pop    %r13
    65c4:	41 5e                	pop    %r14
    65c6:	41 5f                	pop    %r15
    65c8:	c3                   	retq   
    65c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    65d0:	c3                   	retq   
    65d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    65d8:	44 0f b6 76 fe       	movzbl -0x2(%rsi),%r14d
    65dd:	b8 01 00 00 00       	mov    $0x1,%eax
    65e2:	bf 10 00 00 00       	mov    $0x10,%edi
    65e7:	b9 10 00 00 00       	mov    $0x10,%ecx
    65ec:	41 bd 03 00 00 00    	mov    $0x3,%r13d
    65f2:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    65f8:	e9 96 fe ff ff       	jmpq   6493 <wcstr_trim+0xd3>
    65fd:	0f 1f 00             	nopl   (%rax)
    6600:	44 8b 76 f8          	mov    -0x8(%rsi),%r14d
    6604:	e9 24 fe ff ff       	jmpq   642d <wcstr_trim+0x6d>
    6609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6610:	e8 fb aa ff ff       	callq  1110 <realloc@plt>
    6615:	48 85 c0             	test   %rax,%rax
    6618:	0f 84 eb 00 00 00    	je     6709 <wcstr_trim+0x349>
    661e:	4d 63 cd             	movslq %r13d,%r9
    6621:	c7 44 18 fc 00 00 00 	movl   $0x0,-0x4(%rax,%rbx,1)
    6628:	00 
    6629:	4a 8d 04 88          	lea    (%rax,%r9,4),%rax
    662d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    6631:	48 83 c4 48          	add    $0x48,%rsp
    6635:	5b                   	pop    %rbx
    6636:	5d                   	pop    %rbp
    6637:	41 5c                	pop    %r12
    6639:	41 5d                	pop    %r13
    663b:	41 5e                	pop    %r14
    663d:	41 5f                	pop    %r15
    663f:	c3                   	retq   
    6640:	44 8b 5e f4          	mov    -0xc(%rsi),%r11d
    6644:	e9 b8 fe ff ff       	jmpq   6501 <wcstr_trim+0x141>
    6649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6650:	44 0f b7 5e fa       	movzwl -0x6(%rsi),%r11d
    6655:	e9 a7 fe ff ff       	jmpq   6501 <wcstr_trim+0x141>
    665a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6660:	44 0f b7 76 fc       	movzwl -0x4(%rsi),%r14d
    6665:	e9 c3 fd ff ff       	jmpq   642d <wcstr_trim+0x6d>
    666a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6670:	44 0f b6 5e fd       	movzbl -0x3(%rsi),%r11d
    6675:	e9 87 fe ff ff       	jmpq   6501 <wcstr_trim+0x141>
    667a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6680:	ba 01 00 00 00       	mov    $0x1,%edx
    6685:	48 8d 35 78 09 00 00 	lea    0x978(%rip),%rsi        # 7004 <_IO_stdin_used+0x4>
    668c:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
    6691:	48 8d 3d 80 09 00 00 	lea    0x980(%rip),%rdi        # 7018 <_IO_stdin_used+0x18>
    6698:	4c 89 5c 24 20       	mov    %r11,0x20(%rsp)
    669d:	e8 8e 04 00 00       	callq  6b30 <__wcstr_debug>
    66a2:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    66a7:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
    66ac:	e9 b3 fe ff ff       	jmpq   6564 <wcstr_trim+0x1a4>
    66b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    66b8:	0f b6 54 24 08       	movzbl 0x8(%rsp),%edx
    66bd:	44 88 71 01          	mov    %r14b,0x1(%rcx)
    66c1:	88 41 02             	mov    %al,0x2(%rcx)
    66c4:	88 11                	mov    %dl,(%rcx)
    66c6:	e9 eb fe ff ff       	jmpq   65b6 <wcstr_trim+0x1f6>
    66cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    66d0:	8b 54 24 08          	mov    0x8(%rsp),%edx
    66d4:	44 89 71 04          	mov    %r14d,0x4(%rcx)
    66d8:	89 41 08             	mov    %eax,0x8(%rcx)
    66db:	89 11                	mov    %edx,(%rcx)
    66dd:	e9 d4 fe ff ff       	jmpq   65b6 <wcstr_trim+0x1f6>
    66e2:	ba 02 00 00 00       	mov    $0x2,%edx
    66e7:	48 8d 35 06 0a 00 00 	lea    0xa06(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    66ee:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    66f3:	48 8d 3d 18 0a 00 00 	lea    0xa18(%rip),%rdi        # 7112 <_IO_stdin_used+0x112>
    66fa:	e8 31 04 00 00       	callq  6b30 <__wcstr_debug>
    66ff:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    6704:	e9 2f fe ff ff       	jmpq   6538 <wcstr_trim+0x178>
    6709:	ba 02 00 00 00       	mov    $0x2,%edx
    670e:	48 8d 35 df 09 00 00 	lea    0x9df(%rip),%rsi        # 70f4 <_IO_stdin_used+0xf4>
    6715:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    671a:	48 8d 3d f1 09 00 00 	lea    0x9f1(%rip),%rdi        # 7112 <_IO_stdin_used+0x112>
    6721:	e8 0a 04 00 00       	callq  6b30 <__wcstr_debug>
    6726:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    672b:	e9 ee fe ff ff       	jmpq   661e <wcstr_trim+0x25e>

0000000000006730 <__cstr_print_title>:
    6730:	55                   	push   %rbp
    6731:	48 8b 0d 88 39 00 00 	mov    0x3988(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    6738:	48 89 fd             	mov    %rdi,%rbp
    673b:	ba 06 00 00 00       	mov    $0x6,%edx
    6740:	be 01 00 00 00       	mov    $0x1,%esi
    6745:	48 8d 3d 54 0a 00 00 	lea    0xa54(%rip),%rdi        # 71a0 <CSWTCH.19+0x10>
    674c:	e8 ef a9 ff ff       	callq  1140 <fwrite@plt>
    6751:	48 8b 35 68 39 00 00 	mov    0x3968(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6758:	bf 5b 00 00 00       	mov    $0x5b,%edi
    675d:	e8 5e a9 ff ff       	callq  10c0 <putc@plt>
    6762:	ba 04 00 00 00       	mov    $0x4,%edx
    6767:	48 8b 0d 52 39 00 00 	mov    0x3952(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    676e:	be 01 00 00 00       	mov    $0x1,%esi
    6773:	48 8d 3d 2d 0a 00 00 	lea    0xa2d(%rip),%rdi        # 71a7 <CSWTCH.19+0x17>
    677a:	e8 c1 a9 ff ff       	callq  1140 <fwrite@plt>
    677f:	ba 06 00 00 00       	mov    $0x6,%edx
    6784:	48 8b 0d 35 39 00 00 	mov    0x3935(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    678b:	be 01 00 00 00       	mov    $0x1,%esi
    6790:	48 8d 3d 15 0a 00 00 	lea    0xa15(%rip),%rdi        # 71ac <CSWTCH.19+0x1c>
    6797:	e8 a4 a9 ff ff       	callq  1140 <fwrite@plt>
    679c:	48 8b 35 1d 39 00 00 	mov    0x391d(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    67a3:	48 89 ef             	mov    %rbp,%rdi
    67a6:	e8 e5 a8 ff ff       	callq  1090 <fputs@plt>
    67ab:	ba 04 00 00 00       	mov    $0x4,%edx
    67b0:	48 8b 0d 09 39 00 00 	mov    0x3909(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    67b7:	be 01 00 00 00       	mov    $0x1,%esi
    67bc:	48 8d 3d e4 09 00 00 	lea    0x9e4(%rip),%rdi        # 71a7 <CSWTCH.19+0x17>
    67c3:	e8 78 a9 ff ff       	callq  1140 <fwrite@plt>
    67c8:	ba 06 00 00 00       	mov    $0x6,%edx
    67cd:	48 8b 0d ec 38 00 00 	mov    0x38ec(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    67d4:	be 01 00 00 00       	mov    $0x1,%esi
    67d9:	48 8d 3d c0 09 00 00 	lea    0x9c0(%rip),%rdi        # 71a0 <CSWTCH.19+0x10>
    67e0:	e8 5b a9 ff ff       	callq  1140 <fwrite@plt>
    67e5:	48 8b 35 d4 38 00 00 	mov    0x38d4(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    67ec:	bf 5d 00 00 00       	mov    $0x5d,%edi
    67f1:	e8 ca a8 ff ff       	callq  10c0 <putc@plt>
    67f6:	ba 04 00 00 00       	mov    $0x4,%edx
    67fb:	48 8b 0d be 38 00 00 	mov    0x38be(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    6802:	be 01 00 00 00       	mov    $0x1,%esi
    6807:	48 8d 3d 99 09 00 00 	lea    0x999(%rip),%rdi        # 71a7 <CSWTCH.19+0x17>
    680e:	e8 2d a9 ff ff       	callq  1140 <fwrite@plt>
    6813:	ba 02 00 00 00       	mov    $0x2,%edx
    6818:	be 01 00 00 00       	mov    $0x1,%esi
    681d:	5d                   	pop    %rbp
    681e:	48 8b 0d 9b 38 00 00 	mov    0x389b(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    6825:	48 8d 3d 87 09 00 00 	lea    0x987(%rip),%rdi        # 71b3 <CSWTCH.19+0x23>
    682c:	e9 0f a9 ff ff       	jmpq   1140 <fwrite@plt>
    6831:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6838:	00 00 00 00 
    683c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000006840 <__cstr_print_debug>:
    6840:	41 54                	push   %r12
    6842:	ba 06 00 00 00       	mov    $0x6,%edx
    6847:	49 89 fc             	mov    %rdi,%r12
    684a:	48 8d 3d 4f 09 00 00 	lea    0x94f(%rip),%rdi        # 71a0 <CSWTCH.19+0x10>
    6851:	55                   	push   %rbp
    6852:	48 89 f5             	mov    %rsi,%rbp
    6855:	be 01 00 00 00       	mov    $0x1,%esi
    685a:	48 83 ec 08          	sub    $0x8,%rsp
    685e:	48 8b 0d 5b 38 00 00 	mov    0x385b(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    6865:	e8 d6 a8 ff ff       	callq  1140 <fwrite@plt>
    686a:	48 8b 35 4f 38 00 00 	mov    0x384f(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6871:	bf 5b 00 00 00       	mov    $0x5b,%edi
    6876:	e8 45 a8 ff ff       	callq  10c0 <putc@plt>
    687b:	ba 04 00 00 00       	mov    $0x4,%edx
    6880:	48 8b 0d 39 38 00 00 	mov    0x3839(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    6887:	be 01 00 00 00       	mov    $0x1,%esi
    688c:	48 8d 3d 14 09 00 00 	lea    0x914(%rip),%rdi        # 71a7 <CSWTCH.19+0x17>
    6893:	e8 a8 a8 ff ff       	callq  1140 <fwrite@plt>
    6898:	ba 06 00 00 00       	mov    $0x6,%edx
    689d:	48 8b 0d 1c 38 00 00 	mov    0x381c(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    68a4:	be 01 00 00 00       	mov    $0x1,%esi
    68a9:	48 8d 3d fc 08 00 00 	lea    0x8fc(%rip),%rdi        # 71ac <CSWTCH.19+0x1c>
    68b0:	e8 8b a8 ff ff       	callq  1140 <fwrite@plt>
    68b5:	48 8b 35 04 38 00 00 	mov    0x3804(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    68bc:	4c 89 e7             	mov    %r12,%rdi
    68bf:	e8 cc a7 ff ff       	callq  1090 <fputs@plt>
    68c4:	ba 04 00 00 00       	mov    $0x4,%edx
    68c9:	48 8b 0d f0 37 00 00 	mov    0x37f0(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    68d0:	be 01 00 00 00       	mov    $0x1,%esi
    68d5:	48 8d 3d cb 08 00 00 	lea    0x8cb(%rip),%rdi        # 71a7 <CSWTCH.19+0x17>
    68dc:	e8 5f a8 ff ff       	callq  1140 <fwrite@plt>
    68e1:	ba 06 00 00 00       	mov    $0x6,%edx
    68e6:	48 8b 0d d3 37 00 00 	mov    0x37d3(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    68ed:	be 01 00 00 00       	mov    $0x1,%esi
    68f2:	48 8d 3d a7 08 00 00 	lea    0x8a7(%rip),%rdi        # 71a0 <CSWTCH.19+0x10>
    68f9:	e8 42 a8 ff ff       	callq  1140 <fwrite@plt>
    68fe:	48 8b 35 bb 37 00 00 	mov    0x37bb(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6905:	bf 5d 00 00 00       	mov    $0x5d,%edi
    690a:	e8 b1 a7 ff ff       	callq  10c0 <putc@plt>
    690f:	ba 04 00 00 00       	mov    $0x4,%edx
    6914:	48 8b 0d a5 37 00 00 	mov    0x37a5(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    691b:	be 01 00 00 00       	mov    $0x1,%esi
    6920:	48 8d 3d 80 08 00 00 	lea    0x880(%rip),%rdi        # 71a7 <CSWTCH.19+0x17>
    6927:	e8 14 a8 ff ff       	callq  1140 <fwrite@plt>
    692c:	be 01 00 00 00       	mov    $0x1,%esi
    6931:	48 8b 0d 88 37 00 00 	mov    0x3788(%rip),%rcx        # a0c0 <stdout@@GLIBC_2.2.5>
    6938:	ba 02 00 00 00       	mov    $0x2,%edx
    693d:	48 8d 3d 6f 08 00 00 	lea    0x86f(%rip),%rdi        # 71b3 <CSWTCH.19+0x23>
    6944:	e8 f7 a7 ff ff       	callq  1140 <fwrite@plt>
    6949:	48 89 ef             	mov    %rbp,%rdi
    694c:	e8 ef a6 ff ff       	callq  1040 <puts@plt>
    6951:	48 8b 35 68 37 00 00 	mov    0x3768(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6958:	48 83 c4 08          	add    $0x8,%rsp
    695c:	bf 0a 00 00 00       	mov    $0xa,%edi
    6961:	5d                   	pop    %rbp
    6962:	41 5c                	pop    %r12
    6964:	e9 57 a7 ff ff       	jmpq   10c0 <putc@plt>
    6969:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000006970 <__cstr_debug>:
    6970:	85 d2                	test   %edx,%edx
    6972:	75 01                	jne    6975 <__cstr_debug+0x5>
    6974:	c3                   	retq   
    6975:	50                   	push   %rax
    6976:	89 d7                	mov    %edx,%edi
    6978:	e8 b3 a7 ff ff       	callq  1130 <exit@plt>
    697d:	0f 1f 00             	nopl   (%rax)

0000000000006980 <__wcstr_print_title>:
    6980:	55                   	push   %rbp
    6981:	48 8b 35 38 37 00 00 	mov    0x3738(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6988:	48 89 fd             	mov    %rdi,%rbp
    698b:	48 8d 3d 26 08 00 00 	lea    0x826(%rip),%rdi        # 71b8 <CSWTCH.19+0x28>
    6992:	e8 59 a7 ff ff       	callq  10f0 <fputws@plt>
    6997:	48 8b 35 22 37 00 00 	mov    0x3722(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    699e:	bf 5b 00 00 00       	mov    $0x5b,%edi
    69a3:	e8 d8 a6 ff ff       	callq  1080 <putwc@plt>
    69a8:	48 8b 35 11 37 00 00 	mov    0x3711(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    69af:	48 8d 3d 1e 08 00 00 	lea    0x81e(%rip),%rdi        # 71d4 <CSWTCH.19+0x44>
    69b6:	e8 35 a7 ff ff       	callq  10f0 <fputws@plt>
    69bb:	48 8b 35 fe 36 00 00 	mov    0x36fe(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    69c2:	48 8d 3d 1f 08 00 00 	lea    0x81f(%rip),%rdi        # 71e8 <CSWTCH.19+0x58>
    69c9:	e8 22 a7 ff ff       	callq  10f0 <fputws@plt>
    69ce:	48 8b 35 eb 36 00 00 	mov    0x36eb(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    69d5:	48 89 ef             	mov    %rbp,%rdi
    69d8:	e8 13 a7 ff ff       	callq  10f0 <fputws@plt>
    69dd:	48 8b 35 dc 36 00 00 	mov    0x36dc(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    69e4:	48 8d 3d e9 07 00 00 	lea    0x7e9(%rip),%rdi        # 71d4 <CSWTCH.19+0x44>
    69eb:	e8 00 a7 ff ff       	callq  10f0 <fputws@plt>
    69f0:	48 8b 35 c9 36 00 00 	mov    0x36c9(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    69f7:	48 8d 3d ba 07 00 00 	lea    0x7ba(%rip),%rdi        # 71b8 <CSWTCH.19+0x28>
    69fe:	e8 ed a6 ff ff       	callq  10f0 <fputws@plt>
    6a03:	48 8b 35 b6 36 00 00 	mov    0x36b6(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a0a:	bf 5d 00 00 00       	mov    $0x5d,%edi
    6a0f:	e8 6c a6 ff ff       	callq  1080 <putwc@plt>
    6a14:	48 8b 35 a5 36 00 00 	mov    0x36a5(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a1b:	48 8d 3d b2 07 00 00 	lea    0x7b2(%rip),%rdi        # 71d4 <CSWTCH.19+0x44>
    6a22:	e8 c9 a6 ff ff       	callq  10f0 <fputws@plt>
    6a27:	48 8b 35 92 36 00 00 	mov    0x3692(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a2e:	48 8d 3d cf 07 00 00 	lea    0x7cf(%rip),%rdi        # 7204 <CSWTCH.19+0x74>
    6a35:	5d                   	pop    %rbp
    6a36:	e9 b5 a6 ff ff       	jmpq   10f0 <fputws@plt>
    6a3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000006a40 <__wcstr_print_debug>:
    6a40:	41 54                	push   %r12
    6a42:	49 89 fc             	mov    %rdi,%r12
    6a45:	48 8d 3d 6c 07 00 00 	lea    0x76c(%rip),%rdi        # 71b8 <CSWTCH.19+0x28>
    6a4c:	55                   	push   %rbp
    6a4d:	48 89 f5             	mov    %rsi,%rbp
    6a50:	48 83 ec 08          	sub    $0x8,%rsp
    6a54:	48 8b 35 65 36 00 00 	mov    0x3665(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a5b:	e8 90 a6 ff ff       	callq  10f0 <fputws@plt>
    6a60:	48 8b 35 59 36 00 00 	mov    0x3659(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a67:	bf 5b 00 00 00       	mov    $0x5b,%edi
    6a6c:	e8 0f a6 ff ff       	callq  1080 <putwc@plt>
    6a71:	48 8b 35 48 36 00 00 	mov    0x3648(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a78:	48 8d 3d 55 07 00 00 	lea    0x755(%rip),%rdi        # 71d4 <CSWTCH.19+0x44>
    6a7f:	e8 6c a6 ff ff       	callq  10f0 <fputws@plt>
    6a84:	48 8b 35 35 36 00 00 	mov    0x3635(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a8b:	48 8d 3d 56 07 00 00 	lea    0x756(%rip),%rdi        # 71e8 <CSWTCH.19+0x58>
    6a92:	e8 59 a6 ff ff       	callq  10f0 <fputws@plt>
    6a97:	48 8b 35 22 36 00 00 	mov    0x3622(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6a9e:	4c 89 e7             	mov    %r12,%rdi
    6aa1:	e8 4a a6 ff ff       	callq  10f0 <fputws@plt>
    6aa6:	48 8b 35 13 36 00 00 	mov    0x3613(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6aad:	48 8d 3d 20 07 00 00 	lea    0x720(%rip),%rdi        # 71d4 <CSWTCH.19+0x44>
    6ab4:	e8 37 a6 ff ff       	callq  10f0 <fputws@plt>
    6ab9:	48 8b 35 00 36 00 00 	mov    0x3600(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6ac0:	48 8d 3d f1 06 00 00 	lea    0x6f1(%rip),%rdi        # 71b8 <CSWTCH.19+0x28>
    6ac7:	e8 24 a6 ff ff       	callq  10f0 <fputws@plt>
    6acc:	48 8b 35 ed 35 00 00 	mov    0x35ed(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6ad3:	bf 5d 00 00 00       	mov    $0x5d,%edi
    6ad8:	e8 a3 a5 ff ff       	callq  1080 <putwc@plt>
    6add:	48 8b 35 dc 35 00 00 	mov    0x35dc(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6ae4:	48 8d 3d e9 06 00 00 	lea    0x6e9(%rip),%rdi        # 71d4 <CSWTCH.19+0x44>
    6aeb:	e8 00 a6 ff ff       	callq  10f0 <fputws@plt>
    6af0:	48 8b 35 c9 35 00 00 	mov    0x35c9(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6af7:	48 8d 3d 06 07 00 00 	lea    0x706(%rip),%rdi        # 7204 <CSWTCH.19+0x74>
    6afe:	e8 ed a5 ff ff       	callq  10f0 <fputws@plt>
    6b03:	48 8b 35 b6 35 00 00 	mov    0x35b6(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6b0a:	48 89 ef             	mov    %rbp,%rdi
    6b0d:	e8 de a5 ff ff       	callq  10f0 <fputws@plt>
    6b12:	48 8b 35 a7 35 00 00 	mov    0x35a7(%rip),%rsi        # a0c0 <stdout@@GLIBC_2.2.5>
    6b19:	48 83 c4 08          	add    $0x8,%rsp
    6b1d:	bf 0a 00 00 00       	mov    $0xa,%edi
    6b22:	5d                   	pop    %rbp
    6b23:	41 5c                	pop    %r12
    6b25:	e9 56 a5 ff ff       	jmpq   1080 <putwc@plt>
    6b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000006b30 <__wcstr_debug>:
    6b30:	85 d2                	test   %edx,%edx
    6b32:	75 01                	jne    6b35 <__wcstr_debug+0x5>
    6b34:	c3                   	retq   
    6b35:	50                   	push   %rax
    6b36:	89 d7                	mov    %edx,%edi
    6b38:	e8 f3 a5 ff ff       	callq  1130 <exit@plt>
    6b3d:	0f 1f 00             	nopl   (%rax)

0000000000006b40 <wcstrcpy>:
    6b40:	48 39 f7             	cmp    %rsi,%rdi
    6b43:	74 1b                	je     6b60 <wcstrcpy+0x20>
    6b45:	48 8b 06             	mov    (%rsi),%rax
    6b48:	48 39 07             	cmp    %rax,(%rdi)
    6b4b:	74 13                	je     6b60 <wcstrcpy+0x20>
    6b4d:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    6b54:	48 89 07             	mov    %rax,(%rdi)
    6b57:	c3                   	retq   
    6b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    6b5f:	00 
    6b60:	31 c0                	xor    %eax,%eax
    6b62:	c3                   	retq   
    6b63:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6b6a:	00 00 00 00 
    6b6e:	66 90                	xchg   %ax,%ax

0000000000006b70 <wcstrdcpy>:
    6b70:	48 39 37             	cmp    %rsi,(%rdi)
    6b73:	74 3b                	je     6bb0 <wcstrdcpy+0x40>
    6b75:	55                   	push   %rbp
    6b76:	48 89 f5             	mov    %rsi,%rbp
    6b79:	53                   	push   %rbx
    6b7a:	48 89 fb             	mov    %rdi,%rbx
    6b7d:	48 89 f7             	mov    %rsi,%rdi
    6b80:	48 83 ec 08          	sub    $0x8,%rsp
    6b84:	e8 57 dc ff ff       	callq  47e0 <__wcstr_type>
    6b89:	48 89 ef             	mov    %rbp,%rdi
    6b8c:	89 c6                	mov    %eax,%esi
    6b8e:	e8 5d dd ff ff       	callq  48f0 <__wcstr_relsiz>
    6b93:	48 89 ee             	mov    %rbp,%rsi
    6b96:	48 89 df             	mov    %rbx,%rdi
    6b99:	b9 01 00 00 00       	mov    $0x1,%ecx
    6b9e:	48 89 c2             	mov    %rax,%rdx
    6ba1:	e8 aa ee ff ff       	callq  5a50 <__wcstr_resize_from>
    6ba6:	48 8b 03             	mov    (%rbx),%rax
    6ba9:	48 83 c4 08          	add    $0x8,%rsp
    6bad:	5b                   	pop    %rbx
    6bae:	5d                   	pop    %rbp
    6baf:	c3                   	retq   
    6bb0:	31 c0                	xor    %eax,%eax
    6bb2:	c3                   	retq   
    6bb3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6bba:	00 00 00 00 
    6bbe:	66 90                	xchg   %ax,%ax

0000000000006bc0 <wcstrdgcpy>:
    6bc0:	48 39 37             	cmp    %rsi,(%rdi)
    6bc3:	74 3b                	je     6c00 <wcstrdgcpy+0x40>
    6bc5:	55                   	push   %rbp
    6bc6:	48 89 f5             	mov    %rsi,%rbp
    6bc9:	31 c0                	xor    %eax,%eax
    6bcb:	be 00 20 00 00       	mov    $0x2000,%esi
    6bd0:	53                   	push   %rbx
    6bd1:	48 89 fb             	mov    %rdi,%rbx
    6bd4:	48 89 ef             	mov    %rbp,%rdi
    6bd7:	48 83 ec 08          	sub    $0x8,%rsp
    6bdb:	e8 70 a5 ff ff       	callq  1150 <wcsnlen@plt>
    6be0:	48 89 ee             	mov    %rbp,%rsi
    6be3:	48 89 df             	mov    %rbx,%rdi
    6be6:	b9 01 00 00 00       	mov    $0x1,%ecx
    6beb:	48 63 d0             	movslq %eax,%rdx
    6bee:	e8 5d ee ff ff       	callq  5a50 <__wcstr_resize_from>
    6bf3:	48 8b 03             	mov    (%rbx),%rax
    6bf6:	48 83 c4 08          	add    $0x8,%rsp
    6bfa:	5b                   	pop    %rbx
    6bfb:	5d                   	pop    %rbp
    6bfc:	c3                   	retq   
    6bfd:	0f 1f 00             	nopl   (%rax)
    6c00:	31 c0                	xor    %eax,%eax
    6c02:	c3                   	retq   
    6c03:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6c0a:	00 00 00 00 
    6c0e:	66 90                	xchg   %ax,%ax

0000000000006c10 <wcstrncpy>:
    6c10:	48 8b 06             	mov    (%rsi),%rax
    6c13:	48 39 07             	cmp    %rax,(%rdi)
    6c16:	74 30                	je     6c48 <wcstrncpy+0x38>
    6c18:	53                   	push   %rbx
    6c19:	48 89 fb             	mov    %rdi,%rbx
    6c1c:	48 39 f7             	cmp    %rsi,%rdi
    6c1f:	74 1f                	je     6c40 <wcstrncpy+0x30>
    6c21:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    6c28:	b9 01 00 00 00       	mov    $0x1,%ecx
    6c2d:	31 f6                	xor    %esi,%esi
    6c2f:	48 89 07             	mov    %rax,(%rdi)
    6c32:	e8 19 ee ff ff       	callq  5a50 <__wcstr_resize_from>
    6c37:	48 8b 03             	mov    (%rbx),%rax
    6c3a:	5b                   	pop    %rbx
    6c3b:	c3                   	retq   
    6c3c:	0f 1f 40 00          	nopl   0x0(%rax)
    6c40:	31 c0                	xor    %eax,%eax
    6c42:	5b                   	pop    %rbx
    6c43:	c3                   	retq   
    6c44:	0f 1f 40 00          	nopl   0x0(%rax)
    6c48:	31 c0                	xor    %eax,%eax
    6c4a:	c3                   	retq   
    6c4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000006c50 <wcstrndcpy>:
    6c50:	48 39 37             	cmp    %rsi,(%rdi)
    6c53:	74 1b                	je     6c70 <wcstrndcpy+0x20>
    6c55:	53                   	push   %rbx
    6c56:	b9 01 00 00 00       	mov    $0x1,%ecx
    6c5b:	48 89 fb             	mov    %rdi,%rbx
    6c5e:	e8 ed ed ff ff       	callq  5a50 <__wcstr_resize_from>
    6c63:	48 8b 03             	mov    (%rbx),%rax
    6c66:	5b                   	pop    %rbx
    6c67:	c3                   	retq   
    6c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    6c6f:	00 
    6c70:	31 c0                	xor    %eax,%eax
    6c72:	c3                   	retq   
    6c73:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6c7a:	00 00 00 00 
    6c7e:	66 90                	xchg   %ax,%ax

0000000000006c80 <wcstrndgcpy>:
    6c80:	48 3b 37             	cmp    (%rdi),%rsi
    6c83:	74 1b                	je     6ca0 <wcstrndgcpy+0x20>
    6c85:	53                   	push   %rbx
    6c86:	b9 01 00 00 00       	mov    $0x1,%ecx
    6c8b:	48 89 fb             	mov    %rdi,%rbx
    6c8e:	e8 bd ed ff ff       	callq  5a50 <__wcstr_resize_from>
    6c93:	48 8b 03             	mov    (%rbx),%rax
    6c96:	5b                   	pop    %rbx
    6c97:	c3                   	retq   
    6c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    6c9f:	00 
    6ca0:	31 c0                	xor    %eax,%eax
    6ca2:	c3                   	retq   
    6ca3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6caa:	00 00 00 00 
    6cae:	66 90                	xchg   %ax,%ax

0000000000006cb0 <wcstrcat>:
    6cb0:	41 55                	push   %r13
    6cb2:	41 54                	push   %r12
    6cb4:	55                   	push   %rbp
    6cb5:	48 89 f5             	mov    %rsi,%rbp
    6cb8:	53                   	push   %rbx
    6cb9:	48 89 fb             	mov    %rdi,%rbx
    6cbc:	48 83 ec 08          	sub    $0x8,%rsp
    6cc0:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    6cc4:	48 89 f7             	mov    %rsi,%rdi
    6cc7:	74 6f                	je     6d38 <wcstrcat+0x88>
    6cc9:	e8 12 db ff ff       	callq  47e0 <__wcstr_type>
    6cce:	48 89 ef             	mov    %rbp,%rdi
    6cd1:	89 c6                	mov    %eax,%esi
    6cd3:	e8 18 dc ff ff       	callq  48f0 <__wcstr_relsiz>
    6cd8:	49 89 c4             	mov    %rax,%r12
    6cdb:	48 85 c0             	test   %rax,%rax
    6cde:	75 10                	jne    6cf0 <wcstrcat+0x40>
    6ce0:	48 8b 03             	mov    (%rbx),%rax
    6ce3:	48 83 c4 08          	add    $0x8,%rsp
    6ce7:	5b                   	pop    %rbx
    6ce8:	5d                   	pop    %rbp
    6ce9:	41 5c                	pop    %r12
    6ceb:	41 5d                	pop    %r13
    6ced:	c3                   	retq   
    6cee:	66 90                	xchg   %ax,%ax
    6cf0:	48 8b 3b             	mov    (%rbx),%rdi
    6cf3:	e8 e8 da ff ff       	callq  47e0 <__wcstr_type>
    6cf8:	48 8b 3b             	mov    (%rbx),%rdi
    6cfb:	89 c6                	mov    %eax,%esi
    6cfd:	e8 ee db ff ff       	callq  48f0 <__wcstr_relsiz>
    6d02:	31 f6                	xor    %esi,%esi
    6d04:	48 89 df             	mov    %rbx,%rdi
    6d07:	b9 01 00 00 00       	mov    $0x1,%ecx
    6d0c:	49 8d 14 04          	lea    (%r12,%rax,1),%rdx
    6d10:	49 89 c5             	mov    %rax,%r13
    6d13:	e8 38 ed ff ff       	callq  5a50 <__wcstr_resize_from>
    6d18:	48 8b 03             	mov    (%rbx),%rax
    6d1b:	4a 8d 14 a5 00 00 00 	lea    0x0(,%r12,4),%rdx
    6d22:	00 
    6d23:	48 89 ee             	mov    %rbp,%rsi
    6d26:	4a 8d 3c a8          	lea    (%rax,%r13,4),%rdi
    6d2a:	e8 a1 a3 ff ff       	callq  10d0 <memcpy@plt>
    6d2f:	eb af                	jmp    6ce0 <wcstrcat+0x30>
    6d31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6d38:	e8 63 eb ff ff       	callq  58a0 <nwcstrcpy>
    6d3d:	48 89 03             	mov    %rax,(%rbx)
    6d40:	48 83 c4 08          	add    $0x8,%rsp
    6d44:	5b                   	pop    %rbx
    6d45:	5d                   	pop    %rbp
    6d46:	41 5c                	pop    %r12
    6d48:	41 5d                	pop    %r13
    6d4a:	c3                   	retq   
    6d4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000006d50 <wcstrgcat>:
    6d50:	41 56                	push   %r14
    6d52:	41 55                	push   %r13
    6d54:	41 54                	push   %r12
    6d56:	49 89 f4             	mov    %rsi,%r12
    6d59:	55                   	push   %rbp
    6d5a:	53                   	push   %rbx
    6d5b:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    6d5f:	48 89 fb             	mov    %rdi,%rbx
    6d62:	0f 84 88 00 00 00    	je     6df0 <wcstrgcat+0xa0>
    6d68:	be 00 20 00 00       	mov    $0x2000,%esi
    6d6d:	4c 89 e7             	mov    %r12,%rdi
    6d70:	31 c0                	xor    %eax,%eax
    6d72:	e8 d9 a3 ff ff       	callq  1150 <wcsnlen@plt>
    6d77:	48 63 e8             	movslq %eax,%rbp
    6d7a:	48 85 ed             	test   %rbp,%rbp
    6d7d:	75 11                	jne    6d90 <wcstrgcat+0x40>
    6d7f:	48 8b 03             	mov    (%rbx),%rax
    6d82:	5b                   	pop    %rbx
    6d83:	5d                   	pop    %rbp
    6d84:	41 5c                	pop    %r12
    6d86:	41 5d                	pop    %r13
    6d88:	41 5e                	pop    %r14
    6d8a:	c3                   	retq   
    6d8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6d90:	48 8b 3b             	mov    (%rbx),%rdi
    6d93:	e8 48 da ff ff       	callq  47e0 <__wcstr_type>
    6d98:	48 8b 3b             	mov    (%rbx),%rdi
    6d9b:	89 c6                	mov    %eax,%esi
    6d9d:	e8 4e db ff ff       	callq  48f0 <__wcstr_relsiz>
    6da2:	48 89 df             	mov    %rbx,%rdi
    6da5:	b9 01 00 00 00       	mov    $0x1,%ecx
    6daa:	31 f6                	xor    %esi,%esi
    6dac:	4c 8d 74 05 00       	lea    0x0(%rbp,%rax,1),%r14
    6db1:	49 89 c5             	mov    %rax,%r13
    6db4:	4c 89 f2             	mov    %r14,%rdx
    6db7:	e8 94 ec ff ff       	callq  5a50 <__wcstr_resize_from>
    6dbc:	48 8b 03             	mov    (%rbx),%rax
    6dbf:	48 8d 14 ad 00 00 00 	lea    0x0(,%rbp,4),%rdx
    6dc6:	00 
    6dc7:	4c 89 e6             	mov    %r12,%rsi
    6dca:	4a 8d 3c a8          	lea    (%rax,%r13,4),%rdi
    6dce:	e8 fd a2 ff ff       	callq  10d0 <memcpy@plt>
    6dd3:	48 8b 03             	mov    (%rbx),%rax
    6dd6:	42 c7 44 b0 fc 00 00 	movl   $0x0,-0x4(%rax,%r14,4)
    6ddd:	00 00 
    6ddf:	5b                   	pop    %rbx
    6de0:	5d                   	pop    %rbp
    6de1:	41 5c                	pop    %r12
    6de3:	41 5d                	pop    %r13
    6de5:	41 5e                	pop    %r14
    6de7:	c3                   	retq   
    6de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    6def:	00 
    6df0:	48 89 f7             	mov    %rsi,%rdi
    6df3:	e8 d8 e8 ff ff       	callq  56d0 <nwcstr_from>
    6df8:	48 89 03             	mov    %rax,(%rbx)
    6dfb:	5b                   	pop    %rbx
    6dfc:	5d                   	pop    %rbp
    6dfd:	41 5c                	pop    %r12
    6dff:	41 5d                	pop    %r13
    6e01:	41 5e                	pop    %r14
    6e03:	c3                   	retq   
    6e04:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    6e0b:	00 00 00 00 
    6e0f:	90                   	nop

0000000000006e10 <wcstrncat>:
    6e10:	41 56                	push   %r14
    6e12:	31 c0                	xor    %eax,%eax
    6e14:	41 55                	push   %r13
    6e16:	41 54                	push   %r12
    6e18:	49 89 d4             	mov    %rdx,%r12
    6e1b:	55                   	push   %rbp
    6e1c:	48 89 f5             	mov    %rsi,%rbp
    6e1f:	be 00 20 00 00       	mov    $0x2000,%esi
    6e24:	53                   	push   %rbx
    6e25:	48 89 fb             	mov    %rdi,%rbx
    6e28:	48 89 ef             	mov    %rbp,%rdi
    6e2b:	e8 20 a3 ff ff       	callq  1150 <wcsnlen@plt>
    6e30:	48 98                	cltq   
    6e32:	4c 39 e0             	cmp    %r12,%rax
    6e35:	4c 0f 46 e0          	cmovbe %rax,%r12
    6e39:	4d 85 e4             	test   %r12,%r12
    6e3c:	74 6c                	je     6eaa <wcstrncat+0x9a>
    6e3e:	48 8b 3b             	mov    (%rbx),%rdi
    6e41:	48 85 ff             	test   %rdi,%rdi
    6e44:	74 52                	je     6e98 <wcstrncat+0x88>
    6e46:	e8 95 d9 ff ff       	callq  47e0 <__wcstr_type>
    6e4b:	48 8b 3b             	mov    (%rbx),%rdi
    6e4e:	89 c6                	mov    %eax,%esi
    6e50:	e8 9b da ff ff       	callq  48f0 <__wcstr_relsiz>
    6e55:	48 89 df             	mov    %rbx,%rdi
    6e58:	b9 01 00 00 00       	mov    $0x1,%ecx
    6e5d:	31 f6                	xor    %esi,%esi
    6e5f:	4d 8d 34 04          	lea    (%r12,%rax,1),%r14
    6e63:	49 89 c5             	mov    %rax,%r13
    6e66:	4c 89 f2             	mov    %r14,%rdx
    6e69:	e8 e2 eb ff ff       	callq  5a50 <__wcstr_resize_from>
    6e6e:	48 8b 03             	mov    (%rbx),%rax
    6e71:	4c 89 e2             	mov    %r12,%rdx
    6e74:	48 89 ee             	mov    %rbp,%rsi
    6e77:	4a 8d 3c a8          	lea    (%rax,%r13,4),%rdi
    6e7b:	e8 50 a2 ff ff       	callq  10d0 <memcpy@plt>
    6e80:	48 8b 03             	mov    (%rbx),%rax
    6e83:	42 c7 44 b0 fc 00 00 	movl   $0x0,-0x4(%rax,%r14,4)
    6e8a:	00 00 
    6e8c:	5b                   	pop    %rbx
    6e8d:	5d                   	pop    %rbp
    6e8e:	41 5c                	pop    %r12
    6e90:	41 5d                	pop    %r13
    6e92:	41 5e                	pop    %r14
    6e94:	c3                   	retq   
    6e95:	0f 1f 00             	nopl   (%rax)
    6e98:	b9 01 00 00 00       	mov    $0x1,%ecx
    6e9d:	4c 89 e2             	mov    %r12,%rdx
    6ea0:	31 f6                	xor    %esi,%esi
    6ea2:	48 89 df             	mov    %rbx,%rdi
    6ea5:	e8 a6 eb ff ff       	callq  5a50 <__wcstr_resize_from>
    6eaa:	48 8b 03             	mov    (%rbx),%rax
    6ead:	5b                   	pop    %rbx
    6eae:	5d                   	pop    %rbp
    6eaf:	41 5c                	pop    %r12
    6eb1:	41 5d                	pop    %r13
    6eb3:	41 5e                	pop    %r14
    6eb5:	c3                   	retq   
    6eb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    6ebd:	00 00 00 

0000000000006ec0 <wcstrngcat>:
    6ec0:	41 56                	push   %r14
    6ec2:	31 c0                	xor    %eax,%eax
    6ec4:	41 55                	push   %r13
    6ec6:	41 54                	push   %r12
    6ec8:	49 89 d4             	mov    %rdx,%r12
    6ecb:	55                   	push   %rbp
    6ecc:	48 89 f5             	mov    %rsi,%rbp
    6ecf:	be 00 20 00 00       	mov    $0x2000,%esi
    6ed4:	53                   	push   %rbx
    6ed5:	48 89 fb             	mov    %rdi,%rbx
    6ed8:	48 89 ef             	mov    %rbp,%rdi
    6edb:	e8 70 a2 ff ff       	callq  1150 <wcsnlen@plt>
    6ee0:	48 63 d0             	movslq %eax,%rdx
    6ee3:	4c 39 e2             	cmp    %r12,%rdx
    6ee6:	4c 0f 46 e2          	cmovbe %rdx,%r12
    6eea:	4d 85 e4             	test   %r12,%r12
    6eed:	74 73                	je     6f62 <wcstrngcat+0xa2>
    6eef:	48 8b 3b             	mov    (%rbx),%rdi
    6ef2:	48 85 ff             	test   %rdi,%rdi
    6ef5:	74 59                	je     6f50 <wcstrngcat+0x90>
    6ef7:	e8 e4 d8 ff ff       	callq  47e0 <__wcstr_type>
    6efc:	48 8b 3b             	mov    (%rbx),%rdi
    6eff:	89 c6                	mov    %eax,%esi
    6f01:	e8 ea d9 ff ff       	callq  48f0 <__wcstr_relsiz>
    6f06:	48 89 df             	mov    %rbx,%rdi
    6f09:	b9 01 00 00 00       	mov    $0x1,%ecx
    6f0e:	31 f6                	xor    %esi,%esi
    6f10:	4d 8d 34 04          	lea    (%r12,%rax,1),%r14
    6f14:	49 89 c5             	mov    %rax,%r13
    6f17:	4c 89 f2             	mov    %r14,%rdx
    6f1a:	e8 31 eb ff ff       	callq  5a50 <__wcstr_resize_from>
    6f1f:	48 8b 03             	mov    (%rbx),%rax
    6f22:	4a 8d 14 a5 00 00 00 	lea    0x0(,%r12,4),%rdx
    6f29:	00 
    6f2a:	48 89 ee             	mov    %rbp,%rsi
    6f2d:	4a 8d 3c a8          	lea    (%rax,%r13,4),%rdi
    6f31:	e8 9a a1 ff ff       	callq  10d0 <memcpy@plt>
    6f36:	48 8b 03             	mov    (%rbx),%rax
    6f39:	42 c7 44 b0 fc 00 00 	movl   $0x0,-0x4(%rax,%r14,4)
    6f40:	00 00 
    6f42:	5b                   	pop    %rbx
    6f43:	5d                   	pop    %rbp
    6f44:	41 5c                	pop    %r12
    6f46:	41 5d                	pop    %r13
    6f48:	41 5e                	pop    %r14
    6f4a:	c3                   	retq   
    6f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6f50:	b9 01 00 00 00       	mov    $0x1,%ecx
    6f55:	4c 89 e2             	mov    %r12,%rdx
    6f58:	31 f6                	xor    %esi,%esi
    6f5a:	48 89 df             	mov    %rbx,%rdi
    6f5d:	e8 ee ea ff ff       	callq  5a50 <__wcstr_resize_from>
    6f62:	48 8b 03             	mov    (%rbx),%rax
    6f65:	5b                   	pop    %rbx
    6f66:	5d                   	pop    %rbp
    6f67:	41 5c                	pop    %r12
    6f69:	41 5d                	pop    %r13
    6f6b:	41 5e                	pop    %r14
    6f6d:	c3                   	retq   
    6f6e:	66 90                	xchg   %ax,%ax

0000000000006f70 <__libc_csu_init>:
    6f70:	41 57                	push   %r15
    6f72:	4c 8d 3d 6f 2e 00 00 	lea    0x2e6f(%rip),%r15        # 9de8 <__frame_dummy_init_array_entry>
    6f79:	41 56                	push   %r14
    6f7b:	49 89 d6             	mov    %rdx,%r14
    6f7e:	41 55                	push   %r13
    6f80:	49 89 f5             	mov    %rsi,%r13
    6f83:	41 54                	push   %r12
    6f85:	41 89 fc             	mov    %edi,%r12d
    6f88:	55                   	push   %rbp
    6f89:	48 8d 2d 60 2e 00 00 	lea    0x2e60(%rip),%rbp        # 9df0 <__do_global_dtors_aux_fini_array_entry>
    6f90:	53                   	push   %rbx
    6f91:	4c 29 fd             	sub    %r15,%rbp
    6f94:	48 83 ec 08          	sub    $0x8,%rsp
    6f98:	e8 63 a0 ff ff       	callq  1000 <_init>
    6f9d:	48 c1 fd 03          	sar    $0x3,%rbp
    6fa1:	74 1b                	je     6fbe <__libc_csu_init+0x4e>
    6fa3:	31 db                	xor    %ebx,%ebx
    6fa5:	0f 1f 00             	nopl   (%rax)
    6fa8:	4c 89 f2             	mov    %r14,%rdx
    6fab:	4c 89 ee             	mov    %r13,%rsi
    6fae:	44 89 e7             	mov    %r12d,%edi
    6fb1:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    6fb5:	48 83 c3 01          	add    $0x1,%rbx
    6fb9:	48 39 dd             	cmp    %rbx,%rbp
    6fbc:	75 ea                	jne    6fa8 <__libc_csu_init+0x38>
    6fbe:	48 83 c4 08          	add    $0x8,%rsp
    6fc2:	5b                   	pop    %rbx
    6fc3:	5d                   	pop    %rbp
    6fc4:	41 5c                	pop    %r12
    6fc6:	41 5d                	pop    %r13
    6fc8:	41 5e                	pop    %r14
    6fca:	41 5f                	pop    %r15
    6fcc:	c3                   	retq   
    6fcd:	0f 1f 00             	nopl   (%rax)

0000000000006fd0 <__libc_csu_fini>:
    6fd0:	c3                   	retq   

Disassembly of section .fini:

0000000000006fd4 <_fini>:
    6fd4:	48 83 ec 08          	sub    $0x8,%rsp
    6fd8:	48 83 c4 08          	add    $0x8,%rsp
    6fdc:	c3                   	retq   

Disassembly of section .rodata:

0000000000007000 <_IO_stdin_used>:
    7000:	01 00                	add    %eax,(%rax)
    7002:	02 00                	add    (%rax),%al
    7004:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
    7006:	76 61                	jbe    7069 <_IO_stdin_used+0x69>
    7008:	6c                   	insb   (%dx),%es:(%rdi)
    7009:	69 64 20 73 74 72 69 	imul   $0x6e697274,0x73(%rax,%riz,1),%esp
    7010:	6e 
    7011:	67 20 74 79 70       	and    %dh,0x70(%ecx,%edi,2)
    7016:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
    701a:	63 73 74             	movsxd 0x74(%rbx),%esi
    701d:	72 5f                	jb     707e <_IO_stdin_used+0x7e>
    701f:	64 61                	fs (bad) 
    7021:	74 6f                	je     7092 <_IO_stdin_used+0x92>
    7023:	66 66 00 5f 5f       	data16 data16 add %bl,0x5f(%rdi)
    7028:	63 73 74             	movsxd 0x74(%rbx),%esi
    702b:	72 5f                	jb     708c <_IO_stdin_used+0x8c>
    702d:	6e                   	outsb  %ds:(%rsi),(%dx)
    702e:	6f                   	outsl  %ds:(%rsi),(%dx)
    702f:	66 62                	data16 (bad) 
    7031:	75 66                	jne    7099 <_IO_stdin_used+0x99>
    7033:	00 5f 5f             	add    %bl,0x5f(%rdi)
    7036:	63 73 74             	movsxd 0x74(%rbx),%esi
    7039:	72 5f                	jb     709a <_IO_stdin_used+0x9a>
    703b:	72 65                	jb     70a2 <_IO_stdin_used+0xa2>
    703d:	6c                   	insb   (%dx),%es:(%rdi)
    703e:	73 69                	jae    70a9 <_IO_stdin_used+0xa9>
    7040:	7a 00                	jp     7042 <_IO_stdin_used+0x42>
    7042:	5f                   	pop    %rdi
    7043:	5f                   	pop    %rdi
    7044:	63 73 74             	movsxd 0x74(%rbx),%esi
    7047:	72 5f                	jb     70a8 <_IO_stdin_used+0xa8>
    7049:	66 6c                	data16 insb (%dx),%es:(%rdi)
    704b:	61                   	(bad)  
    704c:	67 00 5f 5f          	add    %bl,0x5f(%edi)
    7050:	63 73 74             	movsxd 0x74(%rbx),%esi
    7053:	72 5f                	jb     70b4 <_IO_stdin_used+0xb4>
    7055:	64 61                	fs (bad) 
    7057:	74 62                	je     70bb <_IO_stdin_used+0xbb>
    7059:	75 66                	jne    70c1 <_IO_stdin_used+0xc1>
    705b:	00 5f 5f             	add    %bl,0x5f(%rdi)
    705e:	63 73 74             	movsxd 0x74(%rbx),%esi
    7061:	72 5f                	jb     70c2 <_IO_stdin_used+0xc2>
    7063:	73 65                	jae    70ca <_IO_stdin_used+0xca>
    7065:	74 5f                	je     70c6 <_IO_stdin_used+0xc6>
    7067:	6e                   	outsb  %ds:(%rsi),(%dx)
    7068:	6f                   	outsl  %ds:(%rsi),(%dx)
    7069:	66 62                	data16 (bad) 
    706b:	75 66                	jne    70d3 <_IO_stdin_used+0xd3>
    706d:	00 5f 5f             	add    %bl,0x5f(%rdi)
    7070:	63 73 74             	movsxd 0x74(%rbx),%esi
    7073:	72 5f                	jb     70d4 <_IO_stdin_used+0xd4>
    7075:	73 65                	jae    70dc <_IO_stdin_used+0xdc>
    7077:	74 5f                	je     70d8 <_IO_stdin_used+0xd8>
    7079:	72 65                	jb     70e0 <_IO_stdin_used+0xe0>
    707b:	6c                   	insb   (%dx),%es:(%rdi)
    707c:	73 69                	jae    70e7 <_IO_stdin_used+0xe7>
    707e:	7a 00                	jp     7080 <_IO_stdin_used+0x80>
    7080:	5f                   	pop    %rdi
    7081:	5f                   	pop    %rdi
    7082:	63 73 74             	movsxd 0x74(%rbx),%esi
    7085:	72 5f                	jb     70e6 <_IO_stdin_used+0xe6>
    7087:	68 65 61 64 65       	pushq  $0x65646165
    708c:	72 5f                	jb     70ed <_IO_stdin_used+0xed>
    708e:	66 72 6f             	data16 jb 7100 <_IO_stdin_used+0x100>
    7091:	6d                   	insl   (%dx),%es:(%rdi)
    7092:	00 5f 5f             	add    %bl,0x5f(%rdi)
    7095:	63 73 74             	movsxd 0x74(%rbx),%esi
    7098:	72 5f                	jb     70f9 <_IO_stdin_used+0xf9>
    709a:	73 65                	jae    7101 <_IO_stdin_used+0x101>
    709c:	74 5f                	je     70fd <_IO_stdin_used+0xfd>
    709e:	68 65 61 64 65       	pushq  $0x65646165
    70a3:	72 00                	jb     70a5 <_IO_stdin_used+0xa5>
    70a5:	5f                   	pop    %rdi
    70a6:	5f                   	pop    %rdi
    70a7:	63 73 74             	movsxd 0x74(%rbx),%esi
    70aa:	72 5f                	jb     710b <_IO_stdin_used+0x10b>
    70ac:	73 65                	jae    7113 <_IO_stdin_used+0x113>
    70ae:	74 5f                	je     710f <_IO_stdin_used+0x10f>
    70b0:	68 65 61 64 65       	pushq  $0x65646165
    70b5:	72 5f                	jb     7116 <_IO_stdin_used+0x116>
    70b7:	77 68                	ja     7121 <CSWTCH.23+0x1>
    70b9:	00 41 6c             	add    %al,0x6c(%rcx)
    70bc:	6c                   	insb   (%dx),%es:(%rdi)
    70bd:	6f                   	outsl  %ds:(%rsi),(%dx)
    70be:	63 61 74             	movsxd 0x74(%rcx),%esp
    70c1:	69 6f 6e 20 66 61 69 	imul   $0x69616620,0x6e(%rdi),%ebp
    70c8:	6c                   	insb   (%dx),%es:(%rdi)
    70c9:	75 72                	jne    713d <CSWTCH.19+0xd>
    70cb:	65 00 6e 63          	add    %ch,%gs:0x63(%rsi)
    70cf:	73 74                	jae    7145 <CSWTCH.19+0x15>
    70d1:	72 5f                	jb     7132 <CSWTCH.19+0x2>
    70d3:	6d                   	insl   (%dx),%es:(%rdi)
    70d4:	74 00                	je     70d6 <_IO_stdin_used+0xd6>
    70d6:	6e                   	outsb  %ds:(%rsi),(%dx)
    70d7:	63 73 74             	movsxd 0x74(%rbx),%esi
    70da:	72 5f                	jb     713b <CSWTCH.19+0xb>
    70dc:	6e                   	outsb  %ds:(%rsi),(%dx)
    70dd:	65 77 00             	gs ja  70e0 <_IO_stdin_used+0xe0>
    70e0:	6e                   	outsb  %ds:(%rsi),(%dx)
    70e1:	63 73 74             	movsxd 0x74(%rbx),%esi
    70e4:	72 5f                	jb     7145 <CSWTCH.19+0x15>
    70e6:	66 72 6f             	data16 jb 7158 <CSWTCH.19+0x28>
    70e9:	6d                   	insl   (%dx),%es:(%rdi)
    70ea:	00 6e 63             	add    %ch,0x63(%rsi)
    70ed:	73 74                	jae    7163 <CSWTCH.19+0x33>
    70ef:	72 63                	jb     7154 <CSWTCH.19+0x24>
    70f1:	70 79                	jo     716c <CSWTCH.19+0x3c>
    70f3:	00 41 6c             	add    %al,0x6c(%rcx)
    70f6:	6c                   	insb   (%dx),%es:(%rdi)
    70f7:	6f                   	outsl  %ds:(%rsi),(%dx)
    70f8:	63 61 74             	movsxd 0x74(%rcx),%esp
    70fb:	69 6f 6e 20 66 61 69 	imul   $0x69616620,0x6e(%rdi),%ebp
    7102:	6c                   	insb   (%dx),%es:(%rdi)
    7103:	65 64 00 63 73       	gs add %ah,%fs:0x73(%rbx)
    7108:	74 72                	je     717c <CSWTCH.19+0x4c>
    710a:	5f                   	pop    %rdi
    710b:	72 65                	jb     7172 <CSWTCH.19+0x42>
    710d:	73 69                	jae    7178 <CSWTCH.19+0x48>
    710f:	7a 65                	jp     7176 <CSWTCH.19+0x46>
    7111:	00 63 73             	add    %ah,0x73(%rbx)
    7114:	74 72                	je     7188 <CSWTCH.23+0x8>
    7116:	5f                   	pop    %rdi
    7117:	74 72                	je     718b <CSWTCH.23+0xb>
    7119:	69 6d 00 00 00 00 00 	imul   $0x0,0x0(%rbp),%ebp

0000000000007120 <CSWTCH.23>:
    7120:	40 00 00             	add    %al,(%rax)
    7123:	00 00                	add    %al,(%rax)
    7125:	04 00                	add    $0x0,%al
    7127:	00 00                	add    %al,(%rax)
    7129:	10 00                	adc    %al,(%rax)
    712b:	00 00                	add    %al,(%rax)
    712d:	00 00                	add    %al,(%rax)
    712f:	01                 	add    %eax,(%rbx)

0000000000007130 <CSWTCH.19>:
    7130:	03 00                	add    (%rax),%eax
    7132:	00 00                	add    %al,(%rax)
    7134:	06                   	(bad)  
    7135:	00 00                	add    %al,(%rax)
    7137:	00 0c 00             	add    %cl,(%rax,%rax,1)
    713a:	00 00                	add    %al,(%rax)
    713c:	18 00                	sbb    %al,(%rax)
    713e:	00 00                	add    %al,(%rax)
    7140:	63 73 74             	movsxd 0x74(%rbx),%esi
    7143:	72 5f                	jb     71a4 <CSWTCH.19+0x14>
    7145:	64 65 6c             	fs gs insb (%dx),%es:(%rdi)
    7148:	69 6d 00 4f 75 74 20 	imul   $0x2074754f,0x0(%rbp),%ebp
    714f:	6f                   	outsl  %ds:(%rsi),(%dx)
    7150:	66 20 69 6e          	data16 and %ch,0x6e(%rcx)
    7154:	64 65 78 20          	fs gs js 7178 <CSWTCH.19+0x48>
    7158:	70 6f                	jo     71c9 <CSWTCH.19+0x39>
    715a:	73 69                	jae    71c5 <CSWTCH.19+0x35>
    715c:	74 69                	je     71c7 <CSWTCH.19+0x37>
    715e:	6f                   	outsl  %ds:(%rsi),(%dx)
    715f:	6e                   	outsb  %ds:(%rsi),(%dx)
    7160:	00 63 73             	add    %ah,0x73(%rbx)
    7163:	74 72                	je     71d7 <CSWTCH.19+0x47>
    7165:	5f                   	pop    %rdi
    7166:	70 75                	jo     71dd <CSWTCH.19+0x4d>
    7168:	74 73                	je     71dd <CSWTCH.19+0x4d>
    716a:	00 63 73             	add    %ah,0x73(%rbx)
    716d:	74 72                	je     71e1 <CSWTCH.19+0x51>
    716f:	5f                   	pop    %rdi
    7170:	70 75                	jo     71e7 <CSWTCH.19+0x57>
    7172:	74 73                	je     71e7 <CSWTCH.19+0x57>
    7174:	6e                   	outsb  %ds:(%rsi),(%dx)
	...

0000000000007180 <CSWTCH.23>:
    7180:	10 00                	adc    %al,(%rax)
    7182:	00 00                	add    %al,(%rax)
    7184:	00 04 00             	add    %al,(%rax,%rax,1)
    7187:	00 00                	add    %al,(%rax)
    7189:	10 00                	adc    %al,(%rax)
    718b:	00 00                	add    %al,(%rax)
    718d:	00 00                	add    %al,(%rax)
    718f:	01                 	add    %eax,(%rbx)

0000000000007190 <CSWTCH.19>:
    7190:	03 00                	add    (%rax),%eax
    7192:	00 00                	add    %al,(%rax)
    7194:	06                   	(bad)  
    7195:	00 00                	add    %al,(%rax)
    7197:	00 0c 00             	add    %cl,(%rax,%rax,1)
    719a:	00 00                	add    %al,(%rax)
    719c:	18 00                	sbb    %al,(%rax)
    719e:	00 00                	add    %al,(%rax)
    71a0:	1b 5b 3b             	sbb    0x3b(%rbx),%ebx
    71a3:	33 34 6d 00 1b 5b 30 	xor    0x305b1b00(,%rbp,2),%esi
    71aa:	6d                   	insl   (%dx),%es:(%rdi)
    71ab:	00 1b                	add    %bl,(%rbx)
    71ad:	5b                   	pop    %rbx
    71ae:	3b 33                	cmp    (%rbx),%esi
    71b0:	31 6d 00             	xor    %ebp,0x0(%rbp)
    71b3:	3a 20                	cmp    (%rax),%ah
    71b5:	00 00                	add    %al,(%rax)
    71b7:	00 1b                	add    %bl,(%rbx)
    71b9:	00 00                	add    %al,(%rax)
    71bb:	00 5b 00             	add    %bl,0x0(%rbx)
    71be:	00 00                	add    %al,(%rax)
    71c0:	3b 00                	cmp    (%rax),%eax
    71c2:	00 00                	add    %al,(%rax)
    71c4:	33 00                	xor    (%rax),%eax
    71c6:	00 00                	add    %al,(%rax)
    71c8:	34 00                	xor    $0x0,%al
    71ca:	00 00                	add    %al,(%rax)
    71cc:	6d                   	insl   (%dx),%es:(%rdi)
    71cd:	00 00                	add    %al,(%rax)
    71cf:	00 00                	add    %al,(%rax)
    71d1:	00 00                	add    %al,(%rax)
    71d3:	00 1b                	add    %bl,(%rbx)
    71d5:	00 00                	add    %al,(%rax)
    71d7:	00 5b 00             	add    %bl,0x0(%rbx)
    71da:	00 00                	add    %al,(%rax)
    71dc:	30 00                	xor    %al,(%rax)
    71de:	00 00                	add    %al,(%rax)
    71e0:	6d                   	insl   (%dx),%es:(%rdi)
    71e1:	00 00                	add    %al,(%rax)
    71e3:	00 00                	add    %al,(%rax)
    71e5:	00 00                	add    %al,(%rax)
    71e7:	00 1b                	add    %bl,(%rbx)
    71e9:	00 00                	add    %al,(%rax)
    71eb:	00 5b 00             	add    %bl,0x0(%rbx)
    71ee:	00 00                	add    %al,(%rax)
    71f0:	3b 00                	cmp    (%rax),%eax
    71f2:	00 00                	add    %al,(%rax)
    71f4:	33 00                	xor    (%rax),%eax
    71f6:	00 00                	add    %al,(%rax)
    71f8:	31 00                	xor    %eax,(%rax)
    71fa:	00 00                	add    %al,(%rax)
    71fc:	6d                   	insl   (%dx),%es:(%rdi)
    71fd:	00 00                	add    %al,(%rax)
    71ff:	00 00                	add    %al,(%rax)
    7201:	00 00                	add    %al,(%rax)
    7203:	00 3a                	add    %bh,(%rdx)
    7205:	00 00                	add    %al,(%rax)
    7207:	00 20                	add    %ah,(%rax)
    7209:	00 00                	add    %al,(%rax)
    720b:	00 00                	add    %al,(%rax)
    720d:	00 00                	add    %al,(%rax)
    720f:	00 4e 65             	add    %cl,0x65(%rsi)
    7212:	76 65                	jbe    7279 <CSWTCH.19+0xe9>
    7214:	72 20                	jb     7236 <CSWTCH.19+0xa6>
    7216:	67 6f                	outsl  %ds:(%esi),(%dx)
    7218:	6e                   	outsb  %ds:(%rsi),(%dx)
    7219:	6e                   	outsb  %ds:(%rsi),(%dx)
    721a:	61                   	(bad)  
    721b:	20 67 69             	and    %ah,0x69(%rdi)
    721e:	76 65                	jbe    7285 <CSWTCH.19+0xf5>
    7220:	20 79 6f             	and    %bh,0x6f(%rcx)
    7223:	75 20                	jne    7245 <CSWTCH.19+0xb5>
    7225:	75 70                	jne    7297 <CSWTCH.19+0x107>
    7227:	0a 00                	or     (%rax),%al
    7229:	53                   	push   %rbx
    722a:	74 72                	je     729e <CSWTCH.19+0x10e>
    722c:	69 6e 67 20 31 0a 00 	imul   $0xa3120,0x67(%rsi),%ebp
    7233:	4e                   	rex.WRX
    7234:	65 76 65             	gs jbe 729c <CSWTCH.19+0x10c>
    7237:	72 20                	jb     7259 <CSWTCH.19+0xc9>
    7239:	67 6f                	outsl  %ds:(%esi),(%dx)
    723b:	6e                   	outsb  %ds:(%rsi),(%dx)
    723c:	6e                   	outsb  %ds:(%rsi),(%dx)
    723d:	61                   	(bad)  
    723e:	20 6d 61             	and    %ch,0x61(%rbp)
    7241:	6b 65 20 79          	imul   $0x79,0x20(%rbp),%esp
    7245:	6f                   	outsl  %ds:(%rsi),(%dx)
    7246:	75 20                	jne    7268 <CSWTCH.19+0xd8>
    7248:	63 72 79             	movsxd 0x79(%rdx),%esi
    724b:	0a 00                	or     (%rax),%al
    724d:	53                   	push   %rbx
    724e:	74 72                	je     72c2 <CSWTCH.19+0x132>
    7250:	69 6e 67 20 32 0a 00 	imul   $0xa3220,0x67(%rsi),%ebp
    7257:	53                   	push   %rbx
    7258:	74 72                	je     72cc <CSWTCH.19+0x13c>
    725a:	69 6e 67 20 33 0a 00 	imul   $0xa3320,0x67(%rsi),%ebp
    7261:	53                   	push   %rbx
    7262:	74 72                	je     72d6 <CSWTCH.19+0x146>
    7264:	69 6e 67 20 34 0a 00 	imul   $0xa3420,0x67(%rsi),%ebp
    726b:	53                   	push   %rbx
    726c:	74 72                	je     72e0 <__GNU_EH_FRAME_HDR>
    726e:	69 6e 67 20 35 0a 00 	imul   $0xa3520,0x67(%rsi),%ebp
    7275:	52                   	push   %rdx
    7276:	75 6e                	jne    72e6 <__GNU_EH_FRAME_HDR+0x6>
    7278:	6e                   	outsb  %ds:(%rsi),(%dx)
    7279:	69 6e 67 20 74 69 6d 	imul   $0x6d697420,0x67(%rsi),%ebp
    7280:	65 3a 20             	cmp    %gs:(%rax),%ah
    7283:	25 6c 64 0a 00       	and    $0xa646c,%eax
    7288:	4e                   	rex.WRX
    7289:	65 76 65             	gs jbe 72f1 <__GNU_EH_FRAME_HDR+0x11>
    728c:	72 20                	jb     72ae <CSWTCH.19+0x11e>
    728e:	67 6f                	outsl  %ds:(%esi),(%dx)
    7290:	6e                   	outsb  %ds:(%rsi),(%dx)
    7291:	6e                   	outsb  %ds:(%rsi),(%dx)
    7292:	61                   	(bad)  
    7293:	20 67 69             	and    %ah,0x69(%rdi)
    7296:	76 65                	jbe    72fd <__GNU_EH_FRAME_HDR+0x1d>
    7298:	20 79 6f             	and    %bh,0x6f(%rcx)
    729b:	75 20                	jne    72bd <CSWTCH.19+0x12d>
    729d:	75 70                	jne    730f <__GNU_EH_FRAME_HDR+0x2f>
    729f:	0a 4e 65             	or     0x65(%rsi),%cl
    72a2:	76 65                	jbe    7309 <__GNU_EH_FRAME_HDR+0x29>
    72a4:	72 20                	jb     72c6 <CSWTCH.19+0x136>
    72a6:	67 6f                	outsl  %ds:(%esi),(%dx)
    72a8:	6e                   	outsb  %ds:(%rsi),(%dx)
    72a9:	6e                   	outsb  %ds:(%rsi),(%dx)
    72aa:	61                   	(bad)  
    72ab:	20 6d 61             	and    %ch,0x61(%rbp)
    72ae:	6b 65 20 79          	imul   $0x79,0x20(%rbp),%esp
    72b2:	6f                   	outsl  %ds:(%rsi),(%dx)
    72b3:	75 20                	jne    72d5 <CSWTCH.19+0x145>
    72b5:	63 72 79             	movsxd 0x79(%rdx),%esi
    72b8:	0a 4e 65             	or     0x65(%rsi),%cl
    72bb:	76 65                	jbe    7322 <__GNU_EH_FRAME_HDR+0x42>
    72bd:	72 20                	jb     72df <CSWTCH.19+0x14f>
    72bf:	67 6f                	outsl  %ds:(%esi),(%dx)
    72c1:	6e                   	outsb  %ds:(%rsi),(%dx)
    72c2:	6e                   	outsb  %ds:(%rsi),(%dx)
    72c3:	61                   	(bad)  
    72c4:	20 74 65 6c          	and    %dh,0x6c(%rbp,%riz,2)
    72c8:	6c                   	insb   (%dx),%es:(%rdi)
    72c9:	20 61 20             	and    %ah,0x20(%rcx)
    72cc:	6c                   	insb   (%dx),%es:(%rdi)
    72cd:	69 65 0a 41 6e 64 20 	imul   $0x20646e41,0xa(%rbp),%esp
    72d4:	64 65 73 65          	fs gs jae 733d <__GNU_EH_FRAME_HDR+0x5d>
    72d8:	72 74                	jb     734e <__GNU_EH_FRAME_HDR+0x6e>
    72da:	20 79 6f             	and    %bh,0x6f(%rcx)
    72dd:	75 0a                	jne    72e9 <__GNU_EH_FRAME_HDR+0x9>
	...

Disassembly of section .eh_frame_hdr:

00000000000072e0 <__GNU_EH_FRAME_HDR>:
    72e0:	01 1b                	add    %ebx,(%rbx)
    72e2:	03 3b                	add    (%rbx),%edi
    72e4:	74 03                	je     72e9 <__GNU_EH_FRAME_HDR+0x9>
    72e6:	00 00                	add    %al,(%rax)
    72e8:	6d                   	insl   (%dx),%es:(%rdi)
    72e9:	00 00                	add    %al,(%rax)
    72eb:	00 40 9d             	add    %al,-0x63(%rax)
    72ee:	ff                   	(bad)  
    72ef:	ff c0                	inc    %eax
    72f1:	03 00                	add    (%rax),%eax
    72f3:	00 80 9e ff ff e8    	add    %al,-0x17000062(%rax)
    72f9:	03 00                	add    (%rax),%eax
    72fb:	00 90 9e ff ff b0    	add    %dl,-0x4f000062(%rax)
    7301:	15 00 00 b0 a0       	adc    $0xa0b00000,%eax
    7306:	ff                   	(bad)  
    7307:	ff 90 03 00 00 a0    	callq  *-0x5ffffffd(%rax)
    730d:	a1 ff ff 00 04 00 00 	movabs 0xa1b000000400ffff,%eax
    7314:	b0 a1 
    7316:	ff                   	(bad)  
    7317:	ff 14 04             	callq  *(%rsp,%rax,1)
    731a:	00 00                	add    %al,(%rax)
    731c:	10 a2 ff ff 48 04    	adc    %ah,0x448ffff(%rdx)
    7322:	00 00                	add    %al,(%rax)
    7324:	40 a2 ff ff 5c 04 00 	movabs %al,0xa2b00000045cffff
    732b:	00 b0 a2 
    732e:	ff                   	(bad)  
    732f:	ff 74 04 00          	pushq  0x0(%rsp,%rax,1)
    7333:	00 20                	add    %ah,(%rax)
    7335:	a3 ff ff 8c 04 00 00 	movabs %eax,0xa3900000048cffff
    733c:	90 a3 
    733e:	ff                   	(bad)  
    733f:	ff a4 04 00 00 d0 a3 	jmpq   *-0x5c300000(%rsp,%rax,1)
    7346:	ff                   	(bad)  
    7347:	ff c4                	inc    %esp
    7349:	04 00                	add    $0x0,%al
    734b:	00 00                	add    %al,(%rax)
    734d:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    734e:	ff                   	(bad)  
    734f:	ff                   	(bad)  
    7350:	d8 04 00             	fadds  (%rax,%rax,1)
    7353:	00 40 a4             	add    %al,-0x5c(%rax)
    7356:	ff                   	(bad)  
    7357:	ff                   	(bad)  
    7358:	f8                   	clc    
    7359:	04 00                	add    $0x0,%al
    735b:	00 80 a4 ff ff 0c    	add    %al,0xcffffa4(%rax)
    7361:	05 00 00 e0 a4       	add    $0xa4e00000,%eax
    7366:	ff                   	(bad)  
    7367:	ff 20                	jmpq   *(%rax)
    7369:	05 00 00 40 a5       	add    $0xa5400000,%eax
    736e:	ff                   	(bad)  
    736f:	ff 34 05 00 00 30 a6 	pushq  -0x59d00000(,%rax,1)
    7376:	ff                   	(bad)  
    7377:	ff 68 05             	ljmp   *0x5(%rax)
    737a:	00 00                	add    %al,(%rax)
    737c:	e0 a6                	loopne 7324 <__GNU_EH_FRAME_HDR+0x44>
    737e:	ff                   	(bad)  
    737f:	ff 80 05 00 00 d0    	incl   -0x2ffffffb(%rax)
    7385:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    7386:	ff                   	(bad)  
    7387:	ff 94 05 00 00 50 a9 	callq  *-0x56b00000(%rbp,%rax,1)
    738e:	ff                   	(bad)  
    738f:	ff e0                	jmpq   *%rax
    7391:	05 00 00 10 aa       	add    $0xaa100000,%eax
    7396:	ff                   	(bad)  
    7397:	ff 2c 06             	ljmp   *(%rsi,%rax,1)
    739a:	00 00                	add    %al,(%rax)
    739c:	d0 aa ff ff 44 06    	shrb   0x644ffff(%rdx)
    73a2:	00 00                	add    %al,(%rax)
    73a4:	80 ab ff ff 5c 06 00 	subb   $0x0,0x65cffff(%rbx)
    73ab:	00 a0 ab ff ff 70    	add    %ah,0x70ffffab(%rax)
    73b1:	06                   	(bad)  
    73b2:	00 00                	add    %al,(%rax)
    73b4:	b0 ab                	mov    $0xab,%al
    73b6:	ff                   	(bad)  
    73b7:	ff 84 06 00 00 00 ac 	incl   -0x54000000(%rsi,%rax,1)
    73be:	ff                   	(bad)  
    73bf:	ff b0 06 00 00 40    	pushq  0x40000006(%rax)
    73c5:	ac                   	lods   %ds:(%rsi),%al
    73c6:	ff                   	(bad)  
    73c7:	ff c4                	inc    %esp
    73c9:	06                   	(bad)  
    73ca:	00 00                	add    %al,(%rax)
    73cc:	a0 ac ff ff f0 06 00 	movabs 0x10000006f0ffffac,%al
    73d3:	00 10 
    73d5:	ad                   	lods   %ds:(%rsi),%eax
    73d6:	ff                   	(bad)  
    73d7:	ff 1c 07             	lcall  *(%rdi,%rax,1)
    73da:	00 00                	add    %al,(%rax)
    73dc:	10 ae ff ff 58 07    	adc    %ch,0x758ffff(%rsi)
    73e2:	00 00                	add    %al,(%rax)
    73e4:	70 ae                	jo     7394 <__GNU_EH_FRAME_HDR+0xb4>
    73e6:	ff                   	(bad)  
    73e7:	ff 84 07 00 00 c0 ae 	incl   -0x51400000(%rdi,%rax,1)
    73ee:	ff                   	(bad)  
    73ef:	ff a0 07 00 00 60    	jmpq   *0x60000007(%rax)
    73f5:	b0 ff                	mov    $0xff,%al
    73f7:	ff e4                	jmpq   *%rsp
    73f9:	07                   	(bad)  
    73fa:	00 00                	add    %al,(%rax)
    73fc:	00 b2 ff ff 30 08    	add    %dh,0x830ffff(%rdx)
    7402:	00 00                	add    %al,(%rax)
    7404:	a0 b3 ff ff 7c 08 00 	movabs 0xb00000087cffffb3,%al
    740b:	00 b0 
    740d:	b3 ff                	mov    $0xff,%bl
    740f:	ff 90 08 00 00 50    	callq  *0x50000008(%rax)
    7415:	c1 ff ff             	sar    $0xff,%edi
    7418:	24 09                	and    $0x9,%al
    741a:	00 00                	add    %al,(%rax)
    741c:	60                   	(bad)  
    741d:	c1 ff ff             	sar    $0xff,%edi
    7420:	38 09                	cmp    %cl,(%rcx)
    7422:	00 00                	add    %al,(%rax)
    7424:	e0 c4                	loopne 73ea <__GNU_EH_FRAME_HDR+0x10a>
    7426:	ff                   	(bad)  
    7427:	ff b0 09 00 00 10    	pushq  0x10000009(%rax)
    742d:	c5 ff ff             	(bad)  
    7430:	c4                   	(bad)  
    7431:	09 00                	or     %eax,(%rax)
    7433:	00 60 c5             	add    %ah,-0x3b(%rax)
    7436:	ff                   	(bad)  
    7437:	ff f0                	push   %rax
    7439:	09 00                	or     %eax,(%rax)
    743b:	00 b0 c5 ff ff 1c    	add    %dh,0x1cffffc5(%rax)
    7441:	0a 00                	or     (%rax),%al
    7443:	00 f0                	add    %dh,%al
    7445:	c5 ff ff             	(bad)  
    7448:	40 0a 00             	or     (%rax),%al
    744b:	00 20                	add    %ah,(%rax)
    744d:	c6                   	(bad)  
    744e:	ff                   	(bad)  
    744f:	ff 5c 0a 00          	lcall  *0x0(%rdx,%rcx,1)
    7453:	00 50 c6             	add    %dl,-0x3a(%rax)
    7456:	ff                   	(bad)  
    7457:	ff                   	(bad)  
    7458:	78 0a                	js     7464 <__GNU_EH_FRAME_HDR+0x184>
    745a:	00 00                	add    %al,(%rax)
    745c:	f0 c6                	lock (bad) 
    745e:	ff                   	(bad)  
    745f:	ff c4                	inc    %esp
    7461:	0a 00                	or     (%rax),%al
    7463:	00 10                	add    %dl,(%rax)
    7465:	c8 ff ff 14          	enterq $0xffff,$0x14
    7469:	0b 00                	or     (%rax),%eax
    746b:	00 40 c9             	add    %al,-0x37(%rax)
    746e:	ff                   	(bad)  
    746f:	ff 64 0b 00          	jmpq   *0x0(%rbx,%rcx,1)
    7473:	00 50 c9             	add    %dl,-0x37(%rax)
    7476:	ff                   	(bad)  
    7477:	ff                   	(bad)  
    7478:	78 0b                	js     7485 <__GNU_EH_FRAME_HDR+0x1a5>
    747a:	00 00                	add    %al,(%rax)
    747c:	c0 cb ff             	ror    $0xff,%bl
    747f:	ff c4                	inc    %esp
    7481:	0b 00                	or     (%rax),%eax
    7483:	00 e0                	add    %ah,%al
    7485:	cb                   	lret   
    7486:	ff                   	(bad)  
    7487:	ff                   	(bad)  
    7488:	d8 0b                	fmuls  (%rbx)
    748a:	00 00                	add    %al,(%rax)
    748c:	00 cc                	add    %cl,%ah
    748e:	ff                   	(bad)  
    748f:	ff                   	(bad)  
    7490:	ec                   	in     (%dx),%al
    7491:	0b 00                	or     (%rax),%eax
    7493:	00 d0                	add    %dl,%al
    7495:	d3 ff                	sar    %cl,%edi
    7497:	ff 20                	jmpq   *(%rax)
    7499:	0c 00                	or     $0x0,%al
    749b:	00 30                	add    %dh,(%rax)
    749d:	d4                   	(bad)  
    749e:	ff                   	(bad)  
    749f:	ff 58 0c             	lcall  *0xc(%rax)
    74a2:	00 00                	add    %al,(%rax)
    74a4:	a0 d4 ff ff a4 0c 00 	movabs 0xca4ffffd4,%al
    74ab:	00 00 
    74ad:	d5                   	(bad)  
    74ae:	ff                   	(bad)  
    74af:	ff e0                	jmpq   *%rax
    74b1:	0c 00                	or     $0x0,%al
    74b3:	00 10                	add    %dl,(%rax)
    74b5:	d5                   	(bad)  
    74b6:	ff                   	(bad)  
    74b7:	ff f4                	push   %rsp
    74b9:	0c 00                	or     $0x0,%al
    74bb:	00 70 d5             	add    %dh,-0x2b(%rax)
    74be:	ff                   	(bad)  
    74bf:	ff 28                	ljmp   *(%rax)
    74c1:	0d 00 00 a0 d5       	or     $0xd5a00000,%eax
    74c6:	ff                   	(bad)  
    74c7:	ff                   	(bad)  
    74c8:	3c 0d                	cmp    $0xd,%al
    74ca:	00 00                	add    %al,(%rax)
    74cc:	10 d6                	adc    %dl,%dh
    74ce:	ff                   	(bad)  
    74cf:	ff 54 0d 00          	callq  *0x0(%rbp,%rcx,1)
    74d3:	00 80 d6 ff ff 6c    	add    %al,0x6cffffd6(%rax)
    74d9:	0d 00 00 f0 d6       	or     $0xd6f00000,%eax
    74de:	ff                   	(bad)  
    74df:	ff 84 0d 00 00 30 d7 	incl   -0x28d00000(%rbp,%rcx,1)
    74e6:	ff                   	(bad)  
    74e7:	ff a4 0d 00 00 60 d7 	jmpq   *-0x28a00000(%rbp,%rcx,1)
    74ee:	ff                   	(bad)  
    74ef:	ff                   	(bad)  
    74f0:	b8 0d 00 00 a0       	mov    $0xa000000d,%eax
    74f5:	d7                   	xlat   %ds:(%rbx)
    74f6:	ff                   	(bad)  
    74f7:	ff                   	(bad)  
    74f8:	d8 0d 00 00 e0 d7    	fmuls  -0x28200000(%rip)        # ffffffffd7e074fe <_end+0xffffffffd7dfd42e>
    74fe:	ff                   	(bad)  
    74ff:	ff                   	(bad)  
    7500:	ec                   	in     (%dx),%al
    7501:	0d 00 00 40 d8       	or     $0xd8400000,%eax
    7506:	ff                   	(bad)  
    7507:	ff 00                	incl   (%rax)
    7509:	0e                   	(bad)  
    750a:	00 00                	add    %al,(%rax)
    750c:	a0 d8 ff ff 14 0e 00 	movabs 0xa000000e14ffffd8,%al
    7513:	00 a0 
    7515:	d9 ff                	fcos   
    7517:	ff 6c 0e 00          	ljmp   *0x0(%rsi,%rcx,1)
    751b:	00 50 da             	add    %dl,-0x26(%rax)
    751e:	ff                   	(bad)  
    751f:	ff 84 0e 00 00 40 db 	incl   -0x24c00000(%rsi,%rcx,1)
    7526:	ff                   	(bad)  
    7527:	ff 98 0e 00 00 c0    	lcall  *-0x3ffffff2(%rax)
    752d:	dc ff                	fdivr  %st,%st(7)
    752f:	ff e4                	jmpq   *%rsp
    7531:	0e                   	(bad)  
    7532:	00 00                	add    %al,(%rax)
    7534:	80 dd ff             	sbb    $0xff,%ch
    7537:	ff 30                	pushq  (%rax)
    7539:	0f 00 00             	sldt   (%rax)
    753c:	40 de ff             	rex fdivrp %st,%st(7)
    753f:	ff 64 0f 00          	jmpq   *0x0(%rdi,%rcx,1)
    7543:	00 10                	add    %dl,(%rax)
    7545:	df ff                	(bad)  
    7547:	ff 94 0f 00 00 30 df 	callq  *-0x20d00000(%rdi,%rcx,1)
    754e:	ff                   	(bad)  
    754f:	ff a8 0f 00 00 40    	ljmp   *0x4000000f(%rax)
    7555:	df ff                	(bad)  
    7557:	ff                   	(bad)  
    7558:	bc 0f 00 00 90       	mov    $0x9000000f,%esp
    755d:	df ff                	(bad)  
    755f:	ff                   	(bad)  
    7560:	e8 0f 00 00 d0       	callq  ffffffffd0007574 <_end+0xffffffffcfffd4a4>
    7565:	df ff                	(bad)  
    7567:	ff                   	(bad)  
    7568:	fc                   	cld    
    7569:	0f 00 00             	sldt   (%rax)
    756c:	30 e0                	xor    %ah,%al
    756e:	ff                   	(bad)  
    756f:	ff 28                	ljmp   *(%rax)
    7571:	10 00                	adc    %al,(%rax)
    7573:	00 a0 e0 ff ff 54    	add    %ah,0x54ffffe0(%rax)
    7579:	10 00                	adc    %al,(%rax)
    757b:	00 a0 e1 ff ff 90    	add    %ah,-0x6f00001f(%rax)
    7581:	10 00                	adc    %al,(%rax)
    7583:	00 00                	add    %al,(%rax)
    7585:	e2 ff                	loop   7586 <__GNU_EH_FRAME_HDR+0x2a6>
    7587:	ff                   	(bad)  
    7588:	bc 10 00 00 50       	mov    $0x50000010,%esp
    758d:	e2 ff                	loop   758e <__GNU_EH_FRAME_HDR+0x2ae>
    758f:	ff                   	(bad)  
    7590:	d8 10                	fcoms  (%rax)
    7592:	00 00                	add    %al,(%rax)
    7594:	f0 e3 ff             	lock jrcxz 7596 <__GNU_EH_FRAME_HDR+0x2b6>
    7597:	ff 1c 11             	lcall  *(%rcx,%rdx,1)
    759a:	00 00                	add    %al,(%rax)
    759c:	c0 e5 ff             	shl    $0xff,%ch
    759f:	ff 68 11             	ljmp   *0x11(%rax)
    75a2:	00 00                	add    %al,(%rax)
    75a4:	60                   	(bad)  
    75a5:	e7 ff                	out    %eax,$0xff
    75a7:	ff b4 11 00 00 70 e7 	pushq  -0x18900000(%rcx,%rdx,1)
    75ae:	ff                   	(bad)  
    75af:	ff c8                	dec    %eax
    75b1:	11 00                	adc    %eax,(%rax)
    75b3:	00 d0                	add    %dl,%al
    75b5:	f0 ff                	lock (bad) 
    75b7:	ff 5c 12 00          	lcall  *0x0(%rdx,%rdx,1)
    75bb:	00 e0                	add    %ah,%al
    75bd:	f0 ff                	lock (bad) 
    75bf:	ff 70 12             	pushq  0x12(%rax)
    75c2:	00 00                	add    %al,(%rax)
    75c4:	50                   	push   %rax
    75c5:	f4                   	hlt    
    75c6:	ff                   	(bad)  
    75c7:	ff f0                	push   %rax
    75c9:	12 00                	adc    (%rax),%al
    75cb:	00 60 f5             	add    %ah,-0xb(%rax)
    75ce:	ff                   	(bad)  
    75cf:	ff 0c 13             	decl   (%rbx,%rdx,1)
    75d2:	00 00                	add    %al,(%rax)
    75d4:	90                   	nop
    75d5:	f6 ff                	idiv   %bh
    75d7:	ff 34 13             	pushq  (%rbx,%rdx,1)
    75da:	00 00                	add    %al,(%rax)
    75dc:	a0 f6 ff ff 48 13 00 	movabs 0x6000001348fffff6,%al
    75e3:	00 60 
    75e5:	f7 ff                	idiv   %edi
    75e7:	ff 64 13 00          	jmpq   *0x0(%rbx,%rdx,1)
    75eb:	00 50 f8             	add    %dl,-0x8(%rax)
    75ee:	ff                   	(bad)  
    75ef:	ff 8c 13 00 00 60 f8 	decl   -0x7a00000(%rbx,%rdx,1)
    75f6:	ff                   	(bad)  
    75f7:	ff a0 13 00 00 90    	jmpq   *-0x6fffffed(%rax)
    75fd:	f8                   	clc    
    75fe:	ff                   	(bad)  
    75ff:	ff b4 13 00 00 e0 f8 	pushq  -0x7200000(%rbx,%rdx,1)
    7606:	ff                   	(bad)  
    7607:	ff e0                	jmpq   *%rax
    7609:	13 00                	adc    (%rax),%eax
    760b:	00 30                	add    %dh,(%rax)
    760d:	f9                   	stc    
    760e:	ff                   	(bad)  
    760f:	ff 0c 14             	decl   (%rsp,%rdx,1)
    7612:	00 00                	add    %al,(%rax)
    7614:	70 f9                	jo     760f <__GNU_EH_FRAME_HDR+0x32f>
    7616:	ff                   	(bad)  
    7617:	ff 30                	pushq  (%rax)
    7619:	14 00                	adc    $0x0,%al
    761b:	00 a0 f9 ff ff 4c    	add    %ah,0x4cfffff9(%rax)
    7621:	14 00                	adc    $0x0,%al
    7623:	00 d0                	add    %dl,%al
    7625:	f9                   	stc    
    7626:	ff                   	(bad)  
    7627:	ff 68 14             	ljmp   *0x14(%rax)
    762a:	00 00                	add    %al,(%rax)
    762c:	70 fa                	jo     7628 <__GNU_EH_FRAME_HDR+0x348>
    762e:	ff                   	(bad)  
    762f:	ff b4 14 00 00 30 fb 	pushq  -0x4d00000(%rsp,%rdx,1)
    7636:	ff                   	(bad)  
    7637:	ff 14 15 00 00 e0 fb 	callq  *-0x4200000(,%rdx,1)
    763e:	ff                   	(bad)  
    763f:	ff 60 15             	jmpq   *0x15(%rax)
    7642:	00 00                	add    %al,(%rax)
    7644:	90                   	nop
    7645:	fc                   	cld    
    7646:	ff                   	(bad)  
    7647:	ff 00                	incl   (%rax)
    7649:	16                   	(bad)  
    764a:	00 00                	add    %al,(%rax)
    764c:	f0 fc                	lock cld 
    764e:	ff                   	(bad)  
    764f:	ff 48 16             	decl   0x16(%rax)
	...

Disassembly of section .eh_frame:

0000000000007658 <__FRAME_END__-0x12e4>:
    7658:	14 00                	adc    $0x0,%al
    765a:	00 00                	add    %al,(%rax)
    765c:	00 00                	add    %al,(%rax)
    765e:	00 00                	add    %al,(%rax)
    7660:	01 7a 52             	add    %edi,0x52(%rdx)
    7663:	00 01                	add    %al,(%rcx)
    7665:	78 10                	js     7677 <__GNU_EH_FRAME_HDR+0x397>
    7667:	01 1b                	add    %ebx,(%rbx)
    7669:	0c 07                	or     $0x7,%al
    766b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    7671:	00 00                	add    %al,(%rax)
    7673:	00 1c 00             	add    %bl,(%rax,%rax,1)
    7676:	00 00                	add    %al,(%rax)
    7678:	18 9d ff ff 2b 00    	sbb    %bl,0x2bffff(%rbp)
	...
    7686:	00 00                	add    %al,(%rax)
    7688:	14 00                	adc    $0x0,%al
    768a:	00 00                	add    %al,(%rax)
    768c:	00 00                	add    %al,(%rax)
    768e:	00 00                	add    %al,(%rax)
    7690:	01 7a 52             	add    %edi,0x52(%rdx)
    7693:	00 01                	add    %al,(%rcx)
    7695:	78 10                	js     76a7 <__GNU_EH_FRAME_HDR+0x3c7>
    7697:	01 1b                	add    %ebx,(%rbx)
    7699:	0c 07                	or     $0x7,%al
    769b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    76a1:	00 00                	add    %al,(%rax)
    76a3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    76a6:	00 00                	add    %al,(%rax)
    76a8:	78 99                	js     7643 <__GNU_EH_FRAME_HDR+0x363>
    76aa:	ff                   	(bad)  
    76ab:	ff 40 01             	incl   0x1(%rax)
    76ae:	00 00                	add    %al,(%rax)
    76b0:	00 0e                	add    %cl,(%rsi)
    76b2:	10 46 0e             	adc    %al,0xe(%rsi)
    76b5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    76b8:	0b 77 08             	or     0x8(%rdi),%esi
    76bb:	80 00 3f             	addb   $0x3f,(%rax)
    76be:	1a 3b                	sbb    (%rbx),%bh
    76c0:	2a 33                	sub    (%rbx),%dh
    76c2:	24 22                	and    $0x22,%al
    76c4:	00 00                	add    %al,(%rax)
    76c6:	00 00                	add    %al,(%rax)
    76c8:	14 00                	adc    $0x0,%al
    76ca:	00 00                	add    %al,(%rax)
    76cc:	44 00 00             	add    %r8b,(%rax)
    76cf:	00 90 9a ff ff 08    	add    %dl,0x8ffff9a(%rax)
	...
    76dd:	00 00                	add    %al,(%rax)
    76df:	00 10                	add    %dl,(%rax)
    76e1:	00 00                	add    %al,(%rax)
    76e3:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
    76e7:	00 98 9d ff ff 08    	add    %bl,0x8ffff9d(%rax)
    76ed:	00 00                	add    %al,(%rax)
    76ef:	00 00                	add    %al,(%rax)
    76f1:	00 00                	add    %al,(%rax)
    76f3:	00 30                	add    %dh,(%rax)
    76f5:	00 00                	add    %al,(%rax)
    76f7:	00 70 00             	add    %dh,0x0(%rax)
    76fa:	00 00                	add    %al,(%rax)
    76fc:	94                   	xchg   %eax,%esp
    76fd:	9d                   	popfq  
    76fe:	ff                   	(bad)  
    76ff:	ff 58 00             	lcall  *0x0(%rax)
    7702:	00 00                	add    %al,(%rax)
    7704:	00 41 0e             	add    %al,0xe(%rcx)
    7707:	10 86 02 44 0e 18    	adc    %al,0x180e4402(%rsi)
    770d:	83 03 47             	addl   $0x47,(%rbx)
    7710:	0e                   	(bad)  
    7711:	20 56 0a             	and    %dl,0xa(%rsi)
    7714:	0e                   	(bad)  
    7715:	18 41 0e             	sbb    %al,0xe(%rcx)
    7718:	10 44 0e 08          	adc    %al,0x8(%rsi,%rcx,1)
    771c:	49 0b 62 0e          	or     0xe(%r10),%rsp
    7720:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    7724:	41 0e                	rex.B (bad) 
    7726:	08 00                	or     %al,(%rax)
    7728:	10 00                	adc    %al,(%rax)
    772a:	00 00                	add    %al,(%rax)
    772c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    772d:	00 00                	add    %al,(%rax)
    772f:	00 c0                	add    %al,%al
    7731:	9d                   	popfq  
    7732:	ff                   	(bad)  
    7733:	ff 2e                	ljmp   *(%rsi)
    7735:	00 00                	add    %al,(%rax)
    7737:	00 00                	add    %al,(%rax)
    7739:	00 00                	add    %al,(%rax)
    773b:	00 14 00             	add    %dl,(%rax,%rax,1)
    773e:	00 00                	add    %al,(%rax)
    7740:	b8 00 00 00 dc       	mov    $0xdc000000,%eax
    7745:	9d                   	popfq  
    7746:	ff                   	(bad)  
    7747:	ff 6d 00             	ljmp   *0x0(%rbp)
    774a:	00 00                	add    %al,(%rax)
    774c:	00 7c 0e 20          	add    %bh,0x20(%rsi,%rcx,1)
    7750:	64 0e                	fs (bad) 
    7752:	08 00                	or     %al,(%rax)
    7754:	14 00                	adc    $0x0,%al
    7756:	00 00                	add    %al,(%rax)
    7758:	d0 00                	rolb   (%rax)
    775a:	00 00                	add    %al,(%rax)
    775c:	34 9e                	xor    $0x9e,%al
    775e:	ff                   	(bad)  
    775f:	ff 6d 00             	ljmp   *0x0(%rbp)
    7762:	00 00                	add    %al,(%rax)
    7764:	00 7c 0e 20          	add    %bh,0x20(%rsi,%rcx,1)
    7768:	66 0e                	data16 (bad) 
    776a:	08 00                	or     %al,(%rax)
    776c:	14 00                	adc    $0x0,%al
    776e:	00 00                	add    %al,(%rax)
    7770:	e8 00 00 00 8c       	callq  ffffffff8c007775 <_end+0xffffffff8bffd6a5>
    7775:	9e                   	sahf   
    7776:	ff                   	(bad)  
    7777:	ff 6d 00             	ljmp   *0x0(%rbp)
    777a:	00 00                	add    %al,(%rax)
    777c:	00 7c 0e 20          	add    %bh,0x20(%rsi,%rcx,1)
    7780:	64 0e                	fs (bad) 
    7782:	08 00                	or     %al,(%rax)
    7784:	1c 00                	sbb    $0x0,%al
    7786:	00 00                	add    %al,(%rax)
    7788:	00 01                	add    %al,(%rcx)
    778a:	00 00                	add    %al,(%rax)
    778c:	e4 9e                	in     $0x9e,%al
    778e:	ff                   	(bad)  
    778f:	ff                   	(bad)  
    7790:	3e 00 00             	add    %al,%ds:(%rax)
    7793:	00 00                	add    %al,(%rax)
    7795:	45 0e                	rex.RB (bad) 
    7797:	10 8c 02 55 0a 0e 08 	adc    %cl,0x80e0a55(%rdx,%rax,1)
    779e:	46 0b 5d 0e          	rex.RX or 0xe(%rbp),%r11d
    77a2:	08 00                	or     %al,(%rax)
    77a4:	10 00                	adc    %al,(%rax)
    77a6:	00 00                	add    %al,(%rax)
    77a8:	20 01                	and    %al,(%rcx)
    77aa:	00 00                	add    %al,(%rax)
    77ac:	04 9f                	add    $0x9f,%al
    77ae:	ff                   	(bad)  
    77af:	ff 2d 00 00 00 00    	ljmp   *0x0(%rip)        # 77b5 <__GNU_EH_FRAME_HDR+0x4d5>
    77b5:	00 00                	add    %al,(%rax)
    77b7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    77ba:	00 00                	add    %al,(%rax)
    77bc:	34 01                	xor    $0x1,%al
    77be:	00 00                	add    %al,(%rax)
    77c0:	20 9f ff ff 3e 00    	and    %bl,0x3effff(%rdi)
    77c6:	00 00                	add    %al,(%rax)
    77c8:	00 45 0e             	add    %al,0xe(%rbp)
    77cb:	10 8c 02 55 0a 0e 08 	adc    %cl,0x80e0a55(%rdx,%rax,1)
    77d2:	46 0b 5d 0e          	rex.RX or 0xe(%rbp),%r11d
    77d6:	08 00                	or     %al,(%rax)
    77d8:	10 00                	adc    %al,(%rax)
    77da:	00 00                	add    %al,(%rax)
    77dc:	54                   	push   %rsp
    77dd:	01 00                	add    %eax,(%rax)
    77df:	00 40 9f             	add    %al,-0x61(%rax)
    77e2:	ff                   	(bad)  
    77e3:	ff 31                	pushq  (%rcx)
    77e5:	00 00                	add    %al,(%rax)
    77e7:	00 00                	add    %al,(%rax)
    77e9:	00 00                	add    %al,(%rax)
    77eb:	00 10                	add    %dl,(%rax)
    77ed:	00 00                	add    %al,(%rax)
    77ef:	00 68 01             	add    %ch,0x1(%rax)
    77f2:	00 00                	add    %al,(%rax)
    77f4:	6c                   	insb   (%dx),%es:(%rdi)
    77f5:	9f                   	lahf   
    77f6:	ff                   	(bad)  
    77f7:	ff 55 00             	callq  *0x0(%rbp)
    77fa:	00 00                	add    %al,(%rax)
    77fc:	00 00                	add    %al,(%rax)
    77fe:	00 00                	add    %al,(%rax)
    7800:	10 00                	adc    %al,(%rax)
    7802:	00 00                	add    %al,(%rax)
    7804:	7c 01                	jl     7807 <__GNU_EH_FRAME_HDR+0x527>
    7806:	00 00                	add    %al,(%rax)
    7808:	b8 9f ff ff 55       	mov    $0x55ffff9f,%eax
    780d:	00 00                	add    %al,(%rax)
    780f:	00 00                	add    %al,(%rax)
    7811:	00 00                	add    %al,(%rax)
    7813:	00 30                	add    %dh,(%rax)
    7815:	00 00                	add    %al,(%rax)
    7817:	00 90 01 00 00 04    	add    %dl,0x4000001(%rax)
    781d:	a0 ff ff ec 00 00 00 	movabs 0x4500000000ecffff,%al
    7824:	00 45 
    7826:	0e                   	(bad)  
    7827:	10 8c 02 02 45 0a 0e 	adc    %cl,0xe0a4502(%rdx,%rax,1)
    782e:	08 46 0b             	or     %al,0xb(%rsi)
    7831:	60                   	(bad)  
    7832:	0a 0e                	or     (%rsi),%cl
    7834:	08 48 0b             	or     %cl,0xb(%rax)
    7837:	58                   	pop    %rax
    7838:	0a 0e                	or     (%rsi),%cl
    783a:	08 48 0b             	or     %cl,0xb(%rax)
    783d:	75 0a                	jne    7849 <__GNU_EH_FRAME_HDR+0x569>
    783f:	0e                   	(bad)  
    7840:	08 43 0b             	or     %al,0xb(%rbx)
    7843:	5b                   	pop    %rbx
    7844:	0e                   	(bad)  
    7845:	08 00                	or     %al,(%rax)
    7847:	00 14 00             	add    %dl,(%rax,%rax,1)
    784a:	00 00                	add    %al,(%rax)
    784c:	c4 01 00 00          	(bad)
    7850:	c0 a0 ff ff af 00 00 	shlb   $0x0,0xafffff(%rax)
    7857:	00 00                	add    %al,(%rax)
    7859:	02 6c 0e 20          	add    0x20(%rsi,%rcx,1),%ch
    785d:	66 0e                	data16 (bad) 
    785f:	08 10                	or     %dl,(%rax)
    7861:	00 00                	add    %al,(%rax)
    7863:	00 dc                	add    %bl,%ah
    7865:	01 00                	add    %eax,(%rax)
    7867:	00 58 a1             	add    %bl,-0x5f(%rax)
    786a:	ff                   	(bad)  
    786b:	ff                   	(bad)  
    786c:	ed                   	in     (%dx),%eax
    786d:	00 00                	add    %al,(%rax)
    786f:	00 00                	add    %al,(%rax)
    7871:	00 00                	add    %al,(%rax)
    7873:	00 48 00             	add    %cl,0x0(%rax)
    7876:	00 00                	add    %al,(%rax)
    7878:	f0 01 00             	lock add %eax,(%rax)
    787b:	00 34 a2             	add    %dh,(%rdx,%riz,4)
    787e:	ff                   	(bad)  
    787f:	ff                   	(bad)  
    7880:	78 01                	js     7883 <__GNU_EH_FRAME_HDR+0x5a3>
    7882:	00 00                	add    %al,(%rax)
    7884:	00 42 0e             	add    %al,0xe(%rdx)
    7887:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
    788d:	8e 03                	mov    (%rbx),%es
    788f:	42 0e                	rex.X (bad) 
    7891:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    7897:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff863086e1 <_end+0xffffffff862fe611>
    789d:	06                   	(bad)  
    789e:	41 0e                	rex.B (bad) 
    78a0:	38 83 07 46 0e 50    	cmp    %al,0x500e4607(%rbx)
    78a6:	02 68 0a             	add    0xa(%rax),%ch
    78a9:	0e                   	(bad)  
    78aa:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
    78ae:	41 0e                	rex.B (bad) 
    78b0:	28 42 0e             	sub    %al,0xe(%rdx)
    78b3:	20 42 0e             	and    %al,0xe(%rdx)
    78b6:	18 42 0e             	sbb    %al,0xe(%rdx)
    78b9:	10 42 0e             	adc    %al,0xe(%rdx)
    78bc:	08 45 0b             	or     %al,0xb(%rbp)
    78bf:	00 48 00             	add    %cl,0x0(%rax)
    78c2:	00 00                	add    %al,(%rax)
    78c4:	3c 02                	cmp    $0x2,%al
    78c6:	00 00                	add    %al,(%rax)
    78c8:	68 a3 ff ff ba       	pushq  $0xffffffffbaffffa3
    78cd:	00 00                	add    %al,(%rax)
    78cf:	00 00                	add    %al,(%rax)
    78d1:	42 0e                	rex.X (bad) 
    78d3:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
    78d9:	8e 03                	mov    (%rbx),%es
    78db:	42 0e                	rex.X (bad) 
    78dd:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    78e3:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff8630872d <_end+0xffffffff862fe65d>
    78e9:	06                   	(bad)  
    78ea:	41 0e                	rex.B (bad) 
    78ec:	38 83 07 46 0e 50    	cmp    %al,0x500e4607(%rbx)
    78f2:	02 53 0a             	add    0xa(%rbx),%dl
    78f5:	0e                   	(bad)  
    78f6:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
    78fa:	41 0e                	rex.B (bad) 
    78fc:	28 42 0e             	sub    %al,0xe(%rdx)
    78ff:	20 42 0e             	and    %al,0xe(%rdx)
    7902:	18 42 0e             	sbb    %al,0xe(%rdx)
    7905:	10 42 0e             	adc    %al,0xe(%rdx)
    7908:	08 4a 0b             	or     %cl,0xb(%rdx)
    790b:	00 14 00             	add    %dl,(%rax,%rax,1)
    790e:	00 00                	add    %al,(%rax)
    7910:	88 02                	mov    %al,(%rdx)
    7912:	00 00                	add    %al,(%rax)
    7914:	dc a3 ff ff b7 00    	fsubl  0xb7ffff(%rbx)
    791a:	00 00                	add    %al,(%rax)
    791c:	00 02                	add    %al,(%rdx)
    791e:	74 0e                	je     792e <__GNU_EH_FRAME_HDR+0x64e>
    7920:	20 66 0e             	and    %ah,0xe(%rsi)
    7923:	08 14 00             	or     %dl,(%rax,%rax,1)
    7926:	00 00                	add    %al,(%rax)
    7928:	a0 02 00 00 84 a4 ff 	movabs 0xb0ffffa484000002,%al
    792f:	ff b0 
    7931:	00 00                	add    %al,(%rax)
    7933:	00 00                	add    %al,(%rax)
    7935:	02 74 0e 10          	add    0x10(%rsi,%rcx,1),%dh
    7939:	5c                   	pop    %rsp
    793a:	0e                   	(bad)  
    793b:	08 10                	or     %dl,(%rax)
    793d:	00 00                	add    %al,(%rax)
    793f:	00 b8 02 00 00 1c    	add    %bh,0x1c000002(%rax)
    7945:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    7946:	ff                   	(bad)  
    7947:	ff 12                	callq  *(%rdx)
    7949:	00 00                	add    %al,(%rax)
    794b:	00 00                	add    %al,(%rax)
    794d:	00 00                	add    %al,(%rax)
    794f:	00 10                	add    %dl,(%rax)
    7951:	00 00                	add    %al,(%rax)
    7953:	00 cc                	add    %cl,%ah
    7955:	02 00                	add    (%rax),%al
    7957:	00 28                	add    %ch,(%rax)
    7959:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    795a:	ff                   	(bad)  
    795b:	ff 06                	incl   (%rsi)
    795d:	00 00                	add    %al,(%rax)
    795f:	00 00                	add    %al,(%rax)
    7961:	00 00                	add    %al,(%rax)
    7963:	00 28                	add    %ch,(%rax)
    7965:	00 00                	add    %al,(%rax)
    7967:	00 e0                	add    %ah,%al
    7969:	02 00                	add    (%rax),%al
    796b:	00 24 a5 ff ff 4a 00 	add    %ah,0x4affff(,%riz,4)
    7972:	00 00                	add    %al,(%rax)
    7974:	00 41 0e             	add    %al,0xe(%rcx)
    7977:	10 86 02 44 0e 18    	adc    %al,0x180e4402(%rsi)
    797d:	83 03 47             	addl   $0x47,(%rbx)
    7980:	0e                   	(bad)  
    7981:	20 5b 0a             	and    %bl,0xa(%rbx)
    7984:	0e                   	(bad)  
    7985:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    7989:	41 0e                	rex.B (bad) 
    798b:	08 44 0b 00          	or     %al,0x0(%rbx,%rcx,1)
    798f:	00 10                	add    %dl,(%rax)
    7991:	00 00                	add    %al,(%rax)
    7993:	00 0c 03             	add    %cl,(%rbx,%rax,1)
    7996:	00 00                	add    %al,(%rax)
    7998:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
    799a:	ff                   	(bad)  
    799b:	ff 40 00             	incl   0x0(%rax)
    799e:	00 00                	add    %al,(%rax)
    79a0:	00 00                	add    %al,(%rax)
    79a2:	00 00                	add    %al,(%rax)
    79a4:	28 00                	sub    %al,(%rax)
    79a6:	00 00                	add    %al,(%rax)
    79a8:	20 03                	and    %al,(%rbx)
    79aa:	00 00                	add    %al,(%rax)
    79ac:	74 a5                	je     7953 <__GNU_EH_FRAME_HDR+0x673>
    79ae:	ff                   	(bad)  
    79af:	ff 60 00             	jmpq   *0x0(%rax)
    79b2:	00 00                	add    %al,(%rax)
    79b4:	00 41 0e             	add    %al,0xe(%rcx)
    79b7:	10 83 02 6f 0a 0e    	adc    %al,0xe0a6f02(%rbx)
    79bd:	08 48 0b             	or     %cl,0xb(%rax)
    79c0:	48 0a 0e             	rex.W or (%rsi),%cl
    79c3:	08 48 0b             	or     %cl,0xb(%rax)
    79c6:	48 0a 0e             	rex.W or (%rsi),%cl
    79c9:	08 48 0b             	or     %cl,0xb(%rax)
    79cc:	47 0e                	rex.RXB (bad) 
    79ce:	08 00                	or     %al,(%rax)
    79d0:	28 00                	sub    %al,(%rax)
    79d2:	00 00                	add    %al,(%rax)
    79d4:	4c 03 00             	add    (%rax),%r8
    79d7:	00 a8 a5 ff ff 62    	add    %ch,0x62ffffa5(%rax)
    79dd:	00 00                	add    %al,(%rax)
    79df:	00 00                	add    %al,(%rax)
    79e1:	42 0e                	rex.X (bad) 
    79e3:	10 8c 02 70 0a 0e 08 	adc    %cl,0x80e0a70(%rdx,%rax,1)
    79ea:	46 0b 4a 0a          	rex.RX or 0xa(%rdx),%r9d
    79ee:	0e                   	(bad)  
    79ef:	08 46 0b             	or     %al,0xb(%rsi)
    79f2:	4a 0a 0e             	rex.WX or (%rsi),%cl
    79f5:	08 46 0b             	or     %al,0xb(%rsi)
    79f8:	49 0e                	rex.WB (bad) 
    79fa:	08 00                	or     %al,(%rax)
    79fc:	38 00                	cmp    %al,(%rax)
    79fe:	00 00                	add    %al,(%rax)
    7a00:	78 03                	js     7a05 <__GNU_EH_FRAME_HDR+0x725>
    7a02:	00 00                	add    %al,(%rax)
    7a04:	ec                   	in     (%dx),%al
    7a05:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    7a06:	ff                   	(bad)  
    7a07:	ff                   	(bad)  
    7a08:	fc                   	cld    
    7a09:	00 00                	add    %al,(%rax)
    7a0b:	00 00                	add    %al,(%rax)
    7a0d:	42 0e                	rex.X (bad) 
    7a0f:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
    7a15:	8c 03                	mov    %es,(%rbx)
    7a17:	44 0e                	rex.R (bad) 
    7a19:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
    7a1f:	83 05 44 0e 30 02 82 	addl   $0xffffff82,0x2300e44(%rip)        # 230886a <_end+0x22fe79a>
    7a26:	0a 0e                	or     (%rsi),%cl
    7a28:	28 47 0e             	sub    %al,0xe(%rdi)
    7a2b:	20 41 0e             	and    %al,0xe(%rcx)
    7a2e:	18 42 0e             	sbb    %al,0xe(%rdx)
    7a31:	10 42 0e             	adc    %al,0xe(%rdx)
    7a34:	08 45 0b             	or     %al,0xb(%rbp)
    7a37:	00 28                	add    %ch,(%rax)
    7a39:	00 00                	add    %al,(%rax)
    7a3b:	00 b4 03 00 00 b0 a6 	add    %dh,-0x59500000(%rbx,%rax,1)
    7a42:	ff                   	(bad)  
    7a43:	ff 5a 00             	lcall  *0x0(%rdx)
    7a46:	00 00                	add    %al,(%rax)
    7a48:	00 41 0e             	add    %al,0xe(%rcx)
    7a4b:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    7a51:	83 03 47             	addl   $0x47,(%rbx)
    7a54:	0e                   	(bad)  
    7a55:	20 60 0a             	and    %ah,0xa(%rax)
    7a58:	0e                   	(bad)  
    7a59:	18 47 0e             	sbb    %al,0xe(%rdi)
    7a5c:	10 41 0e             	adc    %al,0xe(%rcx)
    7a5f:	08 4f 0b             	or     %cl,0xb(%rdi)
    7a62:	00 00                	add    %al,(%rax)
    7a64:	18 00                	sbb    %al,(%rax)
    7a66:	00 00                	add    %al,(%rax)
    7a68:	e0 03                	loopne 7a6d <__GNU_EH_FRAME_HDR+0x78d>
    7a6a:	00 00                	add    %al,(%rax)
    7a6c:	e4 a6                	in     $0xa6,%al
    7a6e:	ff                   	(bad)  
    7a6f:	ff 47 00             	incl   0x0(%rdi)
    7a72:	00 00                	add    %al,(%rax)
    7a74:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    7a78:	68 0a 0e 08 41       	pushq  $0x41080e0a
    7a7d:	0b 00                	or     (%rax),%eax
    7a7f:	00 40 00             	add    %al,0x0(%rax)
    7a82:	00 00                	add    %al,(%rax)
    7a84:	fc                   	cld    
    7a85:	03 00                	add    (%rax),%eax
    7a87:	00 18                	add    %bl,(%rax)
    7a89:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    7a8a:	ff                   	(bad)  
    7a8b:	ff 93 01 00 00 00    	callq  *0x1(%rbx)
    7a91:	42 0e                	rex.X (bad) 
    7a93:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    7a99:	8d 03                	lea    (%rbx),%eax
    7a9b:	42 0e                	rex.X (bad) 
    7a9d:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
    7aa4:	05 44 0e 30 83       	add    $0x83300e44,%eax
    7aa9:	06                   	(bad)  
    7aaa:	44 0e                	rex.R (bad) 
    7aac:	40 02 ec             	add    %spl,%bpl
    7aaf:	0a 0e                	or     (%rsi),%cl
    7ab1:	30 44 0e 28          	xor    %al,0x28(%rsi,%rcx,1)
    7ab5:	41 0e                	rex.B (bad) 
    7ab7:	20 42 0e             	and    %al,0xe(%rdx)
    7aba:	18 42 0e             	sbb    %al,0xe(%rdx)
    7abd:	10 42 0e             	adc    %al,0xe(%rdx)
    7ac0:	08 4a 0b             	or     %cl,0xb(%rdx)
    7ac3:	00 48 00             	add    %cl,0x0(%rax)
    7ac6:	00 00                	add    %al,(%rax)
    7ac8:	40 04 00             	add    $0x0,%al
    7acb:	00 74 a8 ff          	add    %dh,-0x1(%rax,%rbp,4)
    7acf:	ff 9f 01 00 00 00    	lcall  *0x1(%rdi)
    7ad5:	42 0e                	rex.X (bad) 
    7ad7:	10 8f 02 47 0e 18    	adc    %cl,0x180e4702(%rdi)
    7add:	8e 03                	mov    (%rbx),%es
    7adf:	42 0e                	rex.X (bad) 
    7ae1:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    7ae7:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff8630892e <_end+0xffffffff862fe85e>
    7aed:	06                   	(bad)  
    7aee:	44 0e                	rex.R (bad) 
    7af0:	38 83 07 44 0e 50    	cmp    %al,0x500e4407(%rbx)
    7af6:	02 d9                	add    %cl,%bl
    7af8:	0a 0e                	or     (%rsi),%cl
    7afa:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
    7afe:	41 0e                	rex.B (bad) 
    7b00:	28 42 0e             	sub    %al,0xe(%rdx)
    7b03:	20 42 0e             	and    %al,0xe(%rdx)
    7b06:	18 42 0e             	sbb    %al,0xe(%rdx)
    7b09:	10 42 0e             	adc    %al,0xe(%rdx)
    7b0c:	08 44 0b 00          	or     %al,0x0(%rbx,%rcx,1)
    7b10:	48 00 00             	rex.W add %al,(%rax)
    7b13:	00 8c 04 00 00 c8 a9 	add    %cl,-0x56380000(%rsp,%rax,1)
    7b1a:	ff                   	(bad)  
    7b1b:	ff 92 01 00 00 00    	callq  *0x1(%rdx)
    7b21:	42 0e                	rex.X (bad) 
    7b23:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
    7b29:	8e 03                	mov    (%rbx),%es
    7b2b:	42 0e                	rex.X (bad) 
    7b2d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    7b33:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff8630897a <_end+0xffffffff862fe8aa>
    7b39:	06                   	(bad)  
    7b3a:	41 0e                	rex.B (bad) 
    7b3c:	38 83 07 44 0e 40    	cmp    %al,0x400e4407(%rbx)
    7b42:	03 1f                	add    (%rdi),%ebx
    7b44:	01 0a                	add    %ecx,(%rdx)
    7b46:	0e                   	(bad)  
    7b47:	38 41 0e             	cmp    %al,0xe(%rcx)
    7b4a:	30 41 0e             	xor    %al,0xe(%rcx)
    7b4d:	28 42 0e             	sub    %al,0xe(%rdx)
    7b50:	20 42 0e             	and    %al,0xe(%rdx)
    7b53:	18 42 0e             	sbb    %al,0xe(%rdx)
    7b56:	10 42 0e             	adc    %al,0xe(%rdx)
    7b59:	08 46 0b             	or     %al,0xb(%rsi)
    7b5c:	10 00                	adc    %al,(%rax)
    7b5e:	00 00                	add    %al,(%rax)
    7b60:	d8 04 00             	fadds  (%rax,%rax,1)
    7b63:	00 1c ab             	add    %bl,(%rbx,%rbp,4)
    7b66:	ff                   	(bad)  
    7b67:	ff 0b                	decl   (%rbx)
    7b69:	00 00                	add    %al,(%rax)
    7b6b:	00 00                	add    %al,(%rax)
    7b6d:	00 00                	add    %al,(%rax)
    7b6f:	00 90 00 00 00 ec    	add    %dl,-0x14000000(%rax)
    7b75:	04 00                	add    $0x0,%al
    7b77:	00 18                	add    %bl,(%rax)
    7b79:	ab                   	stos   %eax,%es:(%rdi)
    7b7a:	ff                   	(bad)  
    7b7b:	ff 9b 0d 00 00 00    	lcall  *0xd(%rbx)
    7b81:	4b 0e                	rex.WXB (bad) 
    7b83:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    7b89:	8e 03                	mov    (%rbx),%es
    7b8b:	42 0e                	rex.X (bad) 
    7b8d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    7b93:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff863089dd <_end+0xffffffff862fe90d>
    7b99:	06                   	(bad)  
    7b9a:	44 0e                	rex.R (bad) 
    7b9c:	38 83 07 47 0e 70    	cmp    %al,0x700e4707(%rbx)
    7ba2:	02 d4                	add    %ah,%dl
    7ba4:	0a 0e                	or     (%rsi),%cl
    7ba6:	38 41 0e             	cmp    %al,0xe(%rcx)
    7ba9:	30 41 0e             	xor    %al,0xe(%rcx)
    7bac:	28 42 0e             	sub    %al,0xe(%rdx)
    7baf:	20 42 0e             	and    %al,0xe(%rdx)
    7bb2:	18 42 0e             	sbb    %al,0xe(%rdx)
    7bb5:	10 42 0e             	adc    %al,0xe(%rdx)
    7bb8:	08 42 0b             	or     %al,0xb(%rdx)
    7bbb:	03 fe                	add    %esi,%edi
    7bbd:	01 0a                	add    %ecx,(%rdx)
    7bbf:	0e                   	(bad)  
    7bc0:	38 41 0e             	cmp    %al,0xe(%rcx)
    7bc3:	30 41 0e             	xor    %al,0xe(%rcx)
    7bc6:	28 42 0e             	sub    %al,0xe(%rdx)
    7bc9:	20 42 0e             	and    %al,0xe(%rdx)
    7bcc:	18 42 0e             	sbb    %al,0xe(%rdx)
    7bcf:	10 42 0e             	adc    %al,0xe(%rdx)
    7bd2:	08 48 0b             	or     %cl,0xb(%rax)
    7bd5:	02 ab 0e 38 41 0e    	add    0xe41380e(%rbx),%ch
    7bdb:	30 41 0e             	xor    %al,0xe(%rcx)
    7bde:	28 42 0e             	sub    %al,0xe(%rdx)
    7be1:	20 42 0e             	and    %al,0xe(%rdx)
    7be4:	18 42 0e             	sbb    %al,0xe(%rdx)
    7be7:	10 42 0e             	adc    %al,0xe(%rdx)
    7bea:	08 4b c3             	or     %cl,-0x3d(%rbx)
    7bed:	c6                   	(bad)  
    7bee:	cc                   	int3   
    7bef:	cd ce                	int    $0xce
    7bf1:	cf                   	iret   
    7bf2:	48 0e                	rex.W (bad) 
    7bf4:	70 83                	jo     7b79 <__GNU_EH_FRAME_HDR+0x899>
    7bf6:	07                   	(bad)  
    7bf7:	86 06                	xchg   %al,(%rsi)
    7bf9:	8c 05 8d 04 8e 03    	mov    %es,0x38e048d(%rip)        # 38e808c <_end+0x38ddfbc>
    7bff:	8f 02                	popq   (%rdx)
    7c01:	00 00                	add    %al,(%rax)
    7c03:	00 10                	add    %dl,(%rax)
    7c05:	00 00                	add    %al,(%rax)
    7c07:	00 80 05 00 00 24    	add    %al,0x24000005(%rax)
    7c0d:	b8 ff ff 0c 00       	mov    $0xcffff,%eax
    7c12:	00 00                	add    %al,(%rax)
    7c14:	00 00                	add    %al,(%rax)
    7c16:	00 00                	add    %al,(%rax)
    7c18:	74 00                	je     7c1a <__GNU_EH_FRAME_HDR+0x93a>
    7c1a:	00 00                	add    %al,(%rax)
    7c1c:	94                   	xchg   %eax,%esp
    7c1d:	05 00 00 20 b8       	add    $0xb8200000,%eax
    7c22:	ff                   	(bad)  
    7c23:	ff                   	(bad)  
    7c24:	7e 03                	jle    7c29 <__GNU_EH_FRAME_HDR+0x949>
    7c26:	00 00                	add    %al,(%rax)
    7c28:	00 4b 0e             	add    %cl,0xe(%rbx)
    7c2b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    7c31:	8e 03                	mov    (%rbx),%es
    7c33:	42 0e                	rex.X (bad) 
    7c35:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    7c3b:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86308a82 <_end+0xffffffff862fe9b2>
    7c41:	06                   	(bad)  
    7c42:	44 0e                	rex.R (bad) 
    7c44:	38 83 07 44 0e 70    	cmp    %al,0x700e4407(%rbx)
    7c4a:	03 e1                	add    %ecx,%esp
    7c4c:	01 0e                	add    %ecx,(%rsi)
    7c4e:	38 41 0e             	cmp    %al,0xe(%rcx)
    7c51:	30 41 0e             	xor    %al,0xe(%rcx)
    7c54:	28 42 0e             	sub    %al,0xe(%rdx)
    7c57:	20 42 0e             	and    %al,0xe(%rdx)
    7c5a:	18 42 0e             	sbb    %al,0xe(%rdx)
    7c5d:	10 42 0e             	adc    %al,0xe(%rdx)
    7c60:	08 4b c3             	or     %cl,-0x3d(%rbx)
    7c63:	c6                   	(bad)  
    7c64:	cc                   	int3   
    7c65:	cd ce                	int    $0xce
    7c67:	cf                   	iret   
    7c68:	48 0e                	rex.W (bad) 
    7c6a:	70 83                	jo     7bef <__GNU_EH_FRAME_HDR+0x90f>
    7c6c:	07                   	(bad)  
    7c6d:	86 06                	xchg   %al,(%rsi)
    7c6f:	8c 05 8d 04 8e 03    	mov    %es,0x38e048d(%rip)        # 38e8102 <_end+0x38de032>
    7c75:	8f 02                	popq   (%rdx)
    7c77:	02 5c 0a 0e          	add    0xe(%rdx,%rcx,1),%bl
    7c7b:	38 41 0e             	cmp    %al,0xe(%rcx)
    7c7e:	30 41 0e             	xor    %al,0xe(%rcx)
    7c81:	28 42 0e             	sub    %al,0xe(%rdx)
    7c84:	20 42 0e             	and    %al,0xe(%rdx)
    7c87:	18 42 0e             	sbb    %al,0xe(%rdx)
    7c8a:	10 42 0e             	adc    %al,0xe(%rdx)
    7c8d:	08 42 0b             	or     %al,0xb(%rdx)
    7c90:	10 00                	adc    %al,(%rax)
    7c92:	00 00                	add    %al,(%rax)
    7c94:	0c 06                	or     $0x6,%al
    7c96:	00 00                	add    %al,(%rax)
    7c98:	28 bb ff ff 23 00    	sub    %bh,0x23ffff(%rbx)
    7c9e:	00 00                	add    %al,(%rax)
    7ca0:	00 00                	add    %al,(%rax)
    7ca2:	00 00                	add    %al,(%rax)
    7ca4:	28 00                	sub    %al,(%rax)
    7ca6:	00 00                	add    %al,(%rax)
    7ca8:	20 06                	and    %al,(%rsi)
    7caa:	00 00                	add    %al,(%rax)
    7cac:	44 bb ff ff 43 00    	rex.R mov $0x43ffff,%ebx
    7cb2:	00 00                	add    %al,(%rax)
    7cb4:	00 46 0e             	add    %al,0xe(%rsi)
    7cb7:	10 86 02 44 0e 18    	adc    %al,0x180e4402(%rsi)
    7cbd:	83 03 4a             	addl   $0x4a,(%rbx)
    7cc0:	0e                   	(bad)  
    7cc1:	20 69 0e             	and    %ch,0xe(%rcx)
    7cc4:	18 41 0e             	sbb    %al,0xe(%rcx)
    7cc7:	10 41 0e             	adc    %al,0xe(%rcx)
    7cca:	08 41 c3             	or     %al,-0x3d(%rcx)
    7ccd:	c6 00 00             	movb   $0x0,(%rax)
    7cd0:	28 00                	sub    %al,(%rax)
    7cd2:	00 00                	add    %al,(%rax)
    7cd4:	4c 06                	rex.WR (bad) 
    7cd6:	00 00                	add    %al,(%rax)
    7cd8:	68 bb ff ff 43       	pushq  $0x43ffffbb
    7cdd:	00 00                	add    %al,(%rax)
    7cdf:	00 00                	add    %al,(%rax)
    7ce1:	46 0e                	rex.RX (bad) 
    7ce3:	10 86 02 49 0e 18    	adc    %al,0x180e4902(%rsi)
    7ce9:	83 03 4a             	addl   $0x4a,(%rbx)
    7cec:	0e                   	(bad)  
    7ced:	20 5f 0e             	and    %bl,0xe(%rdi)
    7cf0:	18 41 0e             	sbb    %al,0xe(%rcx)
    7cf3:	10 41 0e             	adc    %al,0xe(%rcx)
    7cf6:	08 46 c3             	or     %al,-0x3d(%rsi)
    7cf9:	c6 00 00             	movb   $0x0,(%rax)
    7cfc:	20 00                	and    %al,(%rax)
    7cfe:	00 00                	add    %al,(%rax)
    7d00:	78 06                	js     7d08 <__GNU_EH_FRAME_HDR+0xa28>
    7d02:	00 00                	add    %al,(%rax)
    7d04:	8c bb ff ff 3b 00    	mov    %?,0x3bffff(%rbx)
    7d0a:	00 00                	add    %al,(%rax)
    7d0c:	00 46 0e             	add    %al,0xe(%rsi)
    7d0f:	10 83 02 65 0a 0e    	adc    %al,0xe0a6502(%rbx)
    7d15:	08 45 0b             	or     %al,0xb(%rbp)
    7d18:	43 0e                	rex.XB (bad) 
    7d1a:	08 45 c3             	or     %al,-0x3d(%rbp)
    7d1d:	00 00                	add    %al,(%rax)
    7d1f:	00 18                	add    %bl,(%rax)
    7d21:	00 00                	add    %al,(%rax)
    7d23:	00 9c 06 00 00 a8 bb 	add    %bl,-0x44580000(%rsi,%rax,1)
    7d2a:	ff                   	(bad)  
    7d2b:	ff 23                	jmpq   *(%rbx)
    7d2d:	00 00                	add    %al,(%rax)
    7d2f:	00 00                	add    %al,(%rax)
    7d31:	46 0e                	rex.RX (bad) 
    7d33:	10 83 02 51 0e 08    	adc    %al,0x80e5102(%rbx)
    7d39:	49 c3                	rex.WB retq 
    7d3b:	00 18                	add    %bl,(%rax)
    7d3d:	00 00                	add    %al,(%rax)
    7d3f:	00 b8 06 00 00 bc    	add    %bh,-0x43fffffa(%rax)
    7d45:	bb ff ff 23 00       	mov    $0x23ffff,%ebx
    7d4a:	00 00                	add    %al,(%rax)
    7d4c:	00 46 0e             	add    %al,0xe(%rsi)
    7d4f:	10 83 02 51 0e 08    	adc    %al,0x80e5102(%rbx)
    7d55:	49 c3                	rex.WB retq 
    7d57:	00 48 00             	add    %cl,0x0(%rax)
    7d5a:	00 00                	add    %al,(%rax)
    7d5c:	d4                   	(bad)  
    7d5d:	06                   	(bad)  
    7d5e:	00 00                	add    %al,(%rax)
    7d60:	d0 bb ff ff 93 00    	sarb   0x93ffff(%rbx)
    7d66:	00 00                	add    %al,(%rax)
    7d68:	00 42 0e             	add    %al,0xe(%rdx)
    7d6b:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
    7d71:	8c 03                	mov    %es,(%rbx)
    7d73:	41 0e                	rex.B (bad) 
    7d75:	20 86 04 44 0e 28    	and    %al,0x280e4404(%rsi)
    7d7b:	83 05 47 0e 30 67 0a 	addl   $0xa,0x67300e47(%rip)        # 67308bc9 <_end+0x672feaf9>
    7d82:	0e                   	(bad)  
    7d83:	28 41 0e             	sub    %al,0xe(%rcx)
    7d86:	20 41 0e             	and    %al,0xe(%rcx)
    7d89:	18 42 0e             	sbb    %al,0xe(%rdx)
    7d8c:	10 42 0e             	adc    %al,0xe(%rdx)
    7d8f:	08 43 0b             	or     %al,0xb(%rbx)
    7d92:	02 4c 0e 28          	add    0x28(%rsi,%rcx,1),%cl
    7d96:	41 0e                	rex.B (bad) 
    7d98:	20 41 0e             	and    %al,0xe(%rcx)
    7d9b:	18 42 0e             	sbb    %al,0xe(%rdx)
    7d9e:	10 42 0e             	adc    %al,0xe(%rdx)
    7da1:	08 00                	or     %al,(%rax)
    7da3:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
    7da7:	00 20                	add    %ah,(%rax)
    7da9:	07                   	(bad)  
    7daa:	00 00                	add    %al,(%rax)
    7dac:	24 bc                	and    $0xbc,%al
    7dae:	ff                   	(bad)  
    7daf:	ff 1f                	lcall  *(%rdi)
    7db1:	01 00                	add    %eax,(%rax)
    7db3:	00 00                	add    %al,(%rax)
    7db5:	42 0e                	rex.X (bad) 
    7db7:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    7dbd:	8d 03                	lea    (%rbx),%eax
    7dbf:	45 0e                	rex.RB (bad) 
    7dc1:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
    7dc8:	05 44 0e 30 83       	add    $0x83300e44,%eax
    7dcd:	06                   	(bad)  
    7dce:	62                   	(bad)  
    7dcf:	0a 0e                	or     (%rsi),%cl
    7dd1:	28 44 0e 20          	sub    %al,0x20(%rsi,%rcx,1)
    7dd5:	42 0e                	rex.X (bad) 
    7dd7:	18 42 0e             	sbb    %al,0xe(%rdx)
    7dda:	10 42 0e             	adc    %al,0xe(%rdx)
    7ddd:	08 46 0b             	or     %al,0xb(%rsi)
    7de0:	02 a3 0a 0e 28 41    	add    0x41280e0a(%rbx),%ah
    7de6:	0e                   	(bad)  
    7de7:	20 45 0e             	and    %al,0xe(%rbp)
    7dea:	18 42 0e             	sbb    %al,0xe(%rdx)
    7ded:	10 42 0e             	adc    %al,0xe(%rdx)
    7df0:	08 43 0b             	or     %al,0xb(%rbx)
    7df3:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
    7df7:	00 70 07             	add    %dh,0x7(%rax)
    7dfa:	00 00                	add    %al,(%rax)
    7dfc:	f4                   	hlt    
    7dfd:	bc ff ff 2b 01       	mov    $0x12bffff,%esp
    7e02:	00 00                	add    %al,(%rax)
    7e04:	00 42 0e             	add    %al,0xe(%rdx)
    7e07:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    7e0d:	8d 03                	lea    (%rbx),%eax
    7e0f:	4a 0e                	rex.WX (bad) 
    7e11:	20 8c 04 44 0e 28 86 	and    %cl,-0x79d7f1bc(%rsp,%rax,1)
    7e18:	05 41 0e 30 83       	add    $0x83300e41,%eax
    7e1d:	06                   	(bad)  
    7e1e:	02 96 0a 0e 28 41    	add    0x41280e0a(%rsi),%dl
    7e24:	0e                   	(bad)  
    7e25:	20 42 0e             	and    %al,0xe(%rdx)
    7e28:	18 42 0e             	sbb    %al,0xe(%rdx)
    7e2b:	10 42 0e             	adc    %al,0xe(%rdx)
    7e2e:	08 48 0b             	or     %cl,0xb(%rax)
    7e31:	02 46 0a             	add    0xa(%rsi),%al
    7e34:	0e                   	(bad)  
    7e35:	28 41 0e             	sub    %al,0xe(%rcx)
    7e38:	20 42 0e             	and    %al,0xe(%rdx)
    7e3b:	18 42 0e             	sbb    %al,0xe(%rdx)
    7e3e:	10 42 0e             	adc    %al,0xe(%rdx)
    7e41:	08 4b 0b             	or     %cl,0xb(%rbx)
    7e44:	10 00                	adc    %al,(%rax)
    7e46:	00 00                	add    %al,(%rax)
    7e48:	c0 07 00             	rolb   $0x0,(%rdi)
    7e4b:	00 d4                	add    %dl,%ah
    7e4d:	bd ff ff 05 00       	mov    $0x5ffff,%ebp
    7e52:	00 00                	add    %al,(%rax)
    7e54:	00 00                	add    %al,(%rax)
    7e56:	00 00                	add    %al,(%rax)
    7e58:	48 00 00             	rex.W add %al,(%rax)
    7e5b:	00 d4                	add    %dl,%ah
    7e5d:	07                   	(bad)  
    7e5e:	00 00                	add    %al,(%rax)
    7e60:	d0 bd ff ff 64 02    	sarb   0x264ffff(%rbp)
    7e66:	00 00                	add    %al,(%rax)
    7e68:	00 42 0e             	add    %al,0xe(%rdx)
    7e6b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    7e71:	8e 03                	mov    (%rbx),%es
    7e73:	42 0e                	rex.X (bad) 
    7e75:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    7e7b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86308cc5 <_end+0xffffffff862febf5>
    7e81:	06                   	(bad)  
    7e82:	43 0e                	rex.XB (bad) 
    7e84:	38 83 07 47 0e d0    	cmp    %al,-0x2ff1b8f9(%rbx)
    7e8a:	01 02                	add    %eax,(%rdx)
    7e8c:	d5                   	(bad)  
    7e8d:	0a 0e                	or     (%rsi),%cl
    7e8f:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
    7e93:	41 0e                	rex.B (bad) 
    7e95:	28 42 0e             	sub    %al,0xe(%rdx)
    7e98:	20 42 0e             	and    %al,0xe(%rdx)
    7e9b:	18 42 0e             	sbb    %al,0xe(%rdx)
    7e9e:	10 42 0e             	adc    %al,0xe(%rdx)
    7ea1:	08 45 0b             	or     %al,0xb(%rbp)
    7ea4:	10 00                	adc    %al,(%rax)
    7ea6:	00 00                	add    %al,(%rax)
    7ea8:	20 08                	and    %cl,(%rax)
    7eaa:	00 00                	add    %al,(%rax)
    7eac:	f4                   	hlt    
    7ead:	bf ff ff 16 00       	mov    $0x16ffff,%edi
    7eb2:	00 00                	add    %al,(%rax)
    7eb4:	00 00                	add    %al,(%rax)
    7eb6:	00 00                	add    %al,(%rax)
    7eb8:	10 00                	adc    %al,(%rax)
    7eba:	00 00                	add    %al,(%rax)
    7ebc:	34 08                	xor    $0x8,%al
    7ebe:	00 00                	add    %al,(%rax)
    7ec0:	00 c0                	add    %al,%al
    7ec2:	ff                   	(bad)  
    7ec3:	ff 1b                	lcall  *(%rbx)
    7ec5:	00 00                	add    %al,(%rax)
    7ec7:	00 00                	add    %al,(%rax)
    7ec9:	00 00                	add    %al,(%rax)
    7ecb:	00 30                	add    %dh,(%rax)
    7ecd:	00 00                	add    %al,(%rax)
    7ecf:	00 48 08             	add    %cl,0x8(%rax)
    7ed2:	00 00                	add    %al,(%rax)
    7ed4:	0c c0                	or     $0xc0,%al
    7ed6:	ff                   	(bad)  
    7ed7:	ff ce                	dec    %esi
    7ed9:	07                   	(bad)  
    7eda:	00 00                	add    %al,(%rax)
    7edc:	00 42 0e             	add    %al,0xe(%rdx)
    7edf:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
    7ee5:	8e 03                	mov    (%rbx),%es
    7ee7:	45 0e                	rex.RB (bad) 
    7ee9:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    7eef:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86308d36 <_end+0xffffffff862fec66>
    7ef5:	06                   	(bad)  
    7ef6:	43 0e                	rex.XB (bad) 
    7ef8:	38 83 07 47 0e f0    	cmp    %al,-0xff1b8f9(%rbx)
    7efe:	01 00                	add    %eax,(%rax)
    7f00:	34 00                	xor    $0x0,%al
    7f02:	00 00                	add    %al,(%rax)
    7f04:	7c 08                	jl     7f0e <__GNU_EH_FRAME_HDR+0xc2e>
    7f06:	00 00                	add    %al,(%rax)
    7f08:	a8 c7                	test   $0xc7,%al
    7f0a:	ff                   	(bad)  
    7f0b:	ff 51 00             	callq  *0x0(%rcx)
    7f0e:	00 00                	add    %al,(%rax)
    7f10:	00 42 0e             	add    %al,0xe(%rdx)
    7f13:	10 8c 02 44 0e 18 86 	adc    %cl,-0x79e7f1bc(%rdx,%rax,1)
    7f1a:	03 44 0e 20          	add    0x20(%rsi,%rcx,1),%eax
    7f1e:	83 04 5f 0a          	addl   $0xa,(%rdi,%rbx,2)
    7f22:	0e                   	(bad)  
    7f23:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    7f27:	42 0e                	rex.X (bad) 
    7f29:	08 49 0b             	or     %cl,0xb(%rcx)
    7f2c:	41 0e                	rex.B (bad) 
    7f2e:	18 4a 0e             	sbb    %cl,0xe(%rdx)
    7f31:	10 49 0e             	adc    %cl,0xe(%rcx)
    7f34:	08 00                	or     %al,(%rax)
    7f36:	00 00                	add    %al,(%rax)
    7f38:	48 00 00             	rex.W add %al,(%rax)
    7f3b:	00 b4 08 00 00 d0 c7 	add    %dh,-0x38300000(%rax,%rcx,1)
    7f42:	ff                   	(bad)  
    7f43:	ff 6f 00             	ljmp   *0x0(%rdi)
    7f46:	00 00                	add    %al,(%rax)
    7f48:	00 42 0e             	add    %al,0xe(%rdx)
    7f4b:	10 8d 02 45 0e 18    	adc    %cl,0x180e4502(%rbp)
    7f51:	8c 03                	mov    %es,(%rbx)
    7f53:	44 0e                	rex.R (bad) 
    7f55:	20 86 04 44 0e 28    	and    %al,0x280e4404(%rsi)
    7f5b:	83 05 47 0e 30 65 0a 	addl   $0xa,0x65300e47(%rip)        # 65308da9 <_end+0x652fecd9>
    7f62:	0e                   	(bad)  
    7f63:	28 48 0e             	sub    %cl,0xe(%rax)
    7f66:	20 41 0e             	and    %al,0xe(%rcx)
    7f69:	18 42 0e             	sbb    %al,0xe(%rdx)
    7f6c:	10 42 0e             	adc    %al,0xe(%rdx)
    7f6f:	08 48 0b             	or     %cl,0xb(%rax)
    7f72:	44 0e                	rex.R (bad) 
    7f74:	28 4a 0e             	sub    %cl,0xe(%rdx)
    7f77:	20 48 0e             	and    %cl,0xe(%rax)
    7f7a:	18 42 0e             	sbb    %al,0xe(%rdx)
    7f7d:	10 42 0e             	adc    %al,0xe(%rdx)
    7f80:	08 00                	or     %al,(%rax)
    7f82:	00 00                	add    %al,(%rax)
    7f84:	38 00                	cmp    %al,(%rax)
    7f86:	00 00                	add    %al,(%rax)
    7f88:	00 09                	add    %cl,(%rcx)
    7f8a:	00 00                	add    %al,(%rax)
    7f8c:	f4                   	hlt    
    7f8d:	c7                   	(bad)  
    7f8e:	ff                   	(bad)  
    7f8f:	ff 58 00             	lcall  *0x0(%rax)
    7f92:	00 00                	add    %al,(%rax)
    7f94:	00 42 0e             	add    %al,0xe(%rdx)
    7f97:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    7f9d:	8d 03                	lea    (%rbx),%eax
    7f9f:	45 0e                	rex.RB (bad) 
    7fa1:	20 8c 04 44 0e 28 86 	and    %cl,-0x79d7f1bc(%rsp,%rax,1)
    7fa8:	05 41 0e 30 83       	add    $0x83300e41,%eax
    7fad:	06                   	(bad)  
    7fae:	7b 0e                	jnp    7fbe <__GNU_EH_FRAME_HDR+0xcde>
    7fb0:	28 41 0e             	sub    %al,0xe(%rcx)
    7fb3:	20 45 0e             	and    %al,0xe(%rbp)
    7fb6:	18 42 0e             	sbb    %al,0xe(%rdx)
    7fb9:	10 42 0e             	adc    %al,0xe(%rdx)
    7fbc:	08 00                	or     %al,(%rax)
    7fbe:	00 00                	add    %al,(%rax)
    7fc0:	10 00                	adc    %al,(%rax)
    7fc2:	00 00                	add    %al,(%rax)
    7fc4:	3c 09                	cmp    $0x9,%al
    7fc6:	00 00                	add    %al,(%rax)
    7fc8:	18 c8                	sbb    %cl,%al
    7fca:	ff                   	(bad)  
    7fcb:	ff 08                	decl   (%rax)
    7fcd:	00 00                	add    %al,(%rax)
    7fcf:	00 00                	add    %al,(%rax)
    7fd1:	00 00                	add    %al,(%rax)
    7fd3:	00 30                	add    %dh,(%rax)
    7fd5:	00 00                	add    %al,(%rax)
    7fd7:	00 50 09             	add    %dl,0x9(%rax)
    7fda:	00 00                	add    %al,(%rax)
    7fdc:	14 c8                	adc    $0xc8,%al
    7fde:	ff                   	(bad)  
    7fdf:	ff 58 00             	lcall  *0x0(%rax)
    7fe2:	00 00                	add    %al,(%rax)
    7fe4:	00 41 0e             	add    %al,0xe(%rcx)
    7fe7:	10 86 02 44 0e 18    	adc    %al,0x180e4402(%rsi)
    7fed:	83 03 47             	addl   $0x47,(%rbx)
    7ff0:	0e                   	(bad)  
    7ff1:	20 56 0a             	and    %dl,0xa(%rsi)
    7ff4:	0e                   	(bad)  
    7ff5:	18 41 0e             	sbb    %al,0xe(%rcx)
    7ff8:	10 44 0e 08          	adc    %al,0x8(%rsi,%rcx,1)
    7ffc:	49 0b 62 0e          	or     0xe(%r10),%rsp
    8000:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    8004:	41 0e                	rex.B (bad) 
    8006:	08 00                	or     %al,(%rax)
    8008:	10 00                	adc    %al,(%rax)
    800a:	00 00                	add    %al,(%rax)
    800c:	84 09                	test   %cl,(%rcx)
    800e:	00 00                	add    %al,(%rax)
    8010:	40 c8 ff ff 2e       	rex enterq $0xffff,$0x2e
    8015:	00 00                	add    %al,(%rax)
    8017:	00 00                	add    %al,(%rax)
    8019:	00 00                	add    %al,(%rax)
    801b:	00 14 00             	add    %dl,(%rax,%rax,1)
    801e:	00 00                	add    %al,(%rax)
    8020:	98                   	cwtl   
    8021:	09 00                	or     %eax,(%rax)
    8023:	00 5c c8 ff          	add    %bl,-0x1(%rax,%rcx,8)
    8027:	ff 6d 00             	ljmp   *0x0(%rbp)
    802a:	00 00                	add    %al,(%rax)
    802c:	00 7c 0e 20          	add    %bh,0x20(%rsi,%rcx,1)
    8030:	64 0e                	fs (bad) 
    8032:	08 00                	or     %al,(%rax)
    8034:	14 00                	adc    $0x0,%al
    8036:	00 00                	add    %al,(%rax)
    8038:	b0 09                	mov    $0x9,%al
    803a:	00 00                	add    %al,(%rax)
    803c:	b4 c8                	mov    $0xc8,%ah
    803e:	ff                   	(bad)  
    803f:	ff 6d 00             	ljmp   *0x0(%rbp)
    8042:	00 00                	add    %al,(%rax)
    8044:	00 7c 0e 20          	add    %bh,0x20(%rsi,%rcx,1)
    8048:	66 0e                	data16 (bad) 
    804a:	08 00                	or     %al,(%rax)
    804c:	14 00                	adc    $0x0,%al
    804e:	00 00                	add    %al,(%rax)
    8050:	c8 09 00 00          	enterq $0x9,$0x0
    8054:	0c c9                	or     $0xc9,%al
    8056:	ff                   	(bad)  
    8057:	ff 6d 00             	ljmp   *0x0(%rbp)
    805a:	00 00                	add    %al,(%rax)
    805c:	00 7c 0e 20          	add    %bh,0x20(%rsi,%rcx,1)
    8060:	64 0e                	fs (bad) 
    8062:	08 00                	or     %al,(%rax)
    8064:	1c 00                	sbb    $0x0,%al
    8066:	00 00                	add    %al,(%rax)
    8068:	e0 09                	loopne 8073 <__GNU_EH_FRAME_HDR+0xd93>
    806a:	00 00                	add    %al,(%rax)
    806c:	64 c9                	fs leaveq 
    806e:	ff                   	(bad)  
    806f:	ff                   	(bad)  
    8070:	3e 00 00             	add    %al,%ds:(%rax)
    8073:	00 00                	add    %al,(%rax)
    8075:	45 0e                	rex.RB (bad) 
    8077:	10 8c 02 55 0a 0e 08 	adc    %cl,0x80e0a55(%rdx,%rax,1)
    807e:	46 0b 5d 0e          	rex.RX or 0xe(%rbp),%r11d
    8082:	08 00                	or     %al,(%rax)
    8084:	10 00                	adc    %al,(%rax)
    8086:	00 00                	add    %al,(%rax)
    8088:	00 0a                	add    %cl,(%rdx)
    808a:	00 00                	add    %al,(%rax)
    808c:	84 c9                	test   %cl,%cl
    808e:	ff                   	(bad)  
    808f:	ff 2d 00 00 00 00    	ljmp   *0x0(%rip)        # 8095 <__GNU_EH_FRAME_HDR+0xdb5>
    8095:	00 00                	add    %al,(%rax)
    8097:	00 1c 00             	add    %bl,(%rax,%rax,1)
    809a:	00 00                	add    %al,(%rax)
    809c:	14 0a                	adc    $0xa,%al
    809e:	00 00                	add    %al,(%rax)
    80a0:	a0 c9 ff ff 3e 00 00 	movabs 0x3effffc9,%al
    80a7:	00 00 
    80a9:	45 0e                	rex.RB (bad) 
    80ab:	10 8c 02 55 0a 0e 08 	adc    %cl,0x80e0a55(%rdx,%rax,1)
    80b2:	46 0b 5d 0e          	rex.RX or 0xe(%rbp),%r11d
    80b6:	08 00                	or     %al,(%rax)
    80b8:	10 00                	adc    %al,(%rax)
    80ba:	00 00                	add    %al,(%rax)
    80bc:	34 0a                	xor    $0xa,%al
    80be:	00 00                	add    %al,(%rax)
    80c0:	c0 c9 ff             	ror    $0xff,%cl
    80c3:	ff 31                	pushq  (%rcx)
    80c5:	00 00                	add    %al,(%rax)
    80c7:	00 00                	add    %al,(%rax)
    80c9:	00 00                	add    %al,(%rax)
    80cb:	00 10                	add    %dl,(%rax)
    80cd:	00 00                	add    %al,(%rax)
    80cf:	00 48 0a             	add    %cl,0xa(%rax)
    80d2:	00 00                	add    %al,(%rax)
    80d4:	ec                   	in     (%dx),%al
    80d5:	c9                   	leaveq 
    80d6:	ff                   	(bad)  
    80d7:	ff 55 00             	callq  *0x0(%rbp)
    80da:	00 00                	add    %al,(%rax)
    80dc:	00 00                	add    %al,(%rax)
    80de:	00 00                	add    %al,(%rax)
    80e0:	10 00                	adc    %al,(%rax)
    80e2:	00 00                	add    %al,(%rax)
    80e4:	5c                   	pop    %rsp
    80e5:	0a 00                	or     (%rax),%al
    80e7:	00 38                	add    %bh,(%rax)
    80e9:	ca ff ff             	lret   $0xffff
    80ec:	55                   	push   %rbp
    80ed:	00 00                	add    %al,(%rax)
    80ef:	00 00                	add    %al,(%rax)
    80f1:	00 00                	add    %al,(%rax)
    80f3:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
    80f7:	00 70 0a             	add    %dh,0xa(%rax)
    80fa:	00 00                	add    %al,(%rax)
    80fc:	84 ca                	test   %cl,%dl
    80fe:	ff                   	(bad)  
    80ff:	ff f4                	push   %rsp
    8101:	00 00                	add    %al,(%rax)
    8103:	00 00                	add    %al,(%rax)
    8105:	42 0e                	rex.X (bad) 
    8107:	10 8c 02 49 0e 18 83 	adc    %cl,-0x7ce7f1b7(%rdx,%rax,1)
    810e:	03 46 0e             	add    0xe(%rsi),%eax
    8111:	20 7a 0a             	and    %bh,0xa(%rdx)
    8114:	0e                   	(bad)  
    8115:	18 41 0e             	sbb    %al,0xe(%rcx)
    8118:	10 42 0e             	adc    %al,0xe(%rdx)
    811b:	08 42 0b             	or     %al,0xb(%rdx)
    811e:	65 0a 0e             	or     %gs:(%rsi),%cl
    8121:	18 41 0e             	sbb    %al,0xe(%rcx)
    8124:	10 42 0e             	adc    %al,0xe(%rdx)
    8127:	08 48 0b             	or     %cl,0xb(%rax)
    812a:	5a                   	pop    %rdx
    812b:	0a 0e                	or     (%rsi),%cl
    812d:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    8131:	42 0e                	rex.X (bad) 
    8133:	08 48 0b             	or     %cl,0xb(%rax)
    8136:	5c                   	pop    %rsp
    8137:	0a 0e                	or     (%rsi),%cl
    8139:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    813d:	42 0e                	rex.X (bad) 
    813f:	08 46 0b             	or     %al,0xb(%rsi)
    8142:	60                   	(bad)  
    8143:	0e                   	(bad)  
    8144:	18 41 0e             	sbb    %al,0xe(%rcx)
    8147:	10 42 0e             	adc    %al,0xe(%rdx)
    814a:	08 00                	or     %al,(%rax)
    814c:	14 00                	adc    $0x0,%al
    814e:	00 00                	add    %al,(%rax)
    8150:	c8 0a 00 00          	enterq $0xa,$0x0
    8154:	2c cb                	sub    $0xcb,%al
    8156:	ff                   	(bad)  
    8157:	ff af 00 00 00 00    	ljmp   *0x0(%rdi)
    815d:	02 6c 0e 20          	add    0x20(%rsi,%rcx,1),%ch
    8161:	66 0e                	data16 (bad) 
    8163:	08 10                	or     %dl,(%rax)
    8165:	00 00                	add    %al,(%rax)
    8167:	00 e0                	add    %ah,%al
    8169:	0a 00                	or     (%rax),%al
    816b:	00 c4                	add    %al,%ah
    816d:	cb                   	lret   
    816e:	ff                   	(bad)  
    816f:	ff                   	(bad)  
    8170:	ed                   	in     (%dx),%eax
    8171:	00 00                	add    %al,(%rax)
    8173:	00 00                	add    %al,(%rax)
    8175:	00 00                	add    %al,(%rax)
    8177:	00 48 00             	add    %cl,0x0(%rax)
    817a:	00 00                	add    %al,(%rax)
    817c:	f4                   	hlt    
    817d:	0a 00                	or     (%rax),%al
    817f:	00 a0 cc ff ff 78    	add    %ah,0x78ffffcc(%rax)
    8185:	01 00                	add    %eax,(%rax)
    8187:	00 00                	add    %al,(%rax)
    8189:	42 0e                	rex.X (bad) 
    818b:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
    8191:	8e 03                	mov    (%rbx),%es
    8193:	42 0e                	rex.X (bad) 
    8195:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    819b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86308fe5 <_end+0xffffffff862fef15>
    81a1:	06                   	(bad)  
    81a2:	41 0e                	rex.B (bad) 
    81a4:	38 83 07 46 0e 50    	cmp    %al,0x500e4607(%rbx)
    81aa:	02 68 0a             	add    0xa(%rax),%ch
    81ad:	0e                   	(bad)  
    81ae:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
    81b2:	41 0e                	rex.B (bad) 
    81b4:	28 42 0e             	sub    %al,0xe(%rdx)
    81b7:	20 42 0e             	and    %al,0xe(%rdx)
    81ba:	18 42 0e             	sbb    %al,0xe(%rdx)
    81bd:	10 42 0e             	adc    %al,0xe(%rdx)
    81c0:	08 45 0b             	or     %al,0xb(%rbp)
    81c3:	00 48 00             	add    %cl,0x0(%rax)
    81c6:	00 00                	add    %al,(%rax)
    81c8:	40 0b 00             	rex or (%rax),%eax
    81cb:	00 d4                	add    %dl,%ah
    81cd:	cd ff                	int    $0xff
    81cf:	ff                   	(bad)  
    81d0:	ba 00 00 00 00       	mov    $0x0,%edx
    81d5:	42 0e                	rex.X (bad) 
    81d7:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
    81dd:	8e 03                	mov    (%rbx),%es
    81df:	42 0e                	rex.X (bad) 
    81e1:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    81e7:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86309031 <_end+0xffffffff862fef61>
    81ed:	06                   	(bad)  
    81ee:	41 0e                	rex.B (bad) 
    81f0:	38 83 07 46 0e 50    	cmp    %al,0x500e4607(%rbx)
    81f6:	02 53 0a             	add    0xa(%rbx),%dl
    81f9:	0e                   	(bad)  
    81fa:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
    81fe:	41 0e                	rex.B (bad) 
    8200:	28 42 0e             	sub    %al,0xe(%rdx)
    8203:	20 42 0e             	and    %al,0xe(%rdx)
    8206:	18 42 0e             	sbb    %al,0xe(%rdx)
    8209:	10 42 0e             	adc    %al,0xe(%rdx)
    820c:	08 4a 0b             	or     %cl,0xb(%rdx)
    820f:	00 30                	add    %dh,(%rax)
    8211:	00 00                	add    %al,(%rax)
    8213:	00 8c 0b 00 00 48 ce 	add    %cl,-0x31b80000(%rbx,%rcx,1)
    821a:	ff                   	(bad)  
    821b:	ff b2 00 00 00 00    	pushq  0x0(%rdx)
    8221:	42 0e                	rex.X (bad) 
    8223:	10 8c 02 78 0a 0e 08 	adc    %cl,0x80e0a78(%rdx,%rax,1)
    822a:	46 0b 59 0a          	rex.RX or 0xa(%rcx),%r11d
    822e:	0e                   	(bad)  
    822f:	08 47 0b             	or     %al,0xb(%rdi)
    8232:	51                   	push   %rcx
    8233:	0a 0e                	or     (%rsi),%cl
    8235:	08 47 0b             	or     %al,0xb(%rdi)
    8238:	5d                   	pop    %rbp
    8239:	0a 0e                	or     (%rsi),%cl
    823b:	08 4b 0b             	or     %cl,0xb(%rbx)
    823e:	51                   	push   %rcx
    823f:	0e                   	(bad)  
    8240:	08 00                	or     %al,(%rax)
    8242:	00 00                	add    %al,(%rax)
    8244:	2c 00                	sub    $0x0,%al
    8246:	00 00                	add    %al,(%rax)
    8248:	c0 0b 00             	rorb   $0x0,(%rbx)
    824b:	00 d4                	add    %dl,%ah
    824d:	ce                   	(bad)  
    824e:	ff                   	(bad)  
    824f:	ff d0                	callq  *%rax
    8251:	00 00                	add    %al,(%rax)
    8253:	00 00                	add    %al,(%rax)
    8255:	44 0e                	rex.R (bad) 
    8257:	10 77 0a             	adc    %dh,0xa(%rdi)
    825a:	0e                   	(bad)  
    825b:	08 45 0b             	or     %al,0xb(%rbp)
    825e:	67 0a 0e             	or     (%esi),%cl
    8261:	08 49 0b             	or     %cl,0xb(%rcx)
    8264:	5e                   	pop    %rsi
    8265:	0a 0e                	or     (%rsi),%cl
    8267:	08 42 0b             	or     %al,0xb(%rdx)
    826a:	5c                   	pop    %rsp
    826b:	0a 0e                	or     (%rsi),%cl
    826d:	08 44 0b 5f          	or     %al,0x5f(%rbx,%rcx,1)
    8271:	0e                   	(bad)  
    8272:	08 00                	or     %al,(%rax)
    8274:	10 00                	adc    %al,(%rax)
    8276:	00 00                	add    %al,(%rax)
    8278:	f0 0b 00             	lock or (%rax),%eax
    827b:	00 74 cf ff          	add    %dh,-0x1(%rdi,%rcx,8)
    827f:	ff 12                	callq  *(%rdx)
    8281:	00 00                	add    %al,(%rax)
    8283:	00 00                	add    %al,(%rax)
    8285:	00 00                	add    %al,(%rax)
    8287:	00 10                	add    %dl,(%rax)
    8289:	00 00                	add    %al,(%rax)
    828b:	00 04 0c             	add    %al,(%rsp,%rcx,1)
    828e:	00 00                	add    %al,(%rax)
    8290:	80 cf ff             	or     $0xff,%bh
    8293:	ff 06                	incl   (%rsi)
    8295:	00 00                	add    %al,(%rax)
    8297:	00 00                	add    %al,(%rax)
    8299:	00 00                	add    %al,(%rax)
    829b:	00 28                	add    %ch,(%rax)
    829d:	00 00                	add    %al,(%rax)
    829f:	00 18                	add    %bl,(%rax)
    82a1:	0c 00                	or     $0x0,%al
    82a3:	00 7c cf ff          	add    %bh,-0x1(%rdi,%rcx,8)
    82a7:	ff 4a 00             	decl   0x0(%rdx)
    82aa:	00 00                	add    %al,(%rax)
    82ac:	00 41 0e             	add    %al,0xe(%rcx)
    82af:	10 86 02 44 0e 18    	adc    %al,0x180e4402(%rsi)
    82b5:	83 03 47             	addl   $0x47,(%rbx)
    82b8:	0e                   	(bad)  
    82b9:	20 5b 0a             	and    %bl,0xa(%rbx)
    82bc:	0e                   	(bad)  
    82bd:	18 44 0e 10          	sbb    %al,0x10(%rsi,%rcx,1)
    82c1:	41 0e                	rex.B (bad) 
    82c3:	08 44 0b 00          	or     %al,0x0(%rbx,%rcx,1)
    82c7:	00 10                	add    %dl,(%rax)
    82c9:	00 00                	add    %al,(%rax)
    82cb:	00 44 0c 00          	add    %al,0x0(%rsp,%rcx,1)
    82cf:	00 a0 cf ff ff 40    	add    %ah,0x40ffffcf(%rax)
    82d5:	00 00                	add    %al,(%rax)
    82d7:	00 00                	add    %al,(%rax)
    82d9:	00 00                	add    %al,(%rax)
    82db:	00 28                	add    %ch,(%rax)
    82dd:	00 00                	add    %al,(%rax)
    82df:	00 58 0c             	add    %bl,0xc(%rax)
    82e2:	00 00                	add    %al,(%rax)
    82e4:	cc                   	int3   
    82e5:	cf                   	iret   
    82e6:	ff                   	(bad)  
    82e7:	ff 60 00             	jmpq   *0x0(%rax)
    82ea:	00 00                	add    %al,(%rax)
    82ec:	00 41 0e             	add    %al,0xe(%rcx)
    82ef:	10 83 02 6f 0a 0e    	adc    %al,0xe0a6f02(%rbx)
    82f5:	08 48 0b             	or     %cl,0xb(%rax)
    82f8:	48 0a 0e             	rex.W or (%rsi),%cl
    82fb:	08 48 0b             	or     %cl,0xb(%rax)
    82fe:	48 0a 0e             	rex.W or (%rsi),%cl
    8301:	08 48 0b             	or     %cl,0xb(%rax)
    8304:	47 0e                	rex.RXB (bad) 
    8306:	08 00                	or     %al,(%rax)
    8308:	28 00                	sub    %al,(%rax)
    830a:	00 00                	add    %al,(%rax)
    830c:	84 0c 00             	test   %cl,(%rax,%rax,1)
    830f:	00 00                	add    %al,(%rax)
    8311:	d0 ff                	sar    %bh
    8313:	ff 62 00             	jmpq   *0x0(%rdx)
    8316:	00 00                	add    %al,(%rax)
    8318:	00 42 0e             	add    %al,0xe(%rdx)
    831b:	10 8c 02 70 0a 0e 08 	adc    %cl,0x80e0a70(%rdx,%rax,1)
    8322:	46 0b 4a 0a          	rex.RX or 0xa(%rdx),%r9d
    8326:	0e                   	(bad)  
    8327:	08 46 0b             	or     %al,0xb(%rsi)
    832a:	4a 0a 0e             	rex.WX or (%rsi),%cl
    832d:	08 46 0b             	or     %al,0xb(%rsi)
    8330:	49 0e                	rex.WB (bad) 
    8332:	08 00                	or     %al,(%rax)
    8334:	38 00                	cmp    %al,(%rax)
    8336:	00 00                	add    %al,(%rax)
    8338:	b0 0c                	mov    $0xc,%al
    833a:	00 00                	add    %al,(%rax)
    833c:	44 d0 ff             	rex.R sar %dil
    833f:	ff                   	(bad)  
    8340:	fc                   	cld    
    8341:	00 00                	add    %al,(%rax)
    8343:	00 00                	add    %al,(%rax)
    8345:	42 0e                	rex.X (bad) 
    8347:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
    834d:	8c 03                	mov    %es,(%rbx)
    834f:	44 0e                	rex.R (bad) 
    8351:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
    8357:	83 05 44 0e 30 02 82 	addl   $0xffffff82,0x2300e44(%rip)        # 23091a2 <_end+0x22ff0d2>
    835e:	0a 0e                	or     (%rsi),%cl
    8360:	28 47 0e             	sub    %al,0xe(%rdi)
    8363:	20 41 0e             	and    %al,0xe(%rcx)
    8366:	18 42 0e             	sbb    %al,0xe(%rdx)
    8369:	10 42 0e             	adc    %al,0xe(%rdx)
    836c:	08 45 0b             	or     %al,0xb(%rbp)
    836f:	00 28                	add    %ch,(%rax)
    8371:	00 00                	add    %al,(%rax)
    8373:	00 ec                	add    %ch,%ah
    8375:	0c 00                	or     $0x0,%al
    8377:	00 08                	add    %cl,(%rax)
    8379:	d1 ff                	sar    %edi
    837b:	ff 5a 00             	lcall  *0x0(%rdx)
    837e:	00 00                	add    %al,(%rax)
    8380:	00 41 0e             	add    %al,0xe(%rcx)
    8383:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    8389:	83 03 47             	addl   $0x47,(%rbx)
    838c:	0e                   	(bad)  
    838d:	20 60 0a             	and    %ah,0xa(%rax)
    8390:	0e                   	(bad)  
    8391:	18 47 0e             	sbb    %al,0xe(%rdi)
    8394:	10 41 0e             	adc    %al,0xe(%rcx)
    8397:	08 4f 0b             	or     %cl,0xb(%rdi)
    839a:	00 00                	add    %al,(%rax)
    839c:	18 00                	sbb    %al,(%rax)
    839e:	00 00                	add    %al,(%rax)
    83a0:	18 0d 00 00 3c d1    	sbb    %cl,-0x2ec40000(%rip)        # ffffffffd13c83a6 <_end+0xffffffffd13be2d6>
    83a6:	ff                   	(bad)  
    83a7:	ff 4a 00             	decl   0x0(%rdx)
    83aa:	00 00                	add    %al,(%rax)
    83ac:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    83b0:	6b 0a 0e             	imul   $0xe,(%rdx),%ecx
    83b3:	08 41 0b             	or     %al,0xb(%rcx)
    83b6:	00 00                	add    %al,(%rax)
    83b8:	40 00 00             	add    %al,(%rax)
    83bb:	00 34 0d 00 00 70 d1 	add    %dh,-0x2e900000(,%rcx,1)
    83c2:	ff                   	(bad)  
    83c3:	ff 93 01 00 00 00    	callq  *0x1(%rbx)
    83c9:	42 0e                	rex.X (bad) 
    83cb:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    83d1:	8d 03                	lea    (%rbx),%eax
    83d3:	42 0e                	rex.X (bad) 
    83d5:	20 8c 04 44 0e 28 86 	and    %cl,-0x79d7f1bc(%rsp,%rax,1)
    83dc:	05 41 0e 30 83       	add    $0x83300e41,%eax
    83e1:	06                   	(bad)  
    83e2:	44 0e                	rex.R (bad) 
    83e4:	40 02 ed             	add    %bpl,%bpl
    83e7:	0a 0e                	or     (%rsi),%cl
    83e9:	30 44 0e 28          	xor    %al,0x28(%rsi,%rcx,1)
    83ed:	41 0e                	rex.B (bad) 
    83ef:	20 42 0e             	and    %al,0xe(%rdx)
    83f2:	18 42 0e             	sbb    %al,0xe(%rdx)
    83f5:	10 42 0e             	adc    %al,0xe(%rdx)
    83f8:	08 49 0b             	or     %cl,0xb(%rcx)
    83fb:	00 48 00             	add    %cl,0x0(%rax)
    83fe:	00 00                	add    %al,(%rax)
    8400:	78 0d                	js     840f <__GNU_EH_FRAME_HDR+0x112f>
    8402:	00 00                	add    %al,(%rax)
    8404:	cc                   	int3   
    8405:	d2 ff                	sar    %cl,%bh
    8407:	ff cd                	dec    %ebp
    8409:	01 00                	add    %eax,(%rax)
    840b:	00 00                	add    %al,(%rax)
    840d:	42 0e                	rex.X (bad) 
    840f:	10 8f 02 4a 0e 18    	adc    %cl,0x180e4a02(%rdi)
    8415:	8e 03                	mov    (%rbx),%es
    8417:	42 0e                	rex.X (bad) 
    8419:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    841f:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86309266 <_end+0xffffffff862ff196>
    8425:	06                   	(bad)  
    8426:	41 0e                	rex.B (bad) 
    8428:	38 83 07 44 0e 60    	cmp    %al,0x600e4407(%rbx)
    842e:	03 1a                	add    (%rdx),%ebx
    8430:	01 0a                	add    %ecx,(%rdx)
    8432:	0e                   	(bad)  
    8433:	38 44 0e 30          	cmp    %al,0x30(%rsi,%rcx,1)
    8437:	41 0e                	rex.B (bad) 
    8439:	28 42 0e             	sub    %al,0xe(%rdx)
    843c:	20 42 0e             	and    %al,0xe(%rdx)
    843f:	18 42 0e             	sbb    %al,0xe(%rdx)
    8442:	10 42 0e             	adc    %al,0xe(%rdx)
    8445:	08 43 0b             	or     %al,0xb(%rbx)
    8448:	48 00 00             	rex.W add %al,(%rax)
    844b:	00 c4                	add    %al,%ah
    844d:	0d 00 00 50 d4       	or     $0xd4500000,%eax
    8452:	ff                   	(bad)  
    8453:	ff 93 01 00 00 00    	callq  *0x1(%rbx)
    8459:	42 0e                	rex.X (bad) 
    845b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    8461:	8e 03                	mov    (%rbx),%es
    8463:	45 0e                	rex.RB (bad) 
    8465:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    846b:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff863092b2 <_end+0xffffffff862ff1e2>
    8471:	06                   	(bad)  
    8472:	41 0e                	rex.B (bad) 
    8474:	38 83 07 44 0e 40    	cmp    %al,0x400e4407(%rbx)
    847a:	03 20                	add    (%rax),%esp
    847c:	01 0a                	add    %ecx,(%rdx)
    847e:	0e                   	(bad)  
    847f:	38 41 0e             	cmp    %al,0xe(%rcx)
    8482:	30 41 0e             	xor    %al,0xe(%rcx)
    8485:	28 42 0e             	sub    %al,0xe(%rdx)
    8488:	20 42 0e             	and    %al,0xe(%rdx)
    848b:	18 42 0e             	sbb    %al,0xe(%rdx)
    848e:	10 42 0e             	adc    %al,0xe(%rdx)
    8491:	08 45 0b             	or     %al,0xb(%rbp)
    8494:	10 00                	adc    %al,(%rax)
    8496:	00 00                	add    %al,(%rax)
    8498:	10 0e                	adc    %cl,(%rsi)
    849a:	00 00                	add    %al,(%rax)
    849c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    849d:	d5                   	(bad)  
    849e:	ff                   	(bad)  
    849f:	ff 0b                	decl   (%rbx)
    84a1:	00 00                	add    %al,(%rax)
    84a3:	00 00                	add    %al,(%rax)
    84a5:	00 00                	add    %al,(%rax)
    84a7:	00 90 00 00 00 24    	add    %dl,0x24000000(%rax)
    84ad:	0e                   	(bad)  
    84ae:	00 00                	add    %al,(%rax)
    84b0:	a0 d5 ff ff 54 09 00 	movabs 0x954ffffd5,%al
    84b7:	00 00 
    84b9:	4b 0e                	rex.WXB (bad) 
    84bb:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    84c1:	8e 03                	mov    (%rbx),%es
    84c3:	42 0e                	rex.X (bad) 
    84c5:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    84cb:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86309315 <_end+0xffffffff862ff245>
    84d1:	06                   	(bad)  
    84d2:	44 0e                	rex.R (bad) 
    84d4:	38 83 07 47 0e 70    	cmp    %al,0x700e4707(%rbx)
    84da:	02 d4                	add    %ah,%dl
    84dc:	0a 0e                	or     (%rsi),%cl
    84de:	38 41 0e             	cmp    %al,0xe(%rcx)
    84e1:	30 41 0e             	xor    %al,0xe(%rcx)
    84e4:	28 42 0e             	sub    %al,0xe(%rdx)
    84e7:	20 42 0e             	and    %al,0xe(%rdx)
    84ea:	18 42 0e             	sbb    %al,0xe(%rdx)
    84ed:	10 42 0e             	adc    %al,0xe(%rdx)
    84f0:	08 42 0b             	or     %al,0xb(%rdx)
    84f3:	03 e7                	add    %edi,%esp
    84f5:	01 0a                	add    %ecx,(%rdx)
    84f7:	0e                   	(bad)  
    84f8:	38 41 0e             	cmp    %al,0xe(%rcx)
    84fb:	30 41 0e             	xor    %al,0xe(%rcx)
    84fe:	28 42 0e             	sub    %al,0xe(%rdx)
    8501:	20 42 0e             	and    %al,0xe(%rdx)
    8504:	18 42 0e             	sbb    %al,0xe(%rdx)
    8507:	10 42 0e             	adc    %al,0xe(%rdx)
    850a:	08 47 0b             	or     %al,0xb(%rdi)
    850d:	02 9e 0e 38 41 0e    	add    0xe41380e(%rsi),%bl
    8513:	30 41 0e             	xor    %al,0xe(%rcx)
    8516:	28 42 0e             	sub    %al,0xe(%rdx)
    8519:	20 42 0e             	and    %al,0xe(%rdx)
    851c:	18 42 0e             	sbb    %al,0xe(%rdx)
    851f:	10 42 0e             	adc    %al,0xe(%rdx)
    8522:	08 48 c3             	or     %cl,-0x3d(%rax)
    8525:	c6                   	(bad)  
    8526:	cc                   	int3   
    8527:	cd ce                	int    $0xce
    8529:	cf                   	iret   
    852a:	48 0e                	rex.W (bad) 
    852c:	70 83                	jo     84b1 <__GNU_EH_FRAME_HDR+0x11d1>
    852e:	07                   	(bad)  
    852f:	86 06                	xchg   %al,(%rsi)
    8531:	8c 05 8d 04 8e 03    	mov    %es,0x38e048d(%rip)        # 38e89c4 <_end+0x38de8f4>
    8537:	8f 02                	popq   (%rdx)
    8539:	00 00                	add    %al,(%rax)
    853b:	00 10                	add    %dl,(%rax)
    853d:	00 00                	add    %al,(%rax)
    853f:	00 b8 0e 00 00 6c    	add    %bh,0x6c00000e(%rax)
    8545:	de ff                	fdivrp %st,%st(7)
    8547:	ff 0c 00             	decl   (%rax,%rax,1)
    854a:	00 00                	add    %al,(%rax)
    854c:	00 00                	add    %al,(%rax)
    854e:	00 00                	add    %al,(%rax)
    8550:	7c 00                	jl     8552 <__GNU_EH_FRAME_HDR+0x1272>
    8552:	00 00                	add    %al,(%rax)
    8554:	cc                   	int3   
    8555:	0e                   	(bad)  
    8556:	00 00                	add    %al,(%rax)
    8558:	68 de ff ff 70       	pushq  $0x70ffffde
    855d:	03 00                	add    (%rax),%eax
    855f:	00 00                	add    %al,(%rax)
    8561:	4b 0e                	rex.WXB (bad) 
    8563:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    8569:	8e 03                	mov    (%rbx),%es
    856b:	42 0e                	rex.X (bad) 
    856d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    8573:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff863093ba <_end+0xffffffff862ff2ea>
    8579:	06                   	(bad)  
    857a:	44 0e                	rex.R (bad) 
    857c:	38 83 07 44 0e 80    	cmp    %al,-0x7ff1bbf9(%rbx)
    8582:	01 03                	add    %eax,(%rbx)
    8584:	e4 01                	in     $0x1,%al
    8586:	0e                   	(bad)  
    8587:	38 41 0e             	cmp    %al,0xe(%rcx)
    858a:	30 41 0e             	xor    %al,0xe(%rcx)
    858d:	28 42 0e             	sub    %al,0xe(%rdx)
    8590:	20 42 0e             	and    %al,0xe(%rdx)
    8593:	18 42 0e             	sbb    %al,0xe(%rdx)
    8596:	10 42 0e             	adc    %al,0xe(%rdx)
    8599:	08 48 c3             	or     %cl,-0x3d(%rax)
    859c:	c6                   	(bad)  
    859d:	cc                   	int3   
    859e:	cd ce                	int    $0xce
    85a0:	cf                   	iret   
    85a1:	48 0e                	rex.W (bad) 
    85a3:	80 01 83             	addb   $0x83,(%rcx)
    85a6:	07                   	(bad)  
    85a7:	86 06                	xchg   %al,(%rsi)
    85a9:	8c 05 8d 04 8e 03    	mov    %es,0x38e048d(%rip)        # 38e8a3c <_end+0x38de96c>
    85af:	8f 02                	popq   (%rdx)
    85b1:	02 5d 0a             	add    0xa(%rbp),%bl
    85b4:	0e                   	(bad)  
    85b5:	38 41 0e             	cmp    %al,0xe(%rcx)
    85b8:	30 41 0e             	xor    %al,0xe(%rcx)
    85bb:	28 42 0e             	sub    %al,0xe(%rdx)
    85be:	20 42 0e             	and    %al,0xe(%rdx)
    85c1:	18 42 0e             	sbb    %al,0xe(%rdx)
    85c4:	10 42 0e             	adc    %al,0xe(%rdx)
    85c7:	08 41 0b             	or     %al,0xb(%rcx)
    85ca:	00 00                	add    %al,(%rax)
    85cc:	00 00                	add    %al,(%rax)
    85ce:	00 00                	add    %al,(%rax)
    85d0:	18 00                	sbb    %al,(%rax)
    85d2:	00 00                	add    %al,(%rax)
    85d4:	4c 0f 00 00          	rex.WR sldt (%rax)
    85d8:	58                   	pop    %rax
    85d9:	e1 ff                	loope  85da <__GNU_EH_FRAME_HDR+0x12fa>
    85db:	ff 01                	incl   (%rcx)
    85dd:	01 00                	add    %eax,(%rax)
    85df:	00 00                	add    %al,(%rax)
    85e1:	41 0e                	rex.B (bad) 
    85e3:	10 86 02 02 ed 0e    	adc    %al,0xeed0202(%rsi)
    85e9:	08 00                	or     %al,(%rax)
    85eb:	00 24 00             	add    %ah,(%rax,%rax,1)
    85ee:	00 00                	add    %al,(%rax)
    85f0:	68 0f 00 00 4c       	pushq  $0x4c00000f
    85f5:	e2 ff                	loop   85f6 <__GNU_EH_FRAME_HDR+0x1316>
    85f7:	ff 29                	ljmp   *(%rcx)
    85f9:	01 00                	add    %eax,(%rax)
    85fb:	00 00                	add    %al,(%rax)
    85fd:	42 0e                	rex.X (bad) 
    85ff:	10 8c 02 50 0e 18 86 	adc    %cl,-0x79e7f1b0(%rdx,%rax,1)
    8606:	03 4c 0e 20          	add    0x20(%rsi,%rcx,1),%ecx
    860a:	02 fe                	add    %dh,%bh
    860c:	0e                   	(bad)  
    860d:	18 46 0e             	sbb    %al,0xe(%rsi)
    8610:	10 42 0e             	adc    %al,0xe(%rdx)
    8613:	08 10                	or     %dl,(%rax)
    8615:	00 00                	add    %al,(%rax)
    8617:	00 90 0f 00 00 54    	add    %dl,0x5400000f(%rax)
    861d:	e3 ff                	jrcxz  861e <__GNU_EH_FRAME_HDR+0x133e>
    861f:	ff 0d 00 00 00 00    	decl   0x0(%rip)        # 8625 <__GNU_EH_FRAME_HDR+0x1345>
    8625:	46 0e                	rex.RX (bad) 
    8627:	10 18                	adc    %bl,(%rax)
    8629:	00 00                	add    %al,(%rax)
    862b:	00 a4 0f 00 00 50 e3 	add    %ah,-0x1cb00000(%rdi,%rcx,1)
    8632:	ff                   	(bad)  
    8633:	ff                   	(bad)  
    8634:	bb 00 00 00 00       	mov    $0x0,%ebx
    8639:	41 0e                	rex.B (bad) 
    863b:	10 86 02 02 b5 0e    	adc    %al,0xeb50202(%rsi)
    8641:	08 00                	or     %al,(%rax)
    8643:	00 24 00             	add    %ah,(%rax,%rax,1)
    8646:	00 00                	add    %al,(%rax)
    8648:	c0 0f 00             	rorb   $0x0,(%rdi)
    864b:	00 f4                	add    %dh,%ah
    864d:	e3 ff                	jrcxz  864e <__GNU_EH_FRAME_HDR+0x136e>
    864f:	ff                   	(bad)  
    8650:	ea                   	(bad)  
    8651:	00 00                	add    %al,(%rax)
    8653:	00 00                	add    %al,(%rax)
    8655:	42 0e                	rex.X (bad) 
    8657:	10 8c 02 4b 0e 18 86 	adc    %cl,-0x79e7f1b5(%rdx,%rax,1)
    865e:	03 47 0e             	add    0xe(%rdi),%eax
    8661:	20 02                	and    %al,(%rdx)
    8663:	c9                   	leaveq 
    8664:	0e                   	(bad)  
    8665:	18 46 0e             	sbb    %al,0xe(%rsi)
    8668:	10 42 0e             	adc    %al,0xe(%rdx)
    866b:	08 10                	or     %dl,(%rax)
    866d:	00 00                	add    %al,(%rax)
    866f:	00 e8                	add    %ch,%al
    8671:	0f 00 00             	sldt   (%rax)
    8674:	bc e4 ff ff 0d       	mov    $0xdffffe4,%esp
    8679:	00 00                	add    %al,(%rax)
    867b:	00 00                	add    %al,(%rax)
    867d:	46 0e                	rex.RX (bad) 
    867f:	10 10                	adc    %dl,(%rax)
    8681:	00 00                	add    %al,(%rax)
    8683:	00 fc                	add    %bh,%ah
    8685:	0f 00 00             	sldt   (%rax)
    8688:	b8 e4 ff ff 23       	mov    $0x23ffffe4,%eax
    868d:	00 00                	add    %al,(%rax)
    868f:	00 00                	add    %al,(%rax)
    8691:	00 00                	add    %al,(%rax)
    8693:	00 28                	add    %ch,(%rax)
    8695:	00 00                	add    %al,(%rax)
    8697:	00 10                	add    %dl,(%rax)
    8699:	10 00                	adc    %al,(%rax)
    869b:	00 d4                	add    %dl,%ah
    869d:	e4 ff                	in     $0xff,%al
    869f:	ff 43 00             	incl   0x0(%rbx)
    86a2:	00 00                	add    %al,(%rax)
    86a4:	00 46 0e             	add    %al,0xe(%rsi)
    86a7:	10 86 02 44 0e 18    	adc    %al,0x180e4402(%rsi)
    86ad:	83 03 4a             	addl   $0x4a,(%rbx)
    86b0:	0e                   	(bad)  
    86b1:	20 69 0e             	and    %ch,0xe(%rcx)
    86b4:	18 41 0e             	sbb    %al,0xe(%rcx)
    86b7:	10 41 0e             	adc    %al,0xe(%rcx)
    86ba:	08 41 c3             	or     %al,-0x3d(%rcx)
    86bd:	c6 00 00             	movb   $0x0,(%rax)
    86c0:	28 00                	sub    %al,(%rax)
    86c2:	00 00                	add    %al,(%rax)
    86c4:	3c 10                	cmp    $0x10,%al
    86c6:	00 00                	add    %al,(%rax)
    86c8:	f8                   	clc    
    86c9:	e4 ff                	in     $0xff,%al
    86cb:	ff 43 00             	incl   0x0(%rbx)
    86ce:	00 00                	add    %al,(%rax)
    86d0:	00 46 0e             	add    %al,0xe(%rsi)
    86d3:	10 86 02 4b 0e 18    	adc    %al,0x180e4b02(%rsi)
    86d9:	83 03 4a             	addl   $0x4a,(%rbx)
    86dc:	0e                   	(bad)  
    86dd:	20 5f 0e             	and    %bl,0xe(%rdi)
    86e0:	18 41 0e             	sbb    %al,0xe(%rcx)
    86e3:	10 41 0e             	adc    %al,0xe(%rcx)
    86e6:	08 44 c3 c6          	or     %al,-0x3a(%rbx,%rax,8)
    86ea:	00 00                	add    %al,(%rax)
    86ec:	20 00                	and    %al,(%rax)
    86ee:	00 00                	add    %al,(%rax)
    86f0:	68 10 00 00 1c       	pushq  $0x1c000010
    86f5:	e5 ff                	in     $0xff,%eax
    86f7:	ff                   	(bad)  
    86f8:	3b 00                	cmp    (%rax),%eax
    86fa:	00 00                	add    %al,(%rax)
    86fc:	00 49 0e             	add    %cl,0xe(%rcx)
    86ff:	10 83 02 62 0a 0e    	adc    %al,0xe0a6202(%rbx)
    8705:	08 45 0b             	or     %al,0xb(%rbp)
    8708:	43 0e                	rex.XB (bad) 
    870a:	08 45 c3             	or     %al,-0x3d(%rbp)
    870d:	00 00                	add    %al,(%rax)
    870f:	00 18                	add    %bl,(%rax)
    8711:	00 00                	add    %al,(%rax)
    8713:	00 8c 10 00 00 38 e5 	add    %cl,-0x1ac80000(%rax,%rdx,1)
    871a:	ff                   	(bad)  
    871b:	ff 23                	jmpq   *(%rbx)
    871d:	00 00                	add    %al,(%rax)
    871f:	00 00                	add    %al,(%rax)
    8721:	46 0e                	rex.RX (bad) 
    8723:	10 83 02 51 0e 08    	adc    %al,0x80e5102(%rbx)
    8729:	49 c3                	rex.WB retq 
    872b:	00 18                	add    %bl,(%rax)
    872d:	00 00                	add    %al,(%rax)
    872f:	00 a8 10 00 00 4c    	add    %ch,0x4c000010(%rax)
    8735:	e5 ff                	in     $0xff,%eax
    8737:	ff 23                	jmpq   *(%rbx)
    8739:	00 00                	add    %al,(%rax)
    873b:	00 00                	add    %al,(%rax)
    873d:	46 0e                	rex.RX (bad) 
    873f:	10 83 02 51 0e 08    	adc    %al,0x80e5102(%rbx)
    8745:	49 c3                	rex.WB retq 
    8747:	00 48 00             	add    %cl,0x0(%rax)
    874a:	00 00                	add    %al,(%rax)
    874c:	c4                   	(bad)  
    874d:	10 00                	adc    %al,(%rax)
    874f:	00 60 e5             	add    %ah,-0x1b(%rax)
    8752:	ff                   	(bad)  
    8753:	ff 9b 00 00 00 00    	lcall  *0x0(%rbx)
    8759:	42 0e                	rex.X (bad) 
    875b:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
    8761:	8c 03                	mov    %es,(%rbx)
    8763:	41 0e                	rex.B (bad) 
    8765:	20 86 04 44 0e 28    	and    %al,0x280e4404(%rsi)
    876b:	83 05 47 0e 30 67 0a 	addl   $0xa,0x67300e47(%rip)        # 673095b9 <_end+0x672ff4e9>
    8772:	0e                   	(bad)  
    8773:	28 41 0e             	sub    %al,0xe(%rcx)
    8776:	20 41 0e             	and    %al,0xe(%rcx)
    8779:	18 42 0e             	sbb    %al,0xe(%rdx)
    877c:	10 42 0e             	adc    %al,0xe(%rdx)
    877f:	08 43 0b             	or     %al,0xb(%rbx)
    8782:	02 54 0e 28          	add    0x28(%rsi,%rcx,1),%dl
    8786:	41 0e                	rex.B (bad) 
    8788:	20 41 0e             	and    %al,0xe(%rcx)
    878b:	18 42 0e             	sbb    %al,0xe(%rdx)
    878e:	10 42 0e             	adc    %al,0xe(%rdx)
    8791:	08 00                	or     %al,(%rax)
    8793:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
    8797:	00 10                	add    %dl,(%rax)
    8799:	11 00                	adc    %eax,(%rax)
    879b:	00 b4 e5 ff ff b4 00 	add    %dh,0xb4ffff(%rbp,%riz,8)
    87a2:	00 00                	add    %al,(%rax)
    87a4:	00 42 0e             	add    %al,0xe(%rdx)
    87a7:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    87ad:	8d 03                	lea    (%rbx),%eax
    87af:	42 0e                	rex.X (bad) 
    87b1:	20 8c 04 44 0e 28 86 	and    %cl,-0x79d7f1bc(%rsp,%rax,1)
    87b8:	05 41 0e 30 83       	add    $0x83300e41,%eax
    87bd:	06                   	(bad)  
    87be:	68 0a 0e 28 41       	pushq  $0x41280e0a
    87c3:	0e                   	(bad)  
    87c4:	20 42 0e             	and    %al,0xe(%rdx)
    87c7:	18 42 0e             	sbb    %al,0xe(%rdx)
    87ca:	10 42 0e             	adc    %al,0xe(%rdx)
    87cd:	08 46 0b             	or     %al,0xb(%rsi)
    87d0:	02 50 0a             	add    0xa(%rax),%dl
    87d3:	0e                   	(bad)  
    87d4:	28 41 0e             	sub    %al,0xe(%rcx)
    87d7:	20 42 0e             	and    %al,0xe(%rdx)
    87da:	18 42 0e             	sbb    %al,0xe(%rdx)
    87dd:	10 42 0e             	adc    %al,0xe(%rdx)
    87e0:	08 49 0b             	or     %cl,0xb(%rcx)
    87e3:	4c 0e                	rex.WR (bad) 
    87e5:	28 41 0e             	sub    %al,0xe(%rcx)
    87e8:	20 42 0e             	and    %al,0xe(%rdx)
    87eb:	18 42 0e             	sbb    %al,0xe(%rdx)
    87ee:	10 42 0e             	adc    %al,0xe(%rdx)
    87f1:	08 00                	or     %al,(%rax)
    87f3:	00 48 00             	add    %cl,0x0(%rax)
    87f6:	00 00                	add    %al,(%rax)
    87f8:	70 11                	jo     880b <__GNU_EH_FRAME_HDR+0x152b>
    87fa:	00 00                	add    %al,(%rax)
    87fc:	14 e6                	adc    $0xe6,%al
    87fe:	ff                   	(bad)  
    87ff:	ff a6 00 00 00 00    	jmpq   *0x0(%rsi)
    8805:	42 0e                	rex.X (bad) 
    8807:	10 8e 02 44 0e 18    	adc    %cl,0x180e4402(%rsi)
    880d:	8d 03                	lea    (%rbx),%eax
    880f:	42 0e                	rex.X (bad) 
    8811:	20 8c 04 44 0e 28 86 	and    %cl,-0x79d7f1bc(%rsp,%rax,1)
    8818:	05 49 0e 30 83       	add    $0x83300e49,%eax
    881d:	06                   	(bad)  
    881e:	02 68 0a             	add    0xa(%rax),%ch
    8821:	0e                   	(bad)  
    8822:	28 41 0e             	sub    %al,0xe(%rcx)
    8825:	20 42 0e             	and    %al,0xe(%rdx)
    8828:	18 42 0e             	sbb    %al,0xe(%rdx)
    882b:	10 42 0e             	adc    %al,0xe(%rdx)
    882e:	08 44 0b 56          	or     %al,0x56(%rbx,%rcx,1)
    8832:	0e                   	(bad)  
    8833:	28 41 0e             	sub    %al,0xe(%rcx)
    8836:	20 42 0e             	and    %al,0xe(%rdx)
    8839:	18 42 0e             	sbb    %al,0xe(%rdx)
    883c:	10 42 0e             	adc    %al,0xe(%rdx)
    883f:	08 4c 00 00          	or     %cl,0x0(%rax,%rax,1)
    8843:	00 bc 11 00 00 78 e6 	add    %bh,-0x19880000(%rcx,%rdx,1)
    884a:	ff                   	(bad)  
    884b:	ff ae 00 00 00 00    	ljmp   *0x0(%rsi)
    8851:	42 0e                	rex.X (bad) 
    8853:	10 8e 02 44 0e 18    	adc    %cl,0x180e4402(%rsi)
    8859:	8d 03                	lea    (%rbx),%eax
    885b:	42 0e                	rex.X (bad) 
    885d:	20 8c 04 44 0e 28 86 	and    %cl,-0x79d7f1bc(%rsp,%rax,1)
    8864:	05 49 0e 30 83       	add    $0x83300e49,%eax
    8869:	06                   	(bad)  
    886a:	02 6e 0a             	add    0xa(%rsi),%ch
    886d:	0e                   	(bad)  
    886e:	28 41 0e             	sub    %al,0xe(%rcx)
    8871:	20 42 0e             	and    %al,0xe(%rdx)
    8874:	18 42 0e             	sbb    %al,0xe(%rdx)
    8877:	10 42 0e             	adc    %al,0xe(%rdx)
    887a:	08 46 0b             	or     %al,0xb(%rsi)
    887d:	56                   	push   %rsi
    887e:	0e                   	(bad)  
    887f:	28 41 0e             	sub    %al,0xe(%rcx)
    8882:	20 42 0e             	and    %al,0xe(%rdx)
    8885:	18 42 0e             	sbb    %al,0xe(%rdx)
    8888:	10 42 0e             	adc    %al,0xe(%rdx)
    888b:	08 00                	or     %al,(%rax)
    888d:	00 00                	add    %al,(%rax)
    888f:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
    8893:	00 0c 12             	add    %cl,(%rdx,%rdx,1)
    8896:	00 00                	add    %al,(%rax)
    8898:	d8 88 ff ff 15 02    	fmuls  0x215ffff(%rax)
    889e:	00 00                	add    %al,(%rax)
    88a0:	00 42 0e             	add    %al,0xe(%rdx)
    88a3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    88a9:	8e 03                	mov    (%rbx),%es
    88ab:	42 0e                	rex.X (bad) 
    88ad:	20 8d 04 48 0e 28    	and    %cl,0x280e4804(%rbp)
    88b3:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86309701 <_end+0xffffffff862ff631>
    88b9:	06                   	(bad)  
    88ba:	41 0e                	rex.B (bad) 
    88bc:	38 83 07 44 0e 70    	cmp    %al,0x700e4407(%rbx)
    88c2:	03 ed                	add    %ebp,%ebp
    88c4:	01 0e                	add    %ecx,(%rsi)
    88c6:	38 43 0e             	cmp    %al,0xe(%rbx)
    88c9:	30 41 0e             	xor    %al,0xe(%rcx)
    88cc:	28 42 0e             	sub    %al,0xe(%rdx)
    88cf:	20 42 0e             	and    %al,0xe(%rdx)
    88d2:	18 42 0e             	sbb    %al,0xe(%rdx)
    88d5:	10 42 0e             	adc    %al,0xe(%rdx)
    88d8:	08 00                	or     %al,(%rax)
    88da:	00 00                	add    %al,(%rax)
    88dc:	00 00                	add    %al,(%rax)
    88de:	00 00                	add    %al,(%rax)
    88e0:	44 00 00             	add    %r8b,(%rax)
    88e3:	00 5c 12 00          	add    %bl,0x0(%rdx,%rdx,1)
    88e7:	00 88 e6 ff ff 5d    	add    %cl,0x5dffffe6(%rax)
    88ed:	00 00                	add    %al,(%rax)
    88ef:	00 00                	add    %al,(%rax)
    88f1:	42 0e                	rex.X (bad) 
    88f3:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    88f9:	8e 03                	mov    (%rbx),%es
    88fb:	45 0e                	rex.RB (bad) 
    88fd:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    8903:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff8630974d <_end+0xffffffff862ff67d>
    8909:	06                   	(bad)  
    890a:	48 0e                	rex.W (bad) 
    890c:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    8912:	6a 0e                	pushq  $0xe
    8914:	38 41 0e             	cmp    %al,0xe(%rcx)
    8917:	30 41 0e             	xor    %al,0xe(%rcx)
    891a:	28 42 0e             	sub    %al,0xe(%rdx)
    891d:	20 42 0e             	and    %al,0xe(%rdx)
    8920:	18 42 0e             	sbb    %al,0xe(%rdx)
    8923:	10 42 0e             	adc    %al,0xe(%rdx)
    8926:	08 00                	or     %al,(%rax)
    8928:	10 00                	adc    %al,(%rax)
    892a:	00 00                	add    %al,(%rax)
    892c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    892d:	12 00                	adc    (%rax),%al
    892f:	00 a0 e6 ff ff 01    	add    %ah,0x1ffffe6(%rax)
    8935:	00 00                	add    %al,(%rax)
    8937:	00 00                	add    %al,(%rax)
    8939:	00 00                	add    %al,(%rax)
	...

000000000000893c <__FRAME_END__>:
    893c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000009de8 <__frame_dummy_init_array_entry>:
    9de8:	70 14                	jo     9dfe <_DYNAMIC+0x6>
    9dea:	00 00                	add    %al,(%rax)
    9dec:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000009df0 <__do_global_dtors_aux_fini_array_entry>:
    9df0:	30 14 00             	xor    %dl,(%rax,%rax,1)
    9df3:	00 00                	add    %al,(%rax)
    9df5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000009df8 <_DYNAMIC>:
    9df8:	01 00                	add    %eax,(%rax)
    9dfa:	00 00                	add    %al,(%rax)
    9dfc:	00 00                	add    %al,(%rax)
    9dfe:	00 00                	add    %al,(%rax)
    9e00:	99                   	cltd   
    9e01:	00 00                	add    %al,(%rax)
    9e03:	00 00                	add    %al,(%rax)
    9e05:	00 00                	add    %al,(%rax)
    9e07:	00 0c 00             	add    %cl,(%rax,%rax,1)
    9e0a:	00 00                	add    %al,(%rax)
    9e0c:	00 00                	add    %al,(%rax)
    9e0e:	00 00                	add    %al,(%rax)
    9e10:	00 10                	add    %dl,(%rax)
    9e12:	00 00                	add    %al,(%rax)
    9e14:	00 00                	add    %al,(%rax)
    9e16:	00 00                	add    %al,(%rax)
    9e18:	0d 00 00 00 00       	or     $0x0,%eax
    9e1d:	00 00                	add    %al,(%rax)
    9e1f:	00 d4                	add    %dl,%ah
    9e21:	6f                   	outsl  %ds:(%rsi),(%dx)
    9e22:	00 00                	add    %al,(%rax)
    9e24:	00 00                	add    %al,(%rax)
    9e26:	00 00                	add    %al,(%rax)
    9e28:	19 00                	sbb    %eax,(%rax)
    9e2a:	00 00                	add    %al,(%rax)
    9e2c:	00 00                	add    %al,(%rax)
    9e2e:	00 00                	add    %al,(%rax)
    9e30:	e8 9d 00 00 00       	callq  9ed2 <_DYNAMIC+0xda>
    9e35:	00 00                	add    %al,(%rax)
    9e37:	00 1b                	add    %bl,(%rbx)
    9e39:	00 00                	add    %al,(%rax)
    9e3b:	00 00                	add    %al,(%rax)
    9e3d:	00 00                	add    %al,(%rax)
    9e3f:	00 08                	add    %cl,(%rax)
    9e41:	00 00                	add    %al,(%rax)
    9e43:	00 00                	add    %al,(%rax)
    9e45:	00 00                	add    %al,(%rax)
    9e47:	00 1a                	add    %bl,(%rdx)
    9e49:	00 00                	add    %al,(%rax)
    9e4b:	00 00                	add    %al,(%rax)
    9e4d:	00 00                	add    %al,(%rax)
    9e4f:	00 f0                	add    %dh,%al
    9e51:	9d                   	popfq  
    9e52:	00 00                	add    %al,(%rax)
    9e54:	00 00                	add    %al,(%rax)
    9e56:	00 00                	add    %al,(%rax)
    9e58:	1c 00                	sbb    $0x0,%al
    9e5a:	00 00                	add    %al,(%rax)
    9e5c:	00 00                	add    %al,(%rax)
    9e5e:	00 00                	add    %al,(%rax)
    9e60:	08 00                	or     %al,(%rax)
    9e62:	00 00                	add    %al,(%rax)
    9e64:	00 00                	add    %al,(%rax)
    9e66:	00 00                	add    %al,(%rax)
    9e68:	f5                   	cmc    
    9e69:	fe                   	(bad)  
    9e6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    9e6d:	00 00                	add    %al,(%rax)
    9e6f:	00 08                	add    %cl,(%rax)
    9e71:	03 00                	add    (%rax),%eax
    9e73:	00 00                	add    %al,(%rax)
    9e75:	00 00                	add    %al,(%rax)
    9e77:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 9e7d <_DYNAMIC+0x85>
    9e7d:	00 00                	add    %al,(%rax)
    9e7f:	00 a0 05 00 00 00    	add    %ah,0x5(%rax)
    9e85:	00 00                	add    %al,(%rax)
    9e87:	00 06                	add    %al,(%rsi)
    9e89:	00 00                	add    %al,(%rax)
    9e8b:	00 00                	add    %al,(%rax)
    9e8d:	00 00                	add    %al,(%rax)
    9e8f:	00 30                	add    %dh,(%rax)
    9e91:	03 00                	add    (%rax),%eax
    9e93:	00 00                	add    %al,(%rax)
    9e95:	00 00                	add    %al,(%rax)
    9e97:	00 0a                	add    %cl,(%rdx)
    9e99:	00 00                	add    %al,(%rax)
    9e9b:	00 00                	add    %al,(%rax)
    9e9d:	00 00                	add    %al,(%rax)
    9e9f:	00 ff                	add    %bh,%bh
    9ea1:	00 00                	add    %al,(%rax)
    9ea3:	00 00                	add    %al,(%rax)
    9ea5:	00 00                	add    %al,(%rax)
    9ea7:	00 0b                	add    %cl,(%rbx)
    9ea9:	00 00                	add    %al,(%rax)
    9eab:	00 00                	add    %al,(%rax)
    9ead:	00 00                	add    %al,(%rax)
    9eaf:	00 18                	add    %bl,(%rax)
    9eb1:	00 00                	add    %al,(%rax)
    9eb3:	00 00                	add    %al,(%rax)
    9eb5:	00 00                	add    %al,(%rax)
    9eb7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 9ebd <_DYNAMIC+0xc5>
	...
    9ec5:	00 00                	add    %al,(%rax)
    9ec7:	00 03                	add    %al,(%rbx)
	...
    9ed1:	a0 00 00 00 00 00 00 	movabs 0x2000000000000,%al
    9ed8:	02 00 
    9eda:	00 00                	add    %al,(%rax)
    9edc:	00 00                	add    %al,(%rax)
    9ede:	00 00                	add    %al,(%rax)
    9ee0:	c8 01 00 00          	enterq $0x1,$0x0
    9ee4:	00 00                	add    %al,(%rax)
    9ee6:	00 00                	add    %al,(%rax)
    9ee8:	14 00                	adc    $0x0,%al
    9eea:	00 00                	add    %al,(%rax)
    9eec:	00 00                	add    %al,(%rax)
    9eee:	00 00                	add    %al,(%rax)
    9ef0:	07                   	(bad)  
    9ef1:	00 00                	add    %al,(%rax)
    9ef3:	00 00                	add    %al,(%rax)
    9ef5:	00 00                	add    %al,(%rax)
    9ef7:	00 17                	add    %dl,(%rdi)
    9ef9:	00 00                	add    %al,(%rax)
    9efb:	00 00                	add    %al,(%rax)
    9efd:	00 00                	add    %al,(%rax)
    9eff:	00 e0                	add    %ah,%al
    9f01:	07                   	(bad)  
    9f02:	00 00                	add    %al,(%rax)
    9f04:	00 00                	add    %al,(%rax)
    9f06:	00 00                	add    %al,(%rax)
    9f08:	07                   	(bad)  
    9f09:	00 00                	add    %al,(%rax)
    9f0b:	00 00                	add    %al,(%rax)
    9f0d:	00 00                	add    %al,(%rax)
    9f0f:	00 08                	add    %cl,(%rax)
    9f11:	07                   	(bad)  
    9f12:	00 00                	add    %al,(%rax)
    9f14:	00 00                	add    %al,(%rax)
    9f16:	00 00                	add    %al,(%rax)
    9f18:	08 00                	or     %al,(%rax)
    9f1a:	00 00                	add    %al,(%rax)
    9f1c:	00 00                	add    %al,(%rax)
    9f1e:	00 00                	add    %al,(%rax)
    9f20:	d8 00                	fadds  (%rax)
    9f22:	00 00                	add    %al,(%rax)
    9f24:	00 00                	add    %al,(%rax)
    9f26:	00 00                	add    %al,(%rax)
    9f28:	09 00                	or     %eax,(%rax)
    9f2a:	00 00                	add    %al,(%rax)
    9f2c:	00 00                	add    %al,(%rax)
    9f2e:	00 00                	add    %al,(%rax)
    9f30:	18 00                	sbb    %al,(%rax)
    9f32:	00 00                	add    %al,(%rax)
    9f34:	00 00                	add    %al,(%rax)
    9f36:	00 00                	add    %al,(%rax)
    9f38:	fb                   	sti    
    9f39:	ff                   	(bad)  
    9f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    9f3d:	00 00                	add    %al,(%rax)
    9f3f:	00 00                	add    %al,(%rax)
    9f41:	00 00                	add    %al,(%rax)
    9f43:	08 00                	or     %al,(%rax)
    9f45:	00 00                	add    %al,(%rax)
    9f47:	00 fe                	add    %bh,%dh
    9f49:	ff                   	(bad)  
    9f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    9f4d:	00 00                	add    %al,(%rax)
    9f4f:	00 d8                	add    %bl,%al
    9f51:	06                   	(bad)  
    9f52:	00 00                	add    %al,(%rax)
    9f54:	00 00                	add    %al,(%rax)
    9f56:	00 00                	add    %al,(%rax)
    9f58:	ff                   	(bad)  
    9f59:	ff                   	(bad)  
    9f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    9f5d:	00 00                	add    %al,(%rax)
    9f5f:	00 01                	add    %al,(%rcx)
    9f61:	00 00                	add    %al,(%rax)
    9f63:	00 00                	add    %al,(%rax)
    9f65:	00 00                	add    %al,(%rax)
    9f67:	00 f0                	add    %dh,%al
    9f69:	ff                   	(bad)  
    9f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    9f6d:	00 00                	add    %al,(%rax)
    9f6f:	00 a0 06 00 00 00    	add    %ah,0x6(%rax)
    9f75:	00 00                	add    %al,(%rax)
    9f77:	00 f9                	add    %bh,%cl
    9f79:	ff                   	(bad)  
    9f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
    9f7d:	00 00                	add    %al,(%rax)
    9f7f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000009fd8 <.got>:
	...

Disassembly of section .got.plt:

000000000000a000 <_GLOBAL_OFFSET_TABLE_>:
    a000:	f8                   	clc    
    a001:	9d                   	popfq  
	...
    a016:	00 00                	add    %al,(%rax)
    a018:	36 10 00             	adc    %al,%ss:(%rax)
    a01b:	00 00                	add    %al,(%rax)
    a01d:	00 00                	add    %al,(%rax)
    a01f:	00 46 10             	add    %al,0x10(%rsi)
    a022:	00 00                	add    %al,(%rax)
    a024:	00 00                	add    %al,(%rax)
    a026:	00 00                	add    %al,(%rax)
    a028:	56                   	push   %rsi
    a029:	10 00                	adc    %al,(%rax)
    a02b:	00 00                	add    %al,(%rax)
    a02d:	00 00                	add    %al,(%rax)
    a02f:	00 66 10             	add    %ah,0x10(%rsi)
    a032:	00 00                	add    %al,(%rax)
    a034:	00 00                	add    %al,(%rax)
    a036:	00 00                	add    %al,(%rax)
    a038:	76 10                	jbe    a04a <_GLOBAL_OFFSET_TABLE_+0x4a>
    a03a:	00 00                	add    %al,(%rax)
    a03c:	00 00                	add    %al,(%rax)
    a03e:	00 00                	add    %al,(%rax)
    a040:	86 10                	xchg   %dl,(%rax)
    a042:	00 00                	add    %al,(%rax)
    a044:	00 00                	add    %al,(%rax)
    a046:	00 00                	add    %al,(%rax)
    a048:	96                   	xchg   %eax,%esi
    a049:	10 00                	adc    %al,(%rax)
    a04b:	00 00                	add    %al,(%rax)
    a04d:	00 00                	add    %al,(%rax)
    a04f:	00 a6 10 00 00 00    	add    %ah,0x10(%rsi)
    a055:	00 00                	add    %al,(%rax)
    a057:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
    a05d:	00 00                	add    %al,(%rax)
    a05f:	00 c6                	add    %al,%dh
    a061:	10 00                	adc    %al,(%rax)
    a063:	00 00                	add    %al,(%rax)
    a065:	00 00                	add    %al,(%rax)
    a067:	00 d6                	add    %dl,%dh
    a069:	10 00                	adc    %al,(%rax)
    a06b:	00 00                	add    %al,(%rax)
    a06d:	00 00                	add    %al,(%rax)
    a06f:	00 e6                	add    %ah,%dh
    a071:	10 00                	adc    %al,(%rax)
    a073:	00 00                	add    %al,(%rax)
    a075:	00 00                	add    %al,(%rax)
    a077:	00 f6                	add    %dh,%dh
    a079:	10 00                	adc    %al,(%rax)
    a07b:	00 00                	add    %al,(%rax)
    a07d:	00 00                	add    %al,(%rax)
    a07f:	00 06                	add    %al,(%rsi)
    a081:	11 00                	adc    %eax,(%rax)
    a083:	00 00                	add    %al,(%rax)
    a085:	00 00                	add    %al,(%rax)
    a087:	00 16                	add    %dl,(%rsi)
    a089:	11 00                	adc    %eax,(%rax)
    a08b:	00 00                	add    %al,(%rax)
    a08d:	00 00                	add    %al,(%rax)
    a08f:	00 26                	add    %ah,(%rsi)
    a091:	11 00                	adc    %eax,(%rax)
    a093:	00 00                	add    %al,(%rax)
    a095:	00 00                	add    %al,(%rax)
    a097:	00 36                	add    %dh,(%rsi)
    a099:	11 00                	adc    %eax,(%rax)
    a09b:	00 00                	add    %al,(%rax)
    a09d:	00 00                	add    %al,(%rax)
    a09f:	00 46 11             	add    %al,0x11(%rsi)
    a0a2:	00 00                	add    %al,(%rax)
    a0a4:	00 00                	add    %al,(%rax)
    a0a6:	00 00                	add    %al,(%rax)
    a0a8:	56                   	push   %rsi
    a0a9:	11 00                	adc    %eax,(%rax)
    a0ab:	00 00                	add    %al,(%rax)
    a0ad:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

000000000000a0b0 <__data_start>:
	...

000000000000a0b8 <__dso_handle>:
    a0b8:	b8 a0 00 00 00       	mov    $0xa0,%eax
    a0bd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

000000000000a0c0 <stdout@GLIBC_2.2.5>:
	...

000000000000a0c8 <completed.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 31 30 2e 	imul   $0x2e303120,0x6e(%rcx),%esp
  10:	32 2e                	xor    (%rsi),%ch
  12:	31 2d 36 29 20 31    	xor    %ebp,0x31202936(%rip)        # 3120294e <_end+0x311f887e>
  18:	30 2e                	xor    %ch,(%rsi)
  1a:	32 2e                	xor    (%rsi),%ch
  1c:	31 20                	xor    %esp,(%rax)
  1e:	32 30                	xor    (%rax),%dh
  20:	32 31                	xor    (%rcx),%dh
  22:	30 31                	xor    %dh,(%rcx)
  24:	31 30                	xor    %esi,(%rax)
	...
