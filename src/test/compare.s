
compare:     file format elf64-x86-64


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
 2d3:	00 f4                	add    %dh,%ah
 2d5:	f9                   	stc    
 2d6:	68 09 66 9f 43       	pushq  $0x439f6609
 2db:	26 00 59 0a          	add    %bl,%es:0xa(%rcx)
 2df:	7a 5e                	jp     33f <_init-0xcc1>
 2e1:	ff                   	(bad)  
 2e2:	ff c7                	inc    %edi
 2e4:	38 2f                	cmp    %ch,(%rdi)
 2e6:	00 1b                	add    %bl,(%rbx)

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
 30c:	16                   	(bad)  
 30d:	00 00                	add    %al,(%rax)
 30f:	00 01                	add    %al,(%rcx)
 311:	00 00                	add    %al,(%rax)
 313:	00 06                	add    %al,(%rsi)
 315:	00 00                	add    %al,(%rax)
 317:	00 00                	add    %al,(%rax)
 319:	00 91 00 01 00 00    	add    %dl,0x100(%rcx)
 31f:	00 16                	add    %dl,(%rsi)
 321:	00 00                	add    %al,(%rax)
 323:	00 00                	add    %al,(%rax)
 325:	00 00                	add    %al,(%rax)
 327:	00 d0                	add    %dl,%al
 329:	65 ce                	gs (bad) 
 32b:	6d                   	insl   (%dx),%es:(%rdi)
 32c:	15                   	.byte 0x15
 32d:	98                   	cwtl   
 32e:	0c 43                	or     $0x43,%al

Disassembly of section .dynsym:

0000000000000330 <.dynsym>:
	...
 348:	46 00 00             	rex.RX add %r8b,(%rax)
 34b:	00 12                	add    %dl,(%rdx)
	...
 35d:	00 00                	add    %al,(%rax)
 35f:	00 95 02 00 00 12    	add    %dl,0x12000002(%rbp)
	...
 375:	00 00                	add    %al,(%rax)
 377:	00 ac 00 00 00 12 00 	add    %ch,0x120000(%rax,%rax,1)
	...
 38e:	00 00                	add    %al,(%rax)
 390:	22 02                	and    (%rdx),%al
 392:	00 00                	add    %al,(%rax)
 394:	12 00                	adc    (%rax),%al
	...
 3a6:	00 00                	add    %al,(%rax)
 3a8:	a8 02                	test   $0x2,%al
 3aa:	00 00                	add    %al,(%rax)
 3ac:	12 00                	adc    (%rax),%al
	...
 3be:	00 00                	add    %al,(%rax)
 3c0:	9b                   	fwait
 3c1:	02 00                	add    (%rax),%al
 3c3:	00 12                	add    %dl,(%rdx)
	...
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 8b 00 00 00 12    	add    %cl,0x12000000(%rbx)
	...
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 40 01             	add    %al,0x1(%rax)
 3f2:	00 00                	add    %al,(%rax)
 3f4:	12 00                	adc    (%rax),%al
	...
 406:	00 00                	add    %al,(%rax)
 408:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 409:	00 00                	add    %al,(%rax)
 40b:	00 12                	add    %dl,(%rdx)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 f2                	add    %dh,%dl
 421:	00 00                	add    %al,(%rax)
 423:	00 12                	add    %dl,(%rdx)
	...
 435:	00 00                	add    %al,(%rax)
 437:	00 3f                	add    %bh,(%rdi)
 439:	02 00                	add    (%rax),%al
 43b:	00 12                	add    %dl,(%rdx)
	...
 44d:	00 00                	add    %al,(%rax)
 44f:	00 d4                	add    %dl,%ah
 451:	01 00                	add    %eax,(%rax)
 453:	00 12                	add    %dl,(%rdx)
	...
 465:	00 00                	add    %al,(%rax)
 467:	00 78 01             	add    %bh,0x1(%rax)
 46a:	00 00                	add    %al,(%rax)
 46c:	12 00                	adc    (%rax),%al
	...
 47e:	00 00                	add    %al,(%rax)
 480:	dd 00                	fldl   (%rax)
 482:	00 00                	add    %al,(%rax)
 484:	12 00                	adc    (%rax),%al
	...
 496:	00 00                	add    %al,(%rax)
 498:	10 00                	adc    %al,(%rax)
 49a:	00 00                	add    %al,(%rax)
 49c:	20 00                	and    %al,(%rax)
	...
 4ae:	00 00                	add    %al,(%rax)
 4b0:	86 02                	xchg   %al,(%rdx)
 4b2:	00 00                	add    %al,(%rax)
 4b4:	12 00                	adc    (%rax),%al
	...
 4c6:	00 00                	add    %al,(%rax)
 4c8:	90                   	nop
 4c9:	01 00                	add    %eax,(%rax)
 4cb:	00 12                	add    %dl,(%rdx)
	...
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 be 02 00 00 12    	add    %bh,0x12000002(%rsi)
	...
 4f5:	00 00                	add    %al,(%rax)
 4f7:	00 01                	add    %al,(%rcx)
 4f9:	00 00                	add    %al,(%rax)
 4fb:	00 20                	add    %ah,(%rax)
	...
 50d:	00 00                	add    %al,(%rax)
 50f:	00 2c 00             	add    %ch,(%rax,%rax,1)
 512:	00 00                	add    %al,(%rax)
 514:	20 00                	and    %al,(%rax)
	...
 526:	00 00                	add    %al,(%rax)
 528:	c5 00 00             	(bad)
 52b:	00 12                	add    %dl,(%rdx)
	...
 53d:	00 00                	add    %al,(%rax)
 53f:	00 af 02 00 00 22    	add    %ch,0x22000002(%rdi)
	...
 555:	00 00                	add    %al,(%rax)
 557:	00 18                	add    %bl,(%rax)
 559:	02 00                	add    (%rax),%al
 55b:	00 11                	add    %dl,(%rcx)
 55d:	00 1a                	add    %bl,(%rdx)
 55f:	00 c0                	add    %al,%al
 561:	40 00 00             	add    %al,(%rax)
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	10 01                	adc    %al,(%rcx)
 56a:	00 00                	add    %al,(%rax)
 56c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000570 <.dynstr>:
 570:	00 5f 5f             	add    %bl,0x5f(%rdi)
 573:	67 6d                	insl   (%dx),%es:(%edi)
 575:	6f                   	outsl  %ds:(%rsi),(%dx)
 576:	6e                   	outsb  %ds:(%rsi),(%dx)
 577:	5f                   	pop    %rdi
 578:	73 74                	jae    5ee <_init-0xa12>
 57a:	61                   	(bad)  
 57b:	72 74                	jb     5f1 <_init-0xa0f>
 57d:	5f                   	pop    %rdi
 57e:	5f                   	pop    %rdi
 57f:	00 5f 49             	add    %bl,0x49(%rdi)
 582:	54                   	push   %rsp
 583:	4d 5f                	rex.WRB pop %r15
 585:	64 65 72 65          	fs gs jb 5ee <_init-0xa12>
 589:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 590:	4d 
 591:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 593:	6f                   	outsl  %ds:(%rsi),(%dx)
 594:	6e                   	outsb  %ds:(%rsi),(%dx)
 595:	65 54                	gs push %rsp
 597:	61                   	(bad)  
 598:	62                   	(bad)  
 599:	6c                   	insb   (%dx),%es:(%rdi)
 59a:	65 00 5f 49          	add    %bl,%gs:0x49(%rdi)
 59e:	54                   	push   %rsp
 59f:	4d 5f                	rex.WRB pop %r15
 5a1:	72 65                	jb     608 <_init-0x9f8>
 5a3:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 5aa:	4d 
 5ab:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 5ad:	6f                   	outsl  %ds:(%rsi),(%dx)
 5ae:	6e                   	outsb  %ds:(%rsi),(%dx)
 5af:	65 54                	gs push %rsp
 5b1:	61                   	(bad)  
 5b2:	62                   	(bad)  
 5b3:	6c                   	insb   (%dx),%es:(%rdi)
 5b4:	65 00 5f 5a          	add    %bl,%gs:0x5a(%rdi)
 5b8:	4e 53                	rex.WRX push %rbx
 5ba:	74 37                	je     5f3 <_init-0xa0d>
 5bc:	5f                   	pop    %rdi
 5bd:	5f                   	pop    %rdi
 5be:	63 78 78             	movsxd 0x78(%rax),%edi
 5c1:	31 31                	xor    %esi,(%rcx)
 5c3:	31 32                	xor    %esi,(%rdx)
 5c5:	62 61                	(bad)  
 5c7:	73 69                	jae    632 <_init-0x9ce>
 5c9:	63 5f 73             	movsxd 0x73(%rdi),%ebx
 5cc:	74 72                	je     640 <_init-0x9c0>
 5ce:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
 5d5:	31 31                	xor    %esi,(%rcx)
 5d7:	63 68 61             	movsxd 0x61(%rax),%ebp
 5da:	72 5f                	jb     63b <_init-0x9c5>
 5dc:	74 72                	je     650 <_init-0x9b0>
 5de:	61                   	(bad)  
 5df:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
 5e6:	61 
 5e7:	49 63 45 45          	movslq 0x45(%r13),%rax
 5eb:	39 5f 4d             	cmp    %ebx,0x4d(%rdi)
 5ee:	5f                   	pop    %rdi
 5ef:	61                   	(bad)  
 5f0:	70 70                	jo     662 <_init-0x99e>
 5f2:	65 6e                	outsb  %gs:(%rsi),(%dx)
 5f4:	64 45 50             	fs rex.RB push %r8
 5f7:	4b 63 6d 00          	rex.WXB movslq 0x0(%r13),%rbp
 5fb:	5f                   	pop    %rdi
 5fc:	5a                   	pop    %rdx
 5fd:	4e 53                	rex.WRX push %rbx
 5ff:	6f                   	outsl  %ds:(%rsi),(%dx)
 600:	39 5f 4d             	cmp    %ebx,0x4d(%rdi)
 603:	5f                   	pop    %rdi
 604:	69 6e 73 65 72 74 49 	imul   $0x49747265,0x73(%rsi),%ebp
 60b:	6c                   	insb   (%dx),%es:(%rdi)
 60c:	45                   	rex.RB
 60d:	45 52                	rex.RB push %r10
 60f:	53                   	push   %rbx
 610:	6f                   	outsl  %ds:(%rsi),(%dx)
 611:	54                   	push   %rsp
 612:	5f                   	pop    %rdi
 613:	00 5f 5a             	add    %bl,0x5a(%rdi)
 616:	64 6c                	fs insb (%dx),%es:(%rdi)
 618:	50                   	push   %rax
 619:	76 6d                	jbe    688 <_init-0x978>
 61b:	00 5f 5a             	add    %bl,0x5a(%rdi)
 61e:	4e 53                	rex.WRX push %rbx
 620:	6f                   	outsl  %ds:(%rsi),(%dx)
 621:	39 5f 4d             	cmp    %ebx,0x4d(%rdi)
 624:	5f                   	pop    %rdi
 625:	69 6e 73 65 72 74 49 	imul   $0x49747265,0x73(%rsi),%ebp
 62c:	6d                   	insl   (%dx),%es:(%rdi)
 62d:	45                   	rex.RB
 62e:	45 52                	rex.RB push %r10
 630:	53                   	push   %rbx
 631:	6f                   	outsl  %ds:(%rsi),(%dx)
 632:	54                   	push   %rsp
 633:	5f                   	pop    %rdi
 634:	00 5f 5a             	add    %bl,0x5a(%rdi)
 637:	4e 53                	rex.WRX push %rbx
 639:	74 38                	je     673 <_init-0x98d>
 63b:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
 642:	65 34 49             	gs xor $0x49,%al
 645:	6e                   	outsb  %ds:(%rsi),(%dx)
 646:	69 74 44 31 45 76 00 	imul   $0x5f007645,0x31(%rsp,%rax,2),%esi
 64d:	5f 
 64e:	5f                   	pop    %rdi
 64f:	67 78 78             	addr32 js 6ca <_init-0x936>
 652:	5f                   	pop    %rdi
 653:	70 65                	jo     6ba <_init-0x946>
 655:	72 73                	jb     6ca <_init-0x936>
 657:	6f                   	outsl  %ds:(%rsi),(%dx)
 658:	6e                   	outsb  %ds:(%rsi),(%dx)
 659:	61                   	(bad)  
 65a:	6c                   	insb   (%dx),%es:(%rdi)
 65b:	69 74 79 5f 76 30 00 	imul   $0x5f003076,0x5f(%rcx,%rdi,2),%esi
 662:	5f 
 663:	5a                   	pop    %rdx
 664:	53                   	push   %rbx
 665:	74 31                	je     698 <_init-0x968>
 667:	36 5f                	ss pop %rdi
 669:	5f                   	pop    %rdi
 66a:	6f                   	outsl  %ds:(%rsi),(%dx)
 66b:	73 74                	jae    6e1 <_init-0x91f>
 66d:	72 65                	jb     6d4 <_init-0x92c>
 66f:	61                   	(bad)  
 670:	6d                   	insl   (%dx),%es:(%rdi)
 671:	5f                   	pop    %rdi
 672:	69 6e 73 65 72 74 49 	imul   $0x49747265,0x73(%rsi),%ebp
 679:	63 53 74             	movsxd 0x74(%rbx),%edx
 67c:	31 31                	xor    %esi,(%rcx)
 67e:	63 68 61             	movsxd 0x61(%rax),%ebp
 681:	72 5f                	jb     6e2 <_init-0x91e>
 683:	74 72                	je     6f7 <_init-0x909>
 685:	61                   	(bad)  
 686:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
 68d:	52 
 68e:	53                   	push   %rbx
 68f:	74 31                	je     6c2 <_init-0x93e>
 691:	33 62 61             	xor    0x61(%rdx),%esp
 694:	73 69                	jae    6ff <_init-0x901>
 696:	63 5f 6f             	movsxd 0x6f(%rdi),%ebx
 699:	73 74                	jae    70f <_init-0x8f1>
 69b:	72 65                	jb     702 <_init-0x8fe>
 69d:	61                   	(bad)  
 69e:	6d                   	insl   (%dx),%es:(%rdi)
 69f:	49 54                	rex.WB push %r12
 6a1:	5f                   	pop    %rdi
 6a2:	54                   	push   %rsp
 6a3:	30 5f 45             	xor    %bl,0x45(%rdi)
 6a6:	53                   	push   %rbx
 6a7:	36 5f                	ss pop %rdi
 6a9:	50                   	push   %rax
 6aa:	4b 53                	rex.WXB push %r11
 6ac:	33 5f 6c             	xor    0x6c(%rdi),%ebx
 6af:	00 5f 5a             	add    %bl,0x5a(%rdi)
 6b2:	53                   	push   %rbx
 6b3:	74 6c                	je     721 <_init-0x8df>
 6b5:	73 49                	jae    700 <_init-0x900>
 6b7:	53                   	push   %rbx
 6b8:	74 31                	je     6eb <_init-0x915>
 6ba:	31 63 68             	xor    %esp,0x68(%rbx)
 6bd:	61                   	(bad)  
 6be:	72 5f                	jb     71f <_init-0x8e1>
 6c0:	74 72                	je     734 <_init-0x8cc>
 6c2:	61                   	(bad)  
 6c3:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
 6ca:	52 
 6cb:	53                   	push   %rbx
 6cc:	74 31                	je     6ff <_init-0x901>
 6ce:	33 62 61             	xor    0x61(%rdx),%esp
 6d1:	73 69                	jae    73c <_init-0x8c4>
 6d3:	63 5f 6f             	movsxd 0x6f(%rdi),%ebx
 6d6:	73 74                	jae    74c <_init-0x8b4>
 6d8:	72 65                	jb     73f <_init-0x8c1>
 6da:	61                   	(bad)  
 6db:	6d                   	insl   (%dx),%es:(%rdi)
 6dc:	49 63 54 5f 45       	movslq 0x45(%r15,%rbx,2),%rdx
 6e1:	53                   	push   %rbx
 6e2:	35 5f 50 4b 63       	xor    $0x634b505f,%eax
 6e7:	00 5f 5a             	add    %bl,0x5a(%rdi)
 6ea:	4e 53                	rex.WRX push %rbx
 6ec:	74 38                	je     726 <_init-0x8da>
 6ee:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
 6f5:	65 34 49             	gs xor $0x49,%al
 6f8:	6e                   	outsb  %ds:(%rsi),(%dx)
 6f9:	69 74 43 31 45 76 00 	imul   $0x5f007645,0x31(%rbx,%rax,2),%esi
 700:	5f 
 701:	5a                   	pop    %rdx
 702:	4e 53                	rex.WRX push %rbx
 704:	74 37                	je     73d <_init-0x8c3>
 706:	5f                   	pop    %rdi
 707:	5f                   	pop    %rdi
 708:	63 78 78             	movsxd 0x78(%rax),%edi
 70b:	31 31                	xor    %esi,(%rcx)
 70d:	31 32                	xor    %esi,(%rdx)
 70f:	62 61                	(bad)  
 711:	73 69                	jae    77c <_init-0x884>
 713:	63 5f 73             	movsxd 0x73(%rdi),%ebx
 716:	74 72                	je     78a <_init-0x876>
 718:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
 71f:	31 31                	xor    %esi,(%rcx)
 721:	63 68 61             	movsxd 0x61(%rax),%ebp
 724:	72 5f                	jb     785 <_init-0x87b>
 726:	74 72                	je     79a <_init-0x866>
 728:	61                   	(bad)  
 729:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
 730:	61 
 731:	49 63 45 45          	movslq 0x45(%r13),%rax
 735:	39 5f 4d             	cmp    %ebx,0x4d(%rdi)
 738:	5f                   	pop    %rdi
 739:	63 72 65             	movsxd 0x65(%rdx),%esi
 73c:	61                   	(bad)  
 73d:	74 65                	je     7a4 <_init-0x85c>
 73f:	45 52                	rex.RB push %r10
 741:	6d                   	insl   (%dx),%es:(%rdi)
 742:	6d                   	insl   (%dx),%es:(%rdi)
 743:	00 5f 5a             	add    %bl,0x5a(%rdi)
 746:	4e 53                	rex.WRX push %rbx
 748:	74 37                	je     781 <_init-0x87f>
 74a:	5f                   	pop    %rdi
 74b:	5f                   	pop    %rdi
 74c:	63 78 78             	movsxd 0x78(%rax),%edi
 74f:	31 31                	xor    %esi,(%rcx)
 751:	31 32                	xor    %esi,(%rdx)
 753:	62 61                	(bad)  
 755:	73 69                	jae    7c0 <_init-0x840>
 757:	63 5f 73             	movsxd 0x73(%rdi),%ebx
 75a:	74 72                	je     7ce <_init-0x832>
 75c:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
 763:	31 31                	xor    %esi,(%rcx)
 765:	63 68 61             	movsxd 0x61(%rax),%ebp
 768:	72 5f                	jb     7c9 <_init-0x837>
 76a:	74 72                	je     7de <_init-0x822>
 76c:	61                   	(bad)  
 76d:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
 774:	61 
 775:	49 63 45 45          	movslq 0x45(%r13),%rax
 779:	31 30                	xor    %esi,(%rax)
 77b:	5f                   	pop    %rdi
 77c:	4d 5f                	rex.WRB pop %r15
 77e:	64 69 73 70 6f 73 65 	imul   $0x4565736f,%fs:0x70(%rbx),%esi
 785:	45 
 786:	76 00                	jbe    788 <_init-0x878>
 788:	5f                   	pop    %rdi
 789:	5a                   	pop    %rdx
 78a:	53                   	push   %rbx
 78b:	74 34                	je     7c1 <_init-0x83f>
 78d:	63 6f 75             	movsxd 0x75(%rdi),%ebp
 790:	74 00                	je     792 <_init-0x86e>
 792:	5f                   	pop    %rdi
 793:	5a                   	pop    %rdx
 794:	53                   	push   %rbx
 795:	74 31                	je     7c8 <_init-0x838>
 797:	39 5f 5f             	cmp    %ebx,0x5f(%rdi)
 79a:	74 68                	je     804 <_init-0x7fc>
 79c:	72 6f                	jb     80d <_init-0x7f3>
 79e:	77 5f                	ja     7ff <_init-0x801>
 7a0:	6c                   	insb   (%dx),%es:(%rdi)
 7a1:	6f                   	outsl  %ds:(%rsi),(%dx)
 7a2:	67 69 63 5f 65 72 72 	imul   $0x6f727265,0x5f(%ebx),%esp
 7a9:	6f 
 7aa:	72 50                	jb     7fc <_init-0x804>
 7ac:	4b 63 00             	rex.WXB movslq (%r8),%rax
 7af:	5f                   	pop    %rdi
 7b0:	5a                   	pop    %rdx
 7b1:	4e 53                	rex.WRX push %rbx
 7b3:	74 37                	je     7ec <_init-0x814>
 7b5:	5f                   	pop    %rdi
 7b6:	5f                   	pop    %rdi
 7b7:	63 78 78             	movsxd 0x78(%rax),%edi
 7ba:	31 31                	xor    %esi,(%rcx)
 7bc:	31 32                	xor    %esi,(%rdx)
 7be:	62 61                	(bad)  
 7c0:	73 69                	jae    82b <_init-0x7d5>
 7c2:	63 5f 73             	movsxd 0x73(%rdi),%ebx
 7c5:	74 72                	je     839 <_init-0x7c7>
 7c7:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
 7ce:	31 31                	xor    %esi,(%rcx)
 7d0:	63 68 61             	movsxd 0x61(%rax),%ebp
 7d3:	72 5f                	jb     834 <_init-0x7cc>
 7d5:	74 72                	je     849 <_init-0x7b7>
 7d7:	61                   	(bad)  
 7d8:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
 7df:	61 
 7e0:	49 63 45 45          	movslq 0x45(%r13),%rax
 7e4:	31 32                	xor    %esi,(%rdx)
 7e6:	5f                   	pop    %rdi
 7e7:	4d 5f                	rex.WRB pop %r15
 7e9:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
 7ec:	73 74                	jae    862 <_init-0x79e>
 7ee:	72 75                	jb     865 <_init-0x79b>
 7f0:	63 74 45 6d          	movsxd 0x6d(%rbp,%rax,2),%esi
 7f4:	63 00                	movsxd (%rax),%eax
 7f6:	5f                   	pop    %rdi
 7f7:	55                   	push   %rbp
 7f8:	6e                   	outsb  %ds:(%rsi),(%dx)
 7f9:	77 69                	ja     864 <_init-0x79c>
 7fb:	6e                   	outsb  %ds:(%rsi),(%dx)
 7fc:	64 5f                	fs pop %rdi
 7fe:	52                   	push   %rdx
 7ff:	65 73 75             	gs jae 877 <_init-0x789>
 802:	6d                   	insl   (%dx),%es:(%rdi)
 803:	65 00 63 6c          	add    %ah,%gs:0x6c(%rbx)
 807:	6f                   	outsl  %ds:(%rsi),(%dx)
 808:	63 6b 00             	movsxd 0x0(%rbx),%ebp
 80b:	5f                   	pop    %rdi
 80c:	5f                   	pop    %rdi
 80d:	63 78 61             	movsxd 0x61(%rax),%edi
 810:	5f                   	pop    %rdi
 811:	61                   	(bad)  
 812:	74 65                	je     879 <_init-0x787>
 814:	78 69                	js     87f <_init-0x781>
 816:	74 00                	je     818 <_init-0x7e8>
 818:	6d                   	insl   (%dx),%es:(%rdi)
 819:	65 6d                	gs insl (%dx),%es:(%rdi)
 81b:	63 70 79             	movsxd 0x79(%rax),%esi
 81e:	00 5f 5f             	add    %bl,0x5f(%rdi)
 821:	63 78 61             	movsxd 0x61(%rax),%edi
 824:	5f                   	pop    %rdi
 825:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 82b:	7a 65                	jp     892 <_init-0x76e>
 82d:	00 5f 5f             	add    %bl,0x5f(%rdi)
 830:	6c                   	insb   (%dx),%es:(%rdi)
 831:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 838:	72 74                	jb     8ae <_init-0x752>
 83a:	5f                   	pop    %rdi
 83b:	6d                   	insl   (%dx),%es:(%rdi)
 83c:	61                   	(bad)  
 83d:	69 6e 00 6c 69 62 73 	imul   $0x7362696c,0x0(%rsi),%ebp
 844:	74 64                	je     8aa <_init-0x756>
 846:	63 2b                	movsxd (%rbx),%ebp
 848:	2b 2e                	sub    (%rsi),%ebp
 84a:	73 6f                	jae    8bb <_init-0x745>
 84c:	2e 36 00 6c 69 62    	cs add %ch,%ss:0x62(%rcx,%rbp,2)
 852:	67 63 63 5f          	movsxd 0x5f(%ebx),%esp
 856:	73 2e                	jae    886 <_init-0x77a>
 858:	73 6f                	jae    8c9 <_init-0x737>
 85a:	2e 31 00             	xor    %eax,%cs:(%rax)
 85d:	6c                   	insb   (%dx),%es:(%rdi)
 85e:	69 62 63 2e 73 6f 2e 	imul   $0x2e6f732e,0x63(%rdx),%esp
 865:	36 00 47 43          	add    %al,%ss:0x43(%rdi)
 869:	43 5f                	rex.XB pop %r15
 86b:	33 2e                	xor    (%rsi),%ebp
 86d:	30 00                	xor    %al,(%rax)
 86f:	47                   	rex.RXB
 870:	4c                   	rex.WR
 871:	49                   	rex.WB
 872:	42                   	rex.X
 873:	43 5f                	rex.XB pop %r15
 875:	32 2e                	xor    (%rsi),%ch
 877:	31 34 00             	xor    %esi,(%rax,%rax,1)
 87a:	47                   	rex.RXB
 87b:	4c                   	rex.WR
 87c:	49                   	rex.WB
 87d:	42                   	rex.X
 87e:	43 5f                	rex.XB pop %r15
 880:	32 2e                	xor    (%rsi),%ch
 882:	32 2e                	xor    (%rsi),%ch
 884:	35 00 43 58 58       	xor    $0x58584300,%eax
 889:	41                   	rex.B
 88a:	42                   	rex.X
 88b:	49 5f                	rex.WB pop %r15
 88d:	31 2e                	xor    %ebp,(%rsi)
 88f:	33 00                	xor    (%rax),%eax
 891:	43 58                	rex.XB pop %r8
 893:	58                   	pop    %rax
 894:	41                   	rex.B
 895:	42                   	rex.X
 896:	49 5f                	rex.WB pop %r15
 898:	31 2e                	xor    %ebp,(%rsi)
 89a:	33 2e                	xor    (%rsi),%ebp
 89c:	39 00                	cmp    %eax,(%rax)
 89e:	47                   	rex.RXB
 89f:	4c                   	rex.WR
 8a0:	49                   	rex.WB
 8a1:	42                   	rex.X
 8a2:	43 58                	rex.XB pop %r8
 8a4:	58                   	pop    %rax
 8a5:	5f                   	pop    %rdi
 8a6:	33 2e                	xor    (%rsi),%ebp
 8a8:	34 00                	xor    $0x0,%al
 8aa:	47                   	rex.RXB
 8ab:	4c                   	rex.WR
 8ac:	49                   	rex.WB
 8ad:	42                   	rex.X
 8ae:	43 58                	rex.XB pop %r8
 8b0:	58                   	pop    %rax
 8b1:	5f                   	pop    %rdi
 8b2:	33 2e                	xor    (%rsi),%ebp
 8b4:	34 2e                	xor    $0x2e,%al
 8b6:	39 00                	cmp    %eax,(%rax)
 8b8:	47                   	rex.RXB
 8b9:	4c                   	rex.WR
 8ba:	49                   	rex.WB
 8bb:	42                   	rex.X
 8bc:	43 58                	rex.XB pop %r8
 8be:	58                   	pop    %rax
 8bf:	5f                   	pop    %rdi
 8c0:	33 2e                	xor    (%rsi),%ebp
 8c2:	34 2e                	xor    $0x2e,%al
 8c4:	32 31                	xor    (%rcx),%dh
	...

Disassembly of section .gnu.version:

00000000000008c8 <.gnu.version>:
 8c8:	00 00                	add    %al,(%rax)
 8ca:	02 00                	add    (%rax),%al
 8cc:	03 00                	add    (%rax),%eax
 8ce:	04 00                	add    $0x0,%al
 8d0:	05 00 06 00 03       	add    $0x3000600,%eax
 8d5:	00 04 00             	add    %al,(%rax,%rax,1)
 8d8:	05 00 07 00 04       	add    $0x4000700,%eax
 8dd:	00 02                	add    %al,(%rdx)
 8df:	00 02                	add    %al,(%rdx)
 8e1:	00 05 00 08 00 00    	add    %al,0x800(%rip)        # 10e7 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt+0x7>
 8e7:	00 09                	add    %cl,(%rcx)
 8e9:	00 02                	add    %al,(%rdx)
 8eb:	00 03                	add    %al,(%rbx)
 8ed:	00 00                	add    %al,(%rax)
 8ef:	00 00                	add    %al,(%rax)
 8f1:	00 05 00 03 00 05    	add    %al,0x5000300(%rip)        # 5000bf7 <_end+0x4ffca1f>
	...

Disassembly of section .gnu.version_r:

00000000000008f8 <.gnu.version_r>:
 8f8:	01 00                	add    %eax,(%rax)
 8fa:	01 00                	add    %eax,(%rax)
 8fc:	df 02                	filds  (%rdx)
 8fe:	00 00                	add    %al,(%rax)
 900:	10 00                	adc    %al,(%rax)
 902:	00 00                	add    %al,(%rax)
 904:	20 00                	and    %al,(%rax)
 906:	00 00                	add    %al,(%rax)
 908:	50                   	push   %rax
 909:	26 79 0b             	es jns 917 <_init-0x6e9>
 90c:	00 00                	add    %al,(%rax)
 90e:	09 00                	or     %eax,(%rax)
 910:	f7 02 00 00 00 00    	testl  $0x0,(%rdx)
 916:	00 00                	add    %al,(%rax)
 918:	01 00                	add    %eax,(%rax)
 91a:	02 00                	add    (%rax),%al
 91c:	ed                   	in     (%dx),%eax
 91d:	02 00                	add    (%rax),%al
 91f:	00 10                	add    %dl,(%rax)
 921:	00 00                	add    %al,(%rax)
 923:	00 30                	add    %dh,(%rax)
 925:	00 00                	add    %al,(%rax)
 927:	00 94 91 96 06 00 00 	add    %dl,0x696(%rcx,%rdx,4)
 92e:	06                   	(bad)  
 92f:	00 ff                	add    %bh,%bh
 931:	02 00                	add    (%rax),%al
 933:	00 10                	add    %dl,(%rax)
 935:	00 00                	add    %al,(%rax)
 937:	00 75 1a             	add    %dh,0x1a(%rbp)
 93a:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 940:	0a 03                	or     (%rbx),%al
 942:	00 00                	add    %al,(%rax)
 944:	00 00                	add    %al,(%rax)
 946:	00 00                	add    %al,(%rax)
 948:	01 00                	add    %eax,(%rax)
 94a:	05 00 d0 02 00       	add    $0x2d000,%eax
 94f:	00 10                	add    %dl,(%rax)
 951:	00 00                	add    %al,(%rax)
 953:	00 00                	add    %al,(%rax)
 955:	00 00                	add    %al,(%rax)
 957:	00 d3                	add    %dl,%bl
 959:	af                   	scas   %es:(%rdi),%eax
 95a:	6b 05 00 00 08 00 16 	imul   $0x16,0x80000(%rip),%eax        # 80961 <_end+0x7c789>
 961:	03 00                	add    (%rax),%eax
 963:	00 10                	add    %dl,(%rax)
 965:	00 00                	add    %al,(%rax)
 967:	00 79 d1             	add    %bh,-0x2f(%rcx)
 96a:	af                   	scas   %es:(%rdi),%eax
 96b:	0b 00                	or     (%rax),%eax
 96d:	00 07                	add    %al,(%rdi)
 96f:	00 21                	add    %ah,(%rcx)
 971:	03 00                	add    (%rax),%eax
 973:	00 10                	add    %dl,(%rax)
 975:	00 00                	add    %al,(%rax)
 977:	00 74 29 92          	add    %dh,-0x6e(%rcx,%rbp,1)
 97b:	08 00                	or     %al,(%rax)
 97d:	00 05 00 2e 03 00    	add    %al,0x32e00(%rip)        # 33783 <_end+0x2f5ab>
 983:	00 10                	add    %dl,(%rax)
 985:	00 00                	add    %al,(%rax)
 987:	00 89 7f 29 02 00    	add    %cl,0x2297f(%rcx)
 98d:	00 04 00             	add    %al,(%rax,%rax,1)
 990:	3a 03                	cmp    (%rbx),%al
 992:	00 00                	add    %al,(%rax)
 994:	10 00                	adc    %al,(%rax)
 996:	00 00                	add    %al,(%rax)
 998:	71 f8                	jno    992 <_init-0x66e>
 99a:	97                   	xchg   %eax,%edi
 99b:	02 00                	add    (%rax),%al
 99d:	00 02                	add    %al,(%rdx)
 99f:	00 48 03             	add    %cl,0x3(%rax)
 9a2:	00 00                	add    %al,(%rax)
 9a4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000009a8 <.rela.dyn>:
 9a8:	b8 3d 00 00 00       	mov    $0x3d,%eax
 9ad:	00 00                	add    %al,(%rax)
 9af:	00 08                	add    %cl,(%rax)
	...
 9b9:	19 00                	sbb    %eax,(%rax)
 9bb:	00 00                	add    %al,(%rax)
 9bd:	00 00                	add    %al,(%rax)
 9bf:	00 c0                	add    %al,%al
 9c1:	3d 00 00 00 00       	cmp    $0x0,%eax
 9c6:	00 00                	add    %al,(%rax)
 9c8:	08 00                	or     %al,(%rax)
 9ca:	00 00                	add    %al,(%rax)
 9cc:	00 00                	add    %al,(%rax)
 9ce:	00 00                	add    %al,(%rax)
 9d0:	f0 17                	lock (bad) 
 9d2:	00 00                	add    %al,(%rax)
 9d4:	00 00                	add    %al,(%rax)
 9d6:	00 00                	add    %al,(%rax)
 9d8:	c8 3d 00 00          	enterq $0x3d,$0x0
 9dc:	00 00                	add    %al,(%rax)
 9de:	00 00                	add    %al,(%rax)
 9e0:	08 00                	or     %al,(%rax)
 9e2:	00 00                	add    %al,(%rax)
 9e4:	00 00                	add    %al,(%rax)
 9e6:	00 00                	add    %al,(%rax)
 9e8:	c0 18 00             	rcrb   $0x0,(%rax)
 9eb:	00 00                	add    %al,(%rax)
 9ed:	00 00                	add    %al,(%rax)
 9ef:	00 98 40 00 00 00    	add    %bl,0x40(%rax)
 9f5:	00 00                	add    %al,(%rax)
 9f7:	00 08                	add    %cl,(%rax)
 9f9:	00 00                	add    %al,(%rax)
 9fb:	00 00                	add    %al,(%rax)
 9fd:	00 00                	add    %al,(%rax)
 9ff:	00 98 40 00 00 00    	add    %bl,0x40(%rax)
 a05:	00 00                	add    %al,(%rax)
 a07:	00 d0                	add    %dl,%al
 a09:	3f                   	(bad)  
 a0a:	00 00                	add    %al,(%rax)
 a0c:	00 00                	add    %al,(%rax)
 a0e:	00 00                	add    %al,(%rax)
 a10:	06                   	(bad)  
 a11:	00 00                	add    %al,(%rax)
 a13:	00 16                	add    %dl,(%rsi)
	...
 a1d:	00 00                	add    %al,(%rax)
 a1f:	00 d8                	add    %bl,%al
 a21:	3f                   	(bad)  
 a22:	00 00                	add    %al,(%rax)
 a24:	00 00                	add    %al,(%rax)
 a26:	00 00                	add    %al,(%rax)
 a28:	06                   	(bad)  
 a29:	00 00                	add    %al,(%rax)
 a2b:	00 0f                	add    %cl,(%rdi)
	...
 a35:	00 00                	add    %al,(%rax)
 a37:	00 e0                	add    %ah,%al
 a39:	3f                   	(bad)  
 a3a:	00 00                	add    %al,(%rax)
 a3c:	00 00                	add    %al,(%rax)
 a3e:	00 00                	add    %al,(%rax)
 a40:	06                   	(bad)  
 a41:	00 00                	add    %al,(%rax)
 a43:	00 12                	add    %dl,(%rdx)
	...
 a4d:	00 00                	add    %al,(%rax)
 a4f:	00 e8                	add    %ch,%al
 a51:	3f                   	(bad)  
 a52:	00 00                	add    %al,(%rax)
 a54:	00 00                	add    %al,(%rax)
 a56:	00 00                	add    %al,(%rax)
 a58:	06                   	(bad)  
 a59:	00 00                	add    %al,(%rax)
 a5b:	00 13                	add    %dl,(%rbx)
	...
 a65:	00 00                	add    %al,(%rax)
 a67:	00 f0                	add    %dh,%al
 a69:	3f                   	(bad)  
 a6a:	00 00                	add    %al,(%rax)
 a6c:	00 00                	add    %al,(%rax)
 a6e:	00 00                	add    %al,(%rax)
 a70:	06                   	(bad)  
 a71:	00 00                	add    %al,(%rax)
 a73:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
 a7e:	00 00                	add    %al,(%rax)
 a80:	f8                   	clc    
 a81:	3f                   	(bad)  
 a82:	00 00                	add    %al,(%rax)
 a84:	00 00                	add    %al,(%rax)
 a86:	00 00                	add    %al,(%rax)
 a88:	06                   	(bad)  
 a89:	00 00                	add    %al,(%rax)
 a8b:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # a91 <_init-0x56f>
 a91:	00 00                	add    %al,(%rax)
 a93:	00 00                	add    %al,(%rax)
 a95:	00 00                	add    %al,(%rax)
 a97:	00 a0 40 00 00 00    	add    %ah,0x40(%rax)
 a9d:	00 00                	add    %al,(%rax)
 a9f:	00 01                	add    %al,(%rcx)
 aa1:	00 00                	add    %al,(%rax)
 aa3:	00 0e                	add    %cl,(%rsi)
	...
 aad:	00 00                	add    %al,(%rax)
 aaf:	00 c0                	add    %al,%al
 ab1:	40 00 00             	add    %al,(%rax)
 ab4:	00 00                	add    %al,(%rax)
 ab6:	00 00                	add    %al,(%rax)
 ab8:	05 00 00 00 17       	add    $0x17000000,%eax
	...

Disassembly of section .rela.plt:

0000000000000ac8 <.rela.plt>:
 ac8:	18 40 00             	sbb    %al,0x0(%rax)
 acb:	00 00                	add    %al,(%rax)
 acd:	00 00                	add    %al,(%rax)
 acf:	00 07                	add    %al,(%rdi)
 ad1:	00 00                	add    %al,(%rax)
 ad3:	00 01                	add    %al,(%rcx)
	...
 add:	00 00                	add    %al,(%rax)
 adf:	00 20                	add    %ah,(%rax)
 ae1:	40 00 00             	add    %al,(%rax)
 ae4:	00 00                	add    %al,(%rax)
 ae6:	00 00                	add    %al,(%rax)
 ae8:	07                   	(bad)  
 ae9:	00 00                	add    %al,(%rax)
 aeb:	00 02                	add    %al,(%rdx)
	...
 af5:	00 00                	add    %al,(%rax)
 af7:	00 28                	add    %ch,(%rax)
 af9:	40 00 00             	add    %al,(%rax)
 afc:	00 00                	add    %al,(%rax)
 afe:	00 00                	add    %al,(%rax)
 b00:	07                   	(bad)  
 b01:	00 00                	add    %al,(%rax)
 b03:	00 03                	add    %al,(%rbx)
	...
 b0d:	00 00                	add    %al,(%rax)
 b0f:	00 30                	add    %dh,(%rax)
 b11:	40 00 00             	add    %al,(%rax)
 b14:	00 00                	add    %al,(%rax)
 b16:	00 00                	add    %al,(%rax)
 b18:	07                   	(bad)  
 b19:	00 00                	add    %al,(%rax)
 b1b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 b26:	00 00                	add    %al,(%rax)
 b28:	38 40 00             	cmp    %al,0x0(%rax)
 b2b:	00 00                	add    %al,(%rax)
 b2d:	00 00                	add    %al,(%rax)
 b2f:	00 07                	add    %al,(%rdi)
 b31:	00 00                	add    %al,(%rax)
 b33:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # b39 <_init-0x4c7>
 b39:	00 00                	add    %al,(%rax)
 b3b:	00 00                	add    %al,(%rax)
 b3d:	00 00                	add    %al,(%rax)
 b3f:	00 40 40             	add    %al,0x40(%rax)
 b42:	00 00                	add    %al,(%rax)
 b44:	00 00                	add    %al,(%rax)
 b46:	00 00                	add    %al,(%rax)
 b48:	07                   	(bad)  
 b49:	00 00                	add    %al,(%rax)
 b4b:	00 06                	add    %al,(%rsi)
	...
 b55:	00 00                	add    %al,(%rax)
 b57:	00 48 40             	add    %cl,0x40(%rax)
 b5a:	00 00                	add    %al,(%rax)
 b5c:	00 00                	add    %al,(%rax)
 b5e:	00 00                	add    %al,(%rax)
 b60:	07                   	(bad)  
 b61:	00 00                	add    %al,(%rax)
 b63:	00 07                	add    %al,(%rdi)
	...
 b6d:	00 00                	add    %al,(%rax)
 b6f:	00 50 40             	add    %dl,0x40(%rax)
 b72:	00 00                	add    %al,(%rax)
 b74:	00 00                	add    %al,(%rax)
 b76:	00 00                	add    %al,(%rax)
 b78:	07                   	(bad)  
 b79:	00 00                	add    %al,(%rax)
 b7b:	00 08                	add    %cl,(%rax)
	...
 b85:	00 00                	add    %al,(%rax)
 b87:	00 58 40             	add    %bl,0x40(%rax)
 b8a:	00 00                	add    %al,(%rax)
 b8c:	00 00                	add    %al,(%rax)
 b8e:	00 00                	add    %al,(%rax)
 b90:	07                   	(bad)  
 b91:	00 00                	add    %al,(%rax)
 b93:	00 09                	add    %cl,(%rcx)
	...
 b9d:	00 00                	add    %al,(%rax)
 b9f:	00 60 40             	add    %ah,0x40(%rax)
 ba2:	00 00                	add    %al,(%rax)
 ba4:	00 00                	add    %al,(%rax)
 ba6:	00 00                	add    %al,(%rax)
 ba8:	07                   	(bad)  
 ba9:	00 00                	add    %al,(%rax)
 bab:	00 0a                	add    %cl,(%rdx)
	...
 bb5:	00 00                	add    %al,(%rax)
 bb7:	00 68 40             	add    %ch,0x40(%rax)
 bba:	00 00                	add    %al,(%rax)
 bbc:	00 00                	add    %al,(%rax)
 bbe:	00 00                	add    %al,(%rax)
 bc0:	07                   	(bad)  
 bc1:	00 00                	add    %al,(%rax)
 bc3:	00 0b                	add    %cl,(%rbx)
	...
 bcd:	00 00                	add    %al,(%rax)
 bcf:	00 70 40             	add    %dh,0x40(%rax)
 bd2:	00 00                	add    %al,(%rax)
 bd4:	00 00                	add    %al,(%rax)
 bd6:	00 00                	add    %al,(%rax)
 bd8:	07                   	(bad)  
 bd9:	00 00                	add    %al,(%rax)
 bdb:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 be6:	00 00                	add    %al,(%rax)
 be8:	78 40                	js     c2a <_init-0x3d6>
 bea:	00 00                	add    %al,(%rax)
 bec:	00 00                	add    %al,(%rax)
 bee:	00 00                	add    %al,(%rax)
 bf0:	07                   	(bad)  
 bf1:	00 00                	add    %al,(%rax)
 bf3:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # bf9 <_init-0x407>
 bf9:	00 00                	add    %al,(%rax)
 bfb:	00 00                	add    %al,(%rax)
 bfd:	00 00                	add    %al,(%rax)
 bff:	00 80 40 00 00 00    	add    %al,0x40(%rax)
 c05:	00 00                	add    %al,(%rax)
 c07:	00 07                	add    %al,(%rdi)
 c09:	00 00                	add    %al,(%rax)
 c0b:	00 10                	add    %dl,(%rax)
	...
 c15:	00 00                	add    %al,(%rax)
 c17:	00 88 40 00 00 00    	add    %cl,0x40(%rax)
 c1d:	00 00                	add    %al,(%rax)
 c1f:	00 07                	add    %al,(%rdi)
 c21:	00 00                	add    %al,(%rax)
 c23:	00 11                	add    %dl,(%rcx)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@GLIBCXX_3.4.21>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <clock@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <clock@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <_ZNSo9_M_insertImEERSoT_@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <_ZSt19__throw_logic_errorPKc@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <memcpy@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <memcpy@GLIBC_2.14>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <__cxa_atexit@plt>:
    1080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4040 <__cxa_atexit@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <_ZNSo9_M_insertIlEERSoT_@plt>:
    1090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4048 <_ZNSo9_M_insertIlEERSoT_@GLIBCXX_3.4.9>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

00000000000010a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <.plt>

00000000000010b0 <_ZdlPvm@plt>:
    10b0:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 4058 <_ZdlPvm@CXXABI_1.3.9>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <.plt>

00000000000010c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    10c0:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 4060 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <.plt>

00000000000010d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>:
    10d0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 4068 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@GLIBCXX_3.4.21>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <.plt>

00000000000010e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>:
    10e0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 4070 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@GLIBCXX_3.4.21>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <.plt>

00000000000010f0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10f0:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 4078 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <.plt>

0000000000001100 <_Unwind_Resume@plt>:
    1100:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 4080 <_Unwind_Resume@GCC_3.0>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <.plt>

0000000000001110 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
    1110:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 4088 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001120 <__cxa_finalize@plt>:
    1120:	ff 25 aa 2e 00 00    	jmpq   *0x2eaa(%rip)        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1126:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001130 <main.cold>:
    1130:	4c 89 ff             	mov    %r15,%rdi
    1133:	e8 a8 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    1138:	4c 89 f7             	mov    %r14,%rdi
    113b:	e8 a0 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    1140:	4c 89 ef             	mov    %r13,%rdi
    1143:	e8 98 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    1148:	4c 89 e7             	mov    %r12,%rdi
    114b:	e8 90 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    1150:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
    1155:	e8 86 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    115a:	48 89 ef             	mov    %rbp,%rdi
    115d:	48 89 dd             	mov    %rbx,%rbp
    1160:	e8 7b ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    1165:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    116a:	e8 71 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    116f:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    1174:	e8 67 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    1179:	48 89 ef             	mov    %rbp,%rdi
    117c:	e8 7f ff ff ff       	callq  1100 <_Unwind_Resume@plt>
    1181:	4c 89 ff             	mov    %r15,%rdi
    1184:	e8 57 ff ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    1189:	eb b5                	jmp    1140 <main.cold+0x10>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <main>:
    1190:	41 57                	push   %r15
    1192:	31 d2                	xor    %edx,%edx
    1194:	41 56                	push   %r14
    1196:	41 55                	push   %r13
    1198:	41 54                	push   %r12
    119a:	55                   	push   %rbp
    119b:	53                   	push   %rbx
    119c:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
    11a3:	4c 8d bc 24 50 01 00 	lea    0x150(%rsp),%r15
    11aa:	00 
    11ab:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
    11b0:	48 c7 84 24 50 01 00 	movq   $0x58,0x150(%rsp)
    11b7:	00 58 00 00 00 
    11bc:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    11c3:	00 
    11c4:	4c 89 fe             	mov    %r15,%rsi
    11c7:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
    11cc:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    11d1:	e8 3a ff ff ff       	callq  1110 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
    11d6:	48 8b 94 24 50 01 00 	mov    0x150(%rsp),%rdx
    11dd:	00 
    11de:	66 0f 6f 05 da 0e 00 	movdqa 0xeda(%rip),%xmm0        # 20c0 <_IO_stdin_used+0xc0>
    11e5:	00 
    11e6:	48 b9 65 72 74 20 79 	movabs $0xa756f7920747265,%rcx
    11ed:	6f 75 0a 
    11f0:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    11f5:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
    11fc:	00 
    11fd:	0f 11 00             	movups %xmm0,(%rax)
    1200:	66 0f 6f 05 c8 0e 00 	movdqa 0xec8(%rip),%xmm0        # 20d0 <_IO_stdin_used+0xd0>
    1207:	00 
    1208:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
    120d:	48 89 48 50          	mov    %rcx,0x50(%rax)
    1211:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    1215:	66 0f 6f 05 c3 0e 00 	movdqa 0xec3(%rip),%xmm0        # 20e0 <_IO_stdin_used+0xe0>
    121c:	00 
    121d:	c7 44 24 44 90 01 00 	movl   $0x190,0x44(%rsp)
    1224:	00 
    1225:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    1229:	66 0f 6f 05 bf 0e 00 	movdqa 0xebf(%rip),%xmm0        # 20f0 <_IO_stdin_used+0xf0>
    1230:	00 
    1231:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    1235:	66 0f 6f 05 c3 0e 00 	movdqa 0xec3(%rip),%xmm0        # 2100 <_IO_stdin_used+0x100>
    123c:	00 
    123d:	0f 11 40 40          	movups %xmm0,0x40(%rax)
    1241:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
    1248:	00 
    1249:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    124e:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1252:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
    1259:	00 
    125a:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    125f:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
    1266:	00 
    1267:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    126c:	48 8d 44 24 6f       	lea    0x6f(%rsp),%rax
    1271:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1276:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    127d:	00 00 00 
    1280:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1285:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    128a:	31 d2                	xor    %edx,%edx
    128c:	be 14 00 00 00       	mov    $0x14,%esi
    1291:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    1298:	00 
    1299:	e8 32 fe ff ff       	callq  10d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
    129e:	ba 06 00 00 00       	mov    $0x6,%edx
    12a3:	48 8d 35 88 0d 00 00 	lea    0xd88(%rip),%rsi        # 2032 <_IO_stdin_used+0x32>
    12aa:	48 8d 3d 0f 2e 00 00 	lea    0x2e0f(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    12b1:	e8 0a fe ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    12b6:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
    12bb:	48 8d 3d fe 2d 00 00 	lea    0x2dfe(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    12c2:	e8 89 fd ff ff       	callq  1050 <_ZNSo9_M_insertImEERSoT_@plt>
    12c7:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
    12cc:	48 89 c7             	mov    %rax,%rdi
    12cf:	ba 01 00 00 00       	mov    $0x1,%edx
    12d4:	c6 44 24 6f 0a       	movb   $0xa,0x6f(%rsp)
    12d9:	e8 e2 fd ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    12de:	48 8d ac 24 b0 00 00 	lea    0xb0(%rsp),%rbp
    12e5:	00 
    12e6:	48 8d 15 64 0d 00 00 	lea    0xd64(%rip),%rdx        # 2051 <_IO_stdin_used+0x51>
    12ed:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
    12f4:	00 
    12f5:	48 8d 72 e8          	lea    -0x18(%rdx),%rsi
    12f9:	48 89 ef             	mov    %rbp,%rdi
    12fc:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1301:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
    1308:	00 
    1309:	e8 02 06 00 00       	callq  1910 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0>
    130e:	ba 09 00 00 00       	mov    $0x9,%edx
    1313:	48 8d 35 38 0d 00 00 	lea    0xd38(%rip),%rsi        # 2052 <_IO_stdin_used+0x52>
    131a:	48 8d 3d 9f 2d 00 00 	lea    0x2d9f(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1321:	e8 9a fd ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1326:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    132d:	00 
    132e:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
    1335:	00 
    1336:	48 8d 3d 83 2d 00 00 	lea    0x2d83(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    133d:	e8 7e fd ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1342:	48 8d 15 2c 0d 00 00 	lea    0xd2c(%rip),%rdx        # 2075 <_IO_stdin_used+0x75>
    1349:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
    1350:	00 
    1351:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
    1358:	00 
    1359:	48 8d 72 e7          	lea    -0x19(%rdx),%rsi
    135d:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    1362:	48 89 7c 24 50       	mov    %rdi,0x50(%rsp)
    1367:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
    136e:	00 
    136f:	e8 9c 05 00 00       	callq  1910 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0>
    1374:	ba 09 00 00 00       	mov    $0x9,%edx
    1379:	48 8d 35 f6 0c 00 00 	lea    0xcf6(%rip),%rsi        # 2076 <_IO_stdin_used+0x76>
    1380:	48 8d 3d 39 2d 00 00 	lea    0x2d39(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1387:	e8 34 fd ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    138c:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
    1393:	00 
    1394:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
    139b:	00 
    139c:	48 8d 3d 1d 2d 00 00 	lea    0x2d1d(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    13a3:	e8 18 fd ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    13a8:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
    13af:	00 
    13b0:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
    13b7:	00 
    13b8:	48 89 ef             	mov    %rbp,%rdi
    13bb:	e8 70 fc ff ff       	callq  1030 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
    13c0:	ba 0a 00 00 00       	mov    $0xa,%edx
    13c5:	48 8d 35 b4 0c 00 00 	lea    0xcb4(%rip),%rsi        # 2080 <_IO_stdin_used+0x80>
    13cc:	48 8d 3d ed 2c 00 00 	lea    0x2ced(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    13d3:	e8 e8 fc ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    13d8:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    13df:	00 
    13e0:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
    13e7:	00 
    13e8:	48 8d 3d d1 2c 00 00 	lea    0x2cd1(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    13ef:	e8 cc fc ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    13f4:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
    13fb:	00 
    13fc:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
    1403:	00 
    1404:	4c 8d a4 24 f0 00 00 	lea    0xf0(%rsp),%r12
    140b:	00 
    140c:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
    1413:	00 
    1414:	4c 89 e7             	mov    %r12,%rdi
    1417:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    141c:	48 01 f2             	add    %rsi,%rdx
    141f:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
    1426:	00 
    1427:	e8 84 05 00 00       	callq  19b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0>
    142c:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    1431:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    1436:	4c 89 e7             	mov    %r12,%rdi
    1439:	e8 f2 fb ff ff       	callq  1030 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
    143e:	ba 09 00 00 00       	mov    $0x9,%edx
    1443:	48 8d 35 41 0c 00 00 	lea    0xc41(%rip),%rsi        # 208b <_IO_stdin_used+0x8b>
    144a:	48 8d 3d 6f 2c 00 00 	lea    0x2c6f(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1451:	e8 6a fc ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1456:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
    145d:	00 
    145e:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
    1465:	00 
    1466:	48 8d 3d 53 2c 00 00 	lea    0x2c53(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    146d:	e8 4e fc ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1472:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    1477:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    147c:	4c 8d ac 24 10 01 00 	lea    0x110(%rsp),%r13
    1483:	00 
    1484:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
    148b:	00 
    148c:	4c 89 ef             	mov    %r13,%rdi
    148f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1494:	48 01 f2             	add    %rsi,%rdx
    1497:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
    149e:	00 
    149f:	e8 0c 05 00 00       	callq  19b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0>
    14a4:	ba 09 00 00 00       	mov    $0x9,%edx
    14a9:	48 8d 35 e5 0b 00 00 	lea    0xbe5(%rip),%rsi        # 2095 <_IO_stdin_used+0x95>
    14b0:	48 8d 3d 09 2c 00 00 	lea    0x2c09(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    14b7:	e8 04 fc ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    14bc:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    14c3:	00 
    14c4:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
    14cb:	00 
    14cc:	48 8d 3d ed 2b 00 00 	lea    0x2bed(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    14d3:	e8 e8 fb ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    14d8:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
    14df:	00 
    14e0:	b8 0a 00 00 00       	mov    $0xa,%eax
    14e5:	4c 89 ff             	mov    %r15,%rdi
    14e8:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
    14ef:	00 
    14f0:	48 8d 9c 24 60 01 00 	lea    0x160(%rsp),%rbx
    14f7:	00 
    14f8:	48 83 fa 0a          	cmp    $0xa,%rdx
    14fc:	48 89 9c 24 50 01 00 	mov    %rbx,0x150(%rsp)
    1503:	00 
    1504:	48 0f 47 d0          	cmova  %rax,%rdx
    1508:	48 01 f2             	add    %rsi,%rdx
    150b:	e8 00 04 00 00       	callq  1910 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0>
    1510:	48 8b 94 24 58 01 00 	mov    0x158(%rsp),%rdx
    1517:	00 
    1518:	48 8b b4 24 50 01 00 	mov    0x150(%rsp),%rsi
    151f:	00 
    1520:	4c 89 ef             	mov    %r13,%rdi
    1523:	e8 08 fb ff ff       	callq  1030 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
    1528:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
    152f:	00 
    1530:	48 39 df             	cmp    %rbx,%rdi
    1533:	74 11                	je     1546 <main+0x3b6>
    1535:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
    153c:	00 
    153d:	48 8d 70 01          	lea    0x1(%rax),%rsi
    1541:	e8 6a fb ff ff       	callq  10b0 <_ZdlPvm@plt>
    1546:	ba 09 00 00 00       	mov    $0x9,%edx
    154b:	48 8d 35 43 0b 00 00 	lea    0xb43(%rip),%rsi        # 2095 <_IO_stdin_used+0x95>
    1552:	48 8d 3d 67 2b 00 00 	lea    0x2b67(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1559:	e8 62 fb ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    155e:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    1565:	00 
    1566:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
    156d:	00 
    156e:	48 8d 3d 4b 2b 00 00 	lea    0x2b4b(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1575:	e8 46 fb ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    157a:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
    1581:	00 
    1582:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
    1589:	00 
    158a:	4c 8d b4 24 30 01 00 	lea    0x130(%rsp),%r14
    1591:	00 
    1592:	48 8d 84 24 40 01 00 	lea    0x140(%rsp),%rax
    1599:	00 
    159a:	4c 89 f7             	mov    %r14,%rdi
    159d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    15a2:	48 01 f2             	add    %rsi,%rdx
    15a5:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
    15ac:	00 
    15ad:	e8 fe 03 00 00       	callq  19b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0>
    15b2:	ba 09 00 00 00       	mov    $0x9,%edx
    15b7:	48 8d 35 e1 0a 00 00 	lea    0xae1(%rip),%rsi        # 209f <_IO_stdin_used+0x9f>
    15be:	48 8d 3d fb 2a 00 00 	lea    0x2afb(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    15c5:	e8 f6 fa ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    15ca:	48 8b 94 24 38 01 00 	mov    0x138(%rsp),%rdx
    15d1:	00 
    15d2:	48 8b b4 24 30 01 00 	mov    0x130(%rsp),%rsi
    15d9:	00 
    15da:	48 8d 3d df 2a 00 00 	lea    0x2adf(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    15e1:	e8 da fa ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    15e6:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    15eb:	b8 14 00 00 00       	mov    $0x14,%eax
    15f0:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    15f5:	4c 89 ff             	mov    %r15,%rdi
    15f8:	48 89 9c 24 50 01 00 	mov    %rbx,0x150(%rsp)
    15ff:	00 
    1600:	48 83 fa 14          	cmp    $0x14,%rdx
    1604:	48 0f 47 d0          	cmova  %rax,%rdx
    1608:	48 01 f2             	add    %rsi,%rdx
    160b:	e8 00 03 00 00       	callq  1910 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0>
    1610:	48 8b 94 24 58 01 00 	mov    0x158(%rsp),%rdx
    1617:	00 
    1618:	48 8b b4 24 50 01 00 	mov    0x150(%rsp),%rsi
    161f:	00 
    1620:	4c 89 f7             	mov    %r14,%rdi
    1623:	e8 08 fa ff ff       	callq  1030 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
    1628:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
    162f:	00 
    1630:	48 39 df             	cmp    %rbx,%rdi
    1633:	74 11                	je     1646 <main+0x4b6>
    1635:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
    163c:	00 
    163d:	48 8d 70 01          	lea    0x1(%rax),%rsi
    1641:	e8 6a fa ff ff       	callq  10b0 <_ZdlPvm@plt>
    1646:	ba 09 00 00 00       	mov    $0x9,%edx
    164b:	48 8d 35 4d 0a 00 00 	lea    0xa4d(%rip),%rsi        # 209f <_IO_stdin_used+0x9f>
    1652:	48 8d 3d 67 2a 00 00 	lea    0x2a67(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1659:	e8 62 fa ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    165e:	48 8b 94 24 38 01 00 	mov    0x138(%rsp),%rdx
    1665:	00 
    1666:	48 8b b4 24 30 01 00 	mov    0x130(%rsp),%rsi
    166d:	00 
    166e:	48 8d 3d 4b 2a 00 00 	lea    0x2a4b(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1675:	e8 46 fa ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    167a:	48 8b bc 24 30 01 00 	mov    0x130(%rsp),%rdi
    1681:	00 
    1682:	48 3b 7c 24 20       	cmp    0x20(%rsp),%rdi
    1687:	74 11                	je     169a <main+0x50a>
    1689:	48 8b 84 24 40 01 00 	mov    0x140(%rsp),%rax
    1690:	00 
    1691:	48 8d 70 01          	lea    0x1(%rax),%rsi
    1695:	e8 16 fa ff ff       	callq  10b0 <_ZdlPvm@plt>
    169a:	48 8b bc 24 10 01 00 	mov    0x110(%rsp),%rdi
    16a1:	00 
    16a2:	48 3b 7c 24 18       	cmp    0x18(%rsp),%rdi
    16a7:	74 11                	je     16ba <main+0x52a>
    16a9:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
    16b0:	00 
    16b1:	48 8d 70 01          	lea    0x1(%rax),%rsi
    16b5:	e8 f6 f9 ff ff       	callq  10b0 <_ZdlPvm@plt>
    16ba:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
    16c1:	00 
    16c2:	48 3b 7c 24 10       	cmp    0x10(%rsp),%rdi
    16c7:	74 11                	je     16da <main+0x54a>
    16c9:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
    16d0:	00 
    16d1:	48 8d 70 01          	lea    0x1(%rax),%rsi
    16d5:	e8 d6 f9 ff ff       	callq  10b0 <_ZdlPvm@plt>
    16da:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
    16e1:	00 
    16e2:	48 3b 7c 24 30       	cmp    0x30(%rsp),%rdi
    16e7:	74 11                	je     16fa <main+0x56a>
    16e9:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
    16f0:	00 
    16f1:	48 8d 70 01          	lea    0x1(%rax),%rsi
    16f5:	e8 b6 f9 ff ff       	callq  10b0 <_ZdlPvm@plt>
    16fa:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
    1701:	00 
    1702:	48 3b 7c 24 28       	cmp    0x28(%rsp),%rdi
    1707:	74 11                	je     171a <main+0x58a>
    1709:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    1710:	00 
    1711:	48 8d 70 01          	lea    0x1(%rax),%rsi
    1715:	e8 96 f9 ff ff       	callq  10b0 <_ZdlPvm@plt>
    171a:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
    1721:	00 
    1722:	48 3b 7c 24 08       	cmp    0x8(%rsp),%rdi
    1727:	74 11                	je     173a <main+0x5aa>
    1729:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    1730:	00 
    1731:	48 8d 70 01          	lea    0x1(%rax),%rsi
    1735:	e8 76 f9 ff ff       	callq  10b0 <_ZdlPvm@plt>
    173a:	83 6c 24 44 01       	subl   $0x1,0x44(%rsp)
    173f:	0f 85 3b fb ff ff    	jne    1280 <main+0xf0>
    1745:	e8 f6 f8 ff ff       	callq  1040 <clock@plt>
    174a:	48 8d 35 58 09 00 00 	lea    0x958(%rip),%rsi        # 20a9 <_IO_stdin_used+0xa9>
    1751:	48 8d 3d 68 29 00 00 	lea    0x2968(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1758:	48 89 c5             	mov    %rax,%rbp
    175b:	e8 40 f9 ff ff       	callq  10a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1760:	48 89 c7             	mov    %rax,%rdi
    1763:	48 89 ee             	mov    %rbp,%rsi
    1766:	e8 25 f9 ff ff       	callq  1090 <_ZNSo9_M_insertIlEERSoT_@plt>
    176b:	48 89 c7             	mov    %rax,%rdi
    176e:	ba 01 00 00 00       	mov    $0x1,%edx
    1773:	4c 89 fe             	mov    %r15,%rsi
    1776:	c6 84 24 50 01 00 00 	movb   $0xa,0x150(%rsp)
    177d:	0a 
    177e:	e8 3d f9 ff ff       	callq  10c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1783:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    1788:	e8 53 f9 ff ff       	callq  10e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@plt>
    178d:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
    1794:	31 c0                	xor    %eax,%eax
    1796:	5b                   	pop    %rbx
    1797:	5d                   	pop    %rbp
    1798:	41 5c                	pop    %r12
    179a:	41 5d                	pop    %r13
    179c:	41 5e                	pop    %r14
    179e:	41 5f                	pop    %r15
    17a0:	c3                   	retq   
    17a1:	48 89 c5             	mov    %rax,%rbp
    17a4:	e9 c6 f9 ff ff       	jmpq   116f <main.cold+0x3f>
    17a9:	48 89 c3             	mov    %rax,%rbx
    17ac:	e9 7f f9 ff ff       	jmpq   1130 <main.cold>
    17b1:	48 89 c3             	mov    %rax,%rbx
    17b4:	e9 8f f9 ff ff       	jmpq   1148 <main.cold+0x18>
    17b9:	48 89 c3             	mov    %rax,%rbx
    17bc:	e9 c0 f9 ff ff       	jmpq   1181 <main.cold+0x51>
    17c1:	48 89 c3             	mov    %rax,%rbx
    17c4:	e9 91 f9 ff ff       	jmpq   115a <main.cold+0x2a>
    17c9:	48 89 c3             	mov    %rax,%rbx
    17cc:	e9 67 f9 ff ff       	jmpq   1138 <main.cold+0x8>
    17d1:	48 89 c3             	mov    %rax,%rbx
    17d4:	e9 77 f9 ff ff       	jmpq   1150 <main.cold+0x20>
    17d9:	48 89 c3             	mov    %rax,%rbx
    17dc:	e9 5f f9 ff ff       	jmpq   1140 <main.cold+0x10>
    17e1:	48 89 c5             	mov    %rax,%rbp
    17e4:	e9 7c f9 ff ff       	jmpq   1165 <main.cold+0x35>
    17e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000017f0 <_GLOBAL__sub_I_main>:
    17f0:	48 83 ec 08          	sub    $0x8,%rsp
    17f4:	48 8d 3d d6 29 00 00 	lea    0x29d6(%rip),%rdi        # 41d1 <_ZStL8__ioinit>
    17fb:	e8 f0 f8 ff ff       	callq  10f0 <_ZNSt8ios_base4InitC1Ev@plt>
    1800:	48 8b 3d f1 27 00 00 	mov    0x27f1(%rip),%rdi        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1807:	48 83 c4 08          	add    $0x8,%rsp
    180b:	48 8d 15 86 28 00 00 	lea    0x2886(%rip),%rdx        # 4098 <__dso_handle>
    1812:	48 8d 35 b8 29 00 00 	lea    0x29b8(%rip),%rsi        # 41d1 <_ZStL8__ioinit>
    1819:	e9 62 f8 ff ff       	jmpq   1080 <__cxa_atexit@plt>
    181e:	66 90                	xchg   %ax,%ax

0000000000001820 <_start>:
    1820:	31 ed                	xor    %ebp,%ebp
    1822:	49 89 d1             	mov    %rdx,%r9
    1825:	5e                   	pop    %rsi
    1826:	48 89 e2             	mov    %rsp,%rdx
    1829:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    182d:	50                   	push   %rax
    182e:	54                   	push   %rsp
    182f:	4c 8d 05 7a 02 00 00 	lea    0x27a(%rip),%r8        # 1ab0 <__libc_csu_fini>
    1836:	48 8d 0d 13 02 00 00 	lea    0x213(%rip),%rcx        # 1a50 <__libc_csu_init>
    183d:	48 8d 3d 4c f9 ff ff 	lea    -0x6b4(%rip),%rdi        # 1190 <main>
    1844:	ff 15 96 27 00 00    	callq  *0x2796(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    184a:	f4                   	hlt    
    184b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001850 <deregister_tm_clones>:
    1850:	48 8d 3d 51 28 00 00 	lea    0x2851(%rip),%rdi        # 40a8 <__TMC_END__>
    1857:	48 8d 05 4a 28 00 00 	lea    0x284a(%rip),%rax        # 40a8 <__TMC_END__>
    185e:	48 39 f8             	cmp    %rdi,%rax
    1861:	74 15                	je     1878 <deregister_tm_clones+0x28>
    1863:	48 8b 05 6e 27 00 00 	mov    0x276e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    186a:	48 85 c0             	test   %rax,%rax
    186d:	74 09                	je     1878 <deregister_tm_clones+0x28>
    186f:	ff e0                	jmpq   *%rax
    1871:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1878:	c3                   	retq   
    1879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001880 <register_tm_clones>:
    1880:	48 8d 3d 21 28 00 00 	lea    0x2821(%rip),%rdi        # 40a8 <__TMC_END__>
    1887:	48 8d 35 1a 28 00 00 	lea    0x281a(%rip),%rsi        # 40a8 <__TMC_END__>
    188e:	48 29 fe             	sub    %rdi,%rsi
    1891:	48 89 f0             	mov    %rsi,%rax
    1894:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1898:	48 c1 f8 03          	sar    $0x3,%rax
    189c:	48 01 c6             	add    %rax,%rsi
    189f:	48 d1 fe             	sar    %rsi
    18a2:	74 14                	je     18b8 <register_tm_clones+0x38>
    18a4:	48 8b 05 45 27 00 00 	mov    0x2745(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    18ab:	48 85 c0             	test   %rax,%rax
    18ae:	74 08                	je     18b8 <register_tm_clones+0x38>
    18b0:	ff e0                	jmpq   *%rax
    18b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    18b8:	c3                   	retq   
    18b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000018c0 <__do_global_dtors_aux>:
    18c0:	80 3d 09 29 00 00 00 	cmpb   $0x0,0x2909(%rip)        # 41d0 <completed.0>
    18c7:	75 2f                	jne    18f8 <__do_global_dtors_aux+0x38>
    18c9:	55                   	push   %rbp
    18ca:	48 83 3d fe 26 00 00 	cmpq   $0x0,0x26fe(%rip)        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    18d1:	00 
    18d2:	48 89 e5             	mov    %rsp,%rbp
    18d5:	74 0c                	je     18e3 <__do_global_dtors_aux+0x23>
    18d7:	48 8b 3d ba 27 00 00 	mov    0x27ba(%rip),%rdi        # 4098 <__dso_handle>
    18de:	e8 3d f8 ff ff       	callq  1120 <__cxa_finalize@plt>
    18e3:	e8 68 ff ff ff       	callq  1850 <deregister_tm_clones>
    18e8:	c6 05 e1 28 00 00 01 	movb   $0x1,0x28e1(%rip)        # 41d0 <completed.0>
    18ef:	5d                   	pop    %rbp
    18f0:	c3                   	retq   
    18f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18f8:	c3                   	retq   
    18f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001900 <frame_dummy>:
    1900:	e9 7b ff ff ff       	jmpq   1880 <register_tm_clones>
    1905:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    190c:	00 00 00 
    190f:	90                   	nop

0000000000001910 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0>:
    1910:	41 54                	push   %r12
    1912:	49 89 d4             	mov    %rdx,%r12
    1915:	55                   	push   %rbp
    1916:	48 89 f5             	mov    %rsi,%rbp
    1919:	53                   	push   %rbx
    191a:	48 89 fb             	mov    %rdi,%rbx
    191d:	48 83 ec 10          	sub    $0x10,%rsp
    1921:	48 85 d2             	test   %rdx,%rdx
    1924:	74 05                	je     192b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0+0x1b>
    1926:	48 85 f6             	test   %rsi,%rsi
    1929:	74 78                	je     19a3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0+0x93>
    192b:	49 29 ec             	sub    %rbp,%r12
    192e:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    1933:	49 83 fc 0f          	cmp    $0xf,%r12
    1937:	77 37                	ja     1970 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0+0x60>
    1939:	48 8b 3b             	mov    (%rbx),%rdi
    193c:	49 83 fc 01          	cmp    $0x1,%r12
    1940:	75 26                	jne    1968 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0+0x58>
    1942:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
    1946:	88 07                	mov    %al,(%rdi)
    1948:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    194d:	48 8b 3b             	mov    (%rbx),%rdi
    1950:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    1954:	42 c6 04 27 00       	movb   $0x0,(%rdi,%r12,1)
    1959:	48 83 c4 10          	add    $0x10,%rsp
    195d:	5b                   	pop    %rbx
    195e:	5d                   	pop    %rbp
    195f:	41 5c                	pop    %r12
    1961:	c3                   	retq   
    1962:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1968:	4d 85 e4             	test   %r12,%r12
    196b:	74 e3                	je     1950 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0+0x40>
    196d:	eb 1f                	jmp    198e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0+0x7e>
    196f:	90                   	nop
    1970:	48 89 df             	mov    %rbx,%rdi
    1973:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    1978:	31 d2                	xor    %edx,%edx
    197a:	e8 91 f7 ff ff       	callq  1110 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
    197f:	48 89 03             	mov    %rax,(%rbx)
    1982:	48 89 c7             	mov    %rax,%rdi
    1985:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    198a:	48 89 43 10          	mov    %rax,0x10(%rbx)
    198e:	4c 89 e2             	mov    %r12,%rdx
    1991:	48 89 ee             	mov    %rbp,%rsi
    1994:	e8 d7 f6 ff ff       	callq  1070 <memcpy@plt>
    1999:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    199e:	48 8b 3b             	mov    (%rbx),%rdi
    19a1:	eb ad                	jmp    1950 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0+0x40>
    19a3:	48 8d 3d 5e 06 00 00 	lea    0x65e(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    19aa:	e8 b1 f6 ff ff       	callq  1060 <_ZSt19__throw_logic_errorPKc@plt>
    19af:	90                   	nop

00000000000019b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0>:
    19b0:	41 54                	push   %r12
    19b2:	49 89 d4             	mov    %rdx,%r12
    19b5:	55                   	push   %rbp
    19b6:	48 89 f5             	mov    %rsi,%rbp
    19b9:	53                   	push   %rbx
    19ba:	48 89 fb             	mov    %rdi,%rbx
    19bd:	48 83 ec 10          	sub    $0x10,%rsp
    19c1:	48 85 d2             	test   %rdx,%rdx
    19c4:	74 05                	je     19cb <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0+0x1b>
    19c6:	48 85 f6             	test   %rsi,%rsi
    19c9:	74 78                	je     1a43 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0+0x93>
    19cb:	49 29 ec             	sub    %rbp,%r12
    19ce:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    19d3:	49 83 fc 0f          	cmp    $0xf,%r12
    19d7:	77 37                	ja     1a10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0+0x60>
    19d9:	48 8b 3b             	mov    (%rbx),%rdi
    19dc:	49 83 fc 01          	cmp    $0x1,%r12
    19e0:	75 26                	jne    1a08 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0+0x58>
    19e2:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
    19e6:	88 07                	mov    %al,(%rdi)
    19e8:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    19ed:	48 8b 3b             	mov    (%rbx),%rdi
    19f0:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    19f4:	42 c6 04 27 00       	movb   $0x0,(%rdi,%r12,1)
    19f9:	48 83 c4 10          	add    $0x10,%rsp
    19fd:	5b                   	pop    %rbx
    19fe:	5d                   	pop    %rbp
    19ff:	41 5c                	pop    %r12
    1a01:	c3                   	retq   
    1a02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a08:	4d 85 e4             	test   %r12,%r12
    1a0b:	74 e3                	je     19f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0+0x40>
    1a0d:	eb 1f                	jmp    1a2e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0+0x7e>
    1a0f:	90                   	nop
    1a10:	48 89 df             	mov    %rbx,%rdi
    1a13:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    1a18:	31 d2                	xor    %edx,%edx
    1a1a:	e8 f1 f6 ff ff       	callq  1110 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
    1a1f:	48 89 03             	mov    %rax,(%rbx)
    1a22:	48 89 c7             	mov    %rax,%rdi
    1a25:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1a2a:	48 89 43 10          	mov    %rax,0x10(%rbx)
    1a2e:	4c 89 e2             	mov    %r12,%rdx
    1a31:	48 89 ee             	mov    %rbp,%rsi
    1a34:	e8 37 f6 ff ff       	callq  1070 <memcpy@plt>
    1a39:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    1a3e:	48 8b 3b             	mov    (%rbx),%rdi
    1a41:	eb ad                	jmp    19f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.0+0x40>
    1a43:	48 8d 3d be 05 00 00 	lea    0x5be(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1a4a:	e8 11 f6 ff ff       	callq  1060 <_ZSt19__throw_logic_errorPKc@plt>
    1a4f:	90                   	nop

0000000000001a50 <__libc_csu_init>:
    1a50:	41 57                	push   %r15
    1a52:	4c 8d 3d 5f 23 00 00 	lea    0x235f(%rip),%r15        # 3db8 <__frame_dummy_init_array_entry>
    1a59:	41 56                	push   %r14
    1a5b:	49 89 d6             	mov    %rdx,%r14
    1a5e:	41 55                	push   %r13
    1a60:	49 89 f5             	mov    %rsi,%r13
    1a63:	41 54                	push   %r12
    1a65:	41 89 fc             	mov    %edi,%r12d
    1a68:	55                   	push   %rbp
    1a69:	48 8d 2d 58 23 00 00 	lea    0x2358(%rip),%rbp        # 3dc8 <__do_global_dtors_aux_fini_array_entry>
    1a70:	53                   	push   %rbx
    1a71:	4c 29 fd             	sub    %r15,%rbp
    1a74:	48 83 ec 08          	sub    $0x8,%rsp
    1a78:	e8 83 f5 ff ff       	callq  1000 <_init>
    1a7d:	48 c1 fd 03          	sar    $0x3,%rbp
    1a81:	74 1b                	je     1a9e <__libc_csu_init+0x4e>
    1a83:	31 db                	xor    %ebx,%ebx
    1a85:	0f 1f 00             	nopl   (%rax)
    1a88:	4c 89 f2             	mov    %r14,%rdx
    1a8b:	4c 89 ee             	mov    %r13,%rsi
    1a8e:	44 89 e7             	mov    %r12d,%edi
    1a91:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1a95:	48 83 c3 01          	add    $0x1,%rbx
    1a99:	48 39 dd             	cmp    %rbx,%rbp
    1a9c:	75 ea                	jne    1a88 <__libc_csu_init+0x38>
    1a9e:	48 83 c4 08          	add    $0x8,%rsp
    1aa2:	5b                   	pop    %rbx
    1aa3:	5d                   	pop    %rbp
    1aa4:	41 5c                	pop    %r12
    1aa6:	41 5d                	pop    %r13
    1aa8:	41 5e                	pop    %r14
    1aaa:	41 5f                	pop    %r15
    1aac:	c3                   	retq   
    1aad:	0f 1f 00             	nopl   (%rax)

0000000000001ab0 <__libc_csu_fini>:
    1ab0:	c3                   	retq   

Disassembly of section .fini:

0000000000001ab4 <_fini>:
    1ab4:	48 83 ec 08          	sub    $0x8,%rsp
    1ab8:	48 83 c4 08          	add    $0x8,%rsp
    1abc:	c3                   	retq   

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	00 00                	add    %al,(%rax)
    2006:	00 00                	add    %al,(%rax)
    2008:	62 61                	(bad)  
    200a:	73 69                	jae    2075 <_IO_stdin_used+0x75>
    200c:	63 5f 73             	movsxd 0x73(%rdi),%ebx
    200f:	74 72                	je     2083 <_IO_stdin_used+0x83>
    2011:	69 6e 67 3a 3a 5f 4d 	imul   $0x4d5f3a3a,0x67(%rsi),%ebp
    2018:	5f                   	pop    %rdi
    2019:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
    201c:	73 74                	jae    2092 <_IO_stdin_used+0x92>
    201e:	72 75                	jb     2095 <_IO_stdin_used+0x95>
    2020:	63 74 20 6e          	movsxd 0x6e(%rax,%riz,1),%esi
    2024:	75 6c                	jne    2092 <_IO_stdin_used+0x92>
    2026:	6c                   	insb   (%dx),%es:(%rdi)
    2027:	20 6e 6f             	and    %ch,0x6f(%rsi)
    202a:	74 20                	je     204c <_IO_stdin_used+0x4c>
    202c:	76 61                	jbe    208f <_IO_stdin_used+0x8f>
    202e:	6c                   	insb   (%dx),%es:(%rdi)
    202f:	69 64 00 53 69 7a 65 	imul   $0x3a657a69,0x53(%rax,%rax,1),%esp
    2036:	3a 
    2037:	20 00                	and    %al,(%rax)
    2039:	4e                   	rex.WRX
    203a:	65 76 65             	gs jbe 20a2 <_IO_stdin_used+0xa2>
    203d:	72 20                	jb     205f <_IO_stdin_used+0x5f>
    203f:	67 6f                	outsl  %ds:(%esi),(%dx)
    2041:	6e                   	outsb  %ds:(%rsi),(%dx)
    2042:	6e                   	outsb  %ds:(%rsi),(%dx)
    2043:	61                   	(bad)  
    2044:	20 67 69             	and    %ah,0x69(%rdi)
    2047:	76 65                	jbe    20ae <_IO_stdin_used+0xae>
    2049:	20 79 6f             	and    %bh,0x6f(%rcx)
    204c:	75 20                	jne    206e <_IO_stdin_used+0x6e>
    204e:	75 70                	jne    20c0 <_IO_stdin_used+0xc0>
    2050:	0a 00                	or     (%rax),%al
    2052:	53                   	push   %rbx
    2053:	74 72                	je     20c7 <_IO_stdin_used+0xc7>
    2055:	69 6e 67 20 31 0a 00 	imul   $0xa3120,0x67(%rsi),%ebp
    205c:	4e                   	rex.WRX
    205d:	65 76 65             	gs jbe 20c5 <_IO_stdin_used+0xc5>
    2060:	72 20                	jb     2082 <_IO_stdin_used+0x82>
    2062:	67 6f                	outsl  %ds:(%esi),(%dx)
    2064:	6e                   	outsb  %ds:(%rsi),(%dx)
    2065:	6e                   	outsb  %ds:(%rsi),(%dx)
    2066:	61                   	(bad)  
    2067:	20 6d 61             	and    %ch,0x61(%rbp)
    206a:	6b 65 20 79          	imul   $0x79,0x20(%rbp),%esp
    206e:	6f                   	outsl  %ds:(%rsi),(%dx)
    206f:	75 20                	jne    2091 <_IO_stdin_used+0x91>
    2071:	63 72 79             	movsxd 0x79(%rdx),%esi
    2074:	0a 00                	or     (%rax),%al
    2076:	53                   	push   %rbx
    2077:	74 72                	je     20eb <_IO_stdin_used+0xeb>
    2079:	69 6e 67 20 32 0a 00 	imul   $0xa3220,0x67(%rsi),%ebp
    2080:	53                   	push   %rbx
    2081:	74 72                	je     20f5 <_IO_stdin_used+0xf5>
    2083:	69 6e 67 20 31 20 0a 	imul   $0xa203120,0x67(%rsi),%ebp
    208a:	00 53 74             	add    %dl,0x74(%rbx)
    208d:	72 69                	jb     20f8 <_IO_stdin_used+0xf8>
    208f:	6e                   	outsb  %ds:(%rsi),(%dx)
    2090:	67 20 33             	and    %dh,(%ebx)
    2093:	0a 00                	or     (%rax),%al
    2095:	53                   	push   %rbx
    2096:	74 72                	je     210a <_IO_stdin_used+0x10a>
    2098:	69 6e 67 20 34 0a 00 	imul   $0xa3420,0x67(%rsi),%ebp
    209f:	53                   	push   %rbx
    20a0:	74 72                	je     2114 <__GNU_EH_FRAME_HDR+0x4>
    20a2:	69 6e 67 20 35 0a 00 	imul   $0xa3520,0x67(%rsi),%ebp
    20a9:	52                   	push   %rdx
    20aa:	75 6e                	jne    211a <__GNU_EH_FRAME_HDR+0xa>
    20ac:	6e                   	outsb  %ds:(%rsi),(%dx)
    20ad:	69 6e 67 20 74 69 6d 	imul   $0x6d697420,0x67(%rsi),%ebp
    20b4:	65 3a 20             	cmp    %gs:(%rax),%ah
	...
    20bf:	00 4e 65             	add    %cl,0x65(%rsi)
    20c2:	76 65                	jbe    2129 <__GNU_EH_FRAME_HDR+0x19>
    20c4:	72 20                	jb     20e6 <_IO_stdin_used+0xe6>
    20c6:	67 6f                	outsl  %ds:(%esi),(%dx)
    20c8:	6e                   	outsb  %ds:(%rsi),(%dx)
    20c9:	6e                   	outsb  %ds:(%rsi),(%dx)
    20ca:	61                   	(bad)  
    20cb:	20 67 69             	and    %ah,0x69(%rdi)
    20ce:	76 65                	jbe    2135 <__GNU_EH_FRAME_HDR+0x25>
    20d0:	20 79 6f             	and    %bh,0x6f(%rcx)
    20d3:	75 20                	jne    20f5 <_IO_stdin_used+0xf5>
    20d5:	75 70                	jne    2147 <__GNU_EH_FRAME_HDR+0x37>
    20d7:	0a 4e 65             	or     0x65(%rsi),%cl
    20da:	76 65                	jbe    2141 <__GNU_EH_FRAME_HDR+0x31>
    20dc:	72 20                	jb     20fe <_IO_stdin_used+0xfe>
    20de:	67 6f                	outsl  %ds:(%esi),(%dx)
    20e0:	6e                   	outsb  %ds:(%rsi),(%dx)
    20e1:	6e                   	outsb  %ds:(%rsi),(%dx)
    20e2:	61                   	(bad)  
    20e3:	20 6d 61             	and    %ch,0x61(%rbp)
    20e6:	6b 65 20 79          	imul   $0x79,0x20(%rbp),%esp
    20ea:	6f                   	outsl  %ds:(%rsi),(%dx)
    20eb:	75 20                	jne    210d <_IO_stdin_used+0x10d>
    20ed:	63 72 79             	movsxd 0x79(%rdx),%esi
    20f0:	0a 4e 65             	or     0x65(%rsi),%cl
    20f3:	76 65                	jbe    215a <__GNU_EH_FRAME_HDR+0x4a>
    20f5:	72 20                	jb     2117 <__GNU_EH_FRAME_HDR+0x7>
    20f7:	67 6f                	outsl  %ds:(%esi),(%dx)
    20f9:	6e                   	outsb  %ds:(%rsi),(%dx)
    20fa:	6e                   	outsb  %ds:(%rsi),(%dx)
    20fb:	61                   	(bad)  
    20fc:	20 74 65 6c          	and    %dh,0x6c(%rbp,%riz,2)
    2100:	6c                   	insb   (%dx),%es:(%rdi)
    2101:	20 61 20             	and    %ah,0x20(%rcx)
    2104:	6c                   	insb   (%dx),%es:(%rdi)
    2105:	69 74 65 0a 41 6e 64 	imul   $0x20646e41,0xa(%rbp,%riz,2),%esi
    210c:	20 
    210d:	64                   	fs
    210e:	65                   	gs
    210f:	73                   	.byte 0x73

Disassembly of section .eh_frame_hdr:

0000000000002110 <__GNU_EH_FRAME_HDR>:
    2110:	01 1b                	add    %ebx,(%rbx)
    2112:	03 3b                	add    (%rbx),%edi
    2114:	5c                   	pop    %rsp
    2115:	00 00                	add    %al,(%rax)
    2117:	00 0a                	add    %cl,(%rdx)
    2119:	00 00                	add    %al,(%rax)
    211b:	00 10                	add    %dl,(%rax)
    211d:	ef                   	out    %eax,(%dx)
    211e:	ff                   	(bad)  
    211f:	ff a8 00 00 00 10    	ljmp   *0x10000000(%rax)
    2125:	f0 ff                	lock (bad) 
    2127:	ff d0                	callq  *%rax
    2129:	00 00                	add    %al,(%rax)
    212b:	00 20                	add    %ah,(%rax)
    212d:	f0 ff                	lock (bad) 
    212f:	ff f4                	push   %rsp
    2131:	01 00                	add    %eax,(%rax)
    2133:	00 80 f0 ff ff 70    	add    %al,0x70fffff0(%rax)
    2139:	01 00                	add    %eax,(%rax)
    213b:	00 e0                	add    %ah,%al
    213d:	f6 ff                	idiv   %bh
    213f:	ff 0c 02             	decl   (%rdx,%rax,1)
    2142:	00 00                	add    %al,(%rax)
    2144:	10 f7                	adc    %dh,%bh
    2146:	ff                   	(bad)  
    2147:	ff                   	(bad)  
    2148:	78 00                	js     214a <__GNU_EH_FRAME_HDR+0x3a>
    214a:	00 00                	add    %al,(%rax)
    214c:	00 f8                	add    %bh,%al
    214e:	ff                   	(bad)  
    214f:	ff                   	(bad)  
    2150:	e8 00 00 00 a0       	callq  ffffffffa0002155 <_end+0xffffffff9fffdf7d>
    2155:	f8                   	clc    
    2156:	ff                   	(bad)  
    2157:	ff 1c 01             	lcall  *(%rcx,%rax,1)
    215a:	00 00                	add    %al,(%rax)
    215c:	40 f9                	rex stc 
    215e:	ff                   	(bad)  
    215f:	ff 28                	ljmp   *(%rax)
    2161:	02 00                	add    (%rax),%al
    2163:	00 a0 f9 ff ff 70    	add    %ah,0x70fffff9(%rax)
    2169:	02 00                	add    (%rax),%al
	...

Disassembly of section .eh_frame:

0000000000002170 <__FRAME_END__-0x224>:
    2170:	14 00                	adc    $0x0,%al
    2172:	00 00                	add    %al,(%rax)
    2174:	00 00                	add    %al,(%rax)
    2176:	00 00                	add    %al,(%rax)
    2178:	01 7a 52             	add    %edi,0x52(%rdx)
    217b:	00 01                	add    %al,(%rcx)
    217d:	78 10                	js     218f <__GNU_EH_FRAME_HDR+0x7f>
    217f:	01 1b                	add    %ebx,(%rbx)
    2181:	0c 07                	or     $0x7,%al
    2183:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    2189:	00 00                	add    %al,(%rax)
    218b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    218e:	00 00                	add    %al,(%rax)
    2190:	90                   	nop
    2191:	f6 ff                	idiv   %bh
    2193:	ff 2b                	ljmp   *(%rbx)
	...
    219d:	00 00                	add    %al,(%rax)
    219f:	00 14 00             	add    %dl,(%rax,%rax,1)
    21a2:	00 00                	add    %al,(%rax)
    21a4:	00 00                	add    %al,(%rax)
    21a6:	00 00                	add    %al,(%rax)
    21a8:	01 7a 52             	add    %edi,0x52(%rdx)
    21ab:	00 01                	add    %al,(%rcx)
    21ad:	78 10                	js     21bf <__GNU_EH_FRAME_HDR+0xaf>
    21af:	01 1b                	add    %ebx,(%rbx)
    21b1:	0c 07                	or     $0x7,%al
    21b3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    21b9:	00 00                	add    %al,(%rax)
    21bb:	00 1c 00             	add    %bl,(%rax,%rax,1)
    21be:	00 00                	add    %al,(%rax)
    21c0:	60                   	(bad)  
    21c1:	ee                   	out    %al,(%dx)
    21c2:	ff                   	(bad)  
    21c3:	ff 00                	incl   (%rax)
    21c5:	01 00                	add    %eax,(%rax)
    21c7:	00 00                	add    %al,(%rax)
    21c9:	0e                   	(bad)  
    21ca:	10 46 0e             	adc    %al,0xe(%rsi)
    21cd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    21d0:	0b 77 08             	or     0x8(%rdi),%esi
    21d3:	80 00 3f             	addb   $0x3f,(%rax)
    21d6:	1a 3b                	sbb    (%rbx),%bh
    21d8:	2a 33                	sub    (%rbx),%dh
    21da:	24 22                	and    $0x22,%al
    21dc:	00 00                	add    %al,(%rax)
    21de:	00 00                	add    %al,(%rax)
    21e0:	14 00                	adc    $0x0,%al
    21e2:	00 00                	add    %al,(%rax)
    21e4:	44 00 00             	add    %r8b,(%rax)
    21e7:	00 38                	add    %bh,(%rax)
    21e9:	ef                   	out    %eax,(%dx)
    21ea:	ff                   	(bad)  
    21eb:	ff 08                	decl   (%rax)
	...
    21f5:	00 00                	add    %al,(%rax)
    21f7:	00 30                	add    %dh,(%rax)
    21f9:	00 00                	add    %al,(%rax)
    21fb:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
    21ff:	00 10                	add    %dl,(%rax)
    2201:	f7 ff                	idiv   %edi
    2203:	ff 9f 00 00 00 00    	lcall  *0x0(%rdi)
    2209:	42 0e                	rex.X (bad) 
    220b:	10 8c 02 44 0e 18 86 	adc    %cl,-0x79e7f1bc(%rdx,%rax,1)
    2212:	03 44 0e 20          	add    0x20(%rsi,%rcx,1),%eax
    2216:	83 04 47 0e          	addl   $0xe,(%rdi,%rax,2)
    221a:	30 7c 0a 0e          	xor    %bh,0xe(%rdx,%rcx,1)
    221e:	20 41 0e             	and    %al,0xe(%rcx)
    2221:	18 41 0e             	sbb    %al,0xe(%rcx)
    2224:	10 42 0e             	adc    %al,0xe(%rdx)
    2227:	08 47 0b             	or     %al,0xb(%rdi)
    222a:	00 00                	add    %al,(%rax)
    222c:	30 00                	xor    %al,(%rax)
    222e:	00 00                	add    %al,(%rax)
    2230:	90                   	nop
    2231:	00 00                	add    %al,(%rax)
    2233:	00 7c f7 ff          	add    %bh,-0x1(%rdi,%rsi,8)
    2237:	ff 9f 00 00 00 00    	lcall  *0x0(%rdi)
    223d:	42 0e                	rex.X (bad) 
    223f:	10 8c 02 44 0e 18 86 	adc    %cl,-0x79e7f1bc(%rdx,%rax,1)
    2246:	03 44 0e 20          	add    0x20(%rsi,%rcx,1),%eax
    224a:	83 04 47 0e          	addl   $0xe,(%rdi,%rax,2)
    224e:	30 7c 0a 0e          	xor    %bh,0xe(%rdx,%rcx,1)
    2252:	20 41 0e             	and    %al,0xe(%rcx)
    2255:	18 41 0e             	sbb    %al,0xe(%rcx)
    2258:	10 42 0e             	adc    %al,0xe(%rdx)
    225b:	08 47 0b             	or     %al,0xb(%rdi)
    225e:	00 00                	add    %al,(%rax)
    2260:	1c 00                	sbb    $0x0,%al
    2262:	00 00                	add    %al,(%rax)
    2264:	00 00                	add    %al,(%rax)
    2266:	00 00                	add    %al,(%rax)
    2268:	01 7a 50             	add    %edi,0x50(%rdx)
    226b:	4c 52                	rex.WR push %rdx
    226d:	00 01                	add    %al,(%rcx)
    226f:	78 10                	js     2281 <__GNU_EH_FRAME_HDR+0x171>
    2271:	07                   	(bad)  
    2272:	9b                   	fwait
    2273:	2d 1e 00 00 1b       	sub    $0x1b00001e,%eax
    2278:	1b 0c 07             	sbb    (%rdi,%rax,1),%ecx
    227b:	08 90 01 00 00 50    	or     %dl,0x50000001(%rax)
    2281:	00 00                	add    %al,(%rax)
    2283:	00 24 00             	add    %ah,(%rax,%rax,1)
    2286:	00 00                	add    %al,(%rax)
    2288:	08 ef                	or     %ch,%bh
    228a:	ff                   	(bad)  
    228b:	ff 59 06             	lcall  *0x6(%rcx)
    228e:	00 00                	add    %al,(%rax)
    2290:	04 07                	add    $0x7,%al
    2292:	01 00                	add    %eax,(%rax)
    2294:	00 42 0e             	add    %al,0xe(%rdx)
    2297:	10 8f 02 44 0e 18    	adc    %cl,0x180e4402(%rdi)
    229d:	8e 03                	mov    (%rbx),%es
    229f:	42 0e                	rex.X (bad) 
    22a1:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    22a7:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff863030ee <_end+0xffffffff862fef16>
    22ad:	06                   	(bad)  
    22ae:	41 0e                	rex.B (bad) 
    22b0:	38 83 07 47 0e b0    	cmp    %al,-0x4ff1b8f9(%rbx)
    22b6:	03 03                	add    (%rbx),%eax
    22b8:	f1                   	icebp  
    22b9:	05 0a 0e 38 43       	add    $0x43380e0a,%eax
    22be:	0e                   	(bad)  
    22bf:	30 41 0e             	xor    %al,0xe(%rcx)
    22c2:	28 42 0e             	sub    %al,0xe(%rdx)
    22c5:	20 42 0e             	and    %al,0xe(%rdx)
    22c8:	18 42 0e             	sbb    %al,0xe(%rdx)
    22cb:	10 42 0e             	adc    %al,0xe(%rdx)
    22ce:	08 41 0b             	or     %al,0xb(%rcx)
    22d1:	00 00                	add    %al,(%rax)
    22d3:	00 2c 00             	add    %ch,(%rax,%rax,1)
    22d6:	00 00                	add    %al,(%rax)
    22d8:	00 00                	add    %al,(%rax)
    22da:	00 00                	add    %al,(%rax)
    22dc:	01 7a 50             	add    %edi,0x50(%rdx)
    22df:	4c 52                	rex.WR push %rdx
    22e1:	00 01                	add    %al,(%rcx)
    22e3:	78 10                	js     22f5 <__GNU_EH_FRAME_HDR+0x1e5>
    22e5:	07                   	(bad)  
    22e6:	9b                   	fwait
    22e7:	b9 1d 00 00 1b       	mov    $0x1b00001d,%ecx
    22ec:	1b 0c 07             	sbb    (%rdi,%rax,1),%ecx
    22ef:	08 90 01 0e b0 03    	or     %dl,0x3b00e01(%rax)
    22f5:	83 07 86             	addl   $0xffffff86,(%rdi)
    22f8:	06                   	(bad)  
    22f9:	8c 05 8d 04 8e 03    	mov    %es,0x38e048d(%rip)        # 38e278c <_end+0x38de5b4>
    22ff:	8f 02                	popq   (%rdx)
    2301:	00 00                	add    %al,(%rax)
    2303:	00 14 00             	add    %dl,(%rax,%rax,1)
    2306:	00 00                	add    %al,(%rax)
    2308:	34 00                	xor    $0x0,%al
    230a:	00 00                	add    %al,(%rax)
    230c:	24 ee                	and    $0xee,%al
    230e:	ff                   	(bad)  
    230f:	ff 5b 00             	lcall  *0x0(%rbx)
    2312:	00 00                	add    %al,(%rax)
    2314:	04 d4                	add    $0xd4,%al
    2316:	00 00                	add    %al,(%rax)
    2318:	00 00                	add    %al,(%rax)
    231a:	00 00                	add    %al,(%rax)
    231c:	18 00                	sbb    %al,(%rax)
    231e:	00 00                	add    %al,(%rax)
    2320:	80 01 00             	addb   $0x0,(%rcx)
    2323:	00 cc                	add    %cl,%ah
    2325:	f4                   	hlt    
    2326:	ff                   	(bad)  
    2327:	ff 2e                	ljmp   *(%rsi)
    2329:	00 00                	add    %al,(%rax)
    232b:	00 00                	add    %al,(%rax)
    232d:	44 0e                	rex.R (bad) 
    232f:	10 57 0e             	adc    %dl,0xe(%rdi)
    2332:	08 00                	or     %al,(%rax)
    2334:	00 00                	add    %al,(%rax)
    2336:	00 00                	add    %al,(%rax)
    2338:	44 00 00             	add    %r8b,(%rax)
    233b:	00 9c 01 00 00 10 f7 	add    %bl,-0x8f00000(%rcx,%rax,1)
    2342:	ff                   	(bad)  
    2343:	ff 5d 00             	lcall  *0x0(%rbp)
    2346:	00 00                	add    %al,(%rax)
    2348:	00 42 0e             	add    %al,0xe(%rdx)
    234b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2351:	8e 03                	mov    (%rbx),%es
    2353:	45 0e                	rex.RB (bad) 
    2355:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    235b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff863031a5 <_end+0xffffffff862fefcd>
    2361:	06                   	(bad)  
    2362:	48 0e                	rex.W (bad) 
    2364:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    236a:	6a 0e                	pushq  $0xe
    236c:	38 41 0e             	cmp    %al,0xe(%rcx)
    236f:	30 41 0e             	xor    %al,0xe(%rcx)
    2372:	28 42 0e             	sub    %al,0xe(%rdx)
    2375:	20 42 0e             	and    %al,0xe(%rdx)
    2378:	18 42 0e             	sbb    %al,0xe(%rdx)
    237b:	10 42 0e             	adc    %al,0xe(%rdx)
    237e:	08 00                	or     %al,(%rax)
    2380:	10 00                	adc    %al,(%rax)
    2382:	00 00                	add    %al,(%rax)
    2384:	e4 01                	in     $0x1,%al
    2386:	00 00                	add    %al,(%rax)
    2388:	28 f7                	sub    %dh,%bh
    238a:	ff                   	(bad)  
    238b:	ff 01                	incl   (%rcx)
    238d:	00 00                	add    %al,(%rax)
    238f:	00 00                	add    %al,(%rax)
    2391:	00 00                	add    %al,(%rax)
	...

0000000000002394 <__FRAME_END__>:
    2394:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gcc_except_table:

0000000000002398 <.gcc_except_table>:
    2398:	ff                   	(bad)  
    2399:	ff 01                	incl   (%rcx)
    239b:	4d                   	rex.WRB
    239c:	41 05 00 00 89 02    	rex.B add $0x2890000,%eax
    23a2:	05 91 0c 00 a1       	add    $0xa1000c91,%eax
    23a7:	02 5d d1             	add    -0x2f(%rbp),%bl
    23aa:	0c 00                	or     $0x0,%al
    23ac:	91                   	xchg   %eax,%ecx
    23ad:	03 53 b1             	add    -0x4f(%rbx),%edx
    23b0:	0c 00                	or     $0x0,%al
    23b2:	f7 03 a5 01 c1 0c    	testl  $0xcc101a5,(%rbx)
    23b8:	00 a9 05 6b a1 0c    	add    %ch,0xca16b05(%rcx)
    23be:	00 a7 06 59 c9 0c    	add    %ah,0xcc95906(%rdi)
    23c4:	00 93 07 05 a9 0c    	add    %dl,0xca90507(%rbx)
    23ca:	00 c9                	add    %cl,%cl
    23cc:	07                   	(bad)  
    23cd:	59                   	pop    %rcx
    23ce:	c9                   	leaveq 
    23cf:	0c 00                	or     $0x0,%al
    23d1:	b5 08                	mov    $0x8,%ch
    23d3:	4b b9 0c 00 93 09 05 	rex.WXB movabs $0xc99050993000c,%r9
    23da:	99 0c 00 
    23dd:	c9                   	leaveq 
    23de:	09 21                	or     %esp,(%rcx)
    23e0:	b9 0c 00 cb 0b       	mov    $0xbcb000c,%ecx
    23e5:	28 91 0c 00 ff ff    	sub    %dl,-0xfff4(%rcx)
    23eb:	01 04 4c             	add    %eax,(%rsp,%rcx,2)
    23ee:	05                   	.byte 0x5
	...

Disassembly of section .init_array:

0000000000003db8 <__frame_dummy_init_array_entry>:
    3db8:	00 19                	add    %bl,(%rcx)
    3dba:	00 00                	add    %al,(%rax)
    3dbc:	00 00                	add    %al,(%rax)
    3dbe:	00 00                	add    %al,(%rax)
    3dc0:	f0 17                	lock (bad) 
    3dc2:	00 00                	add    %al,(%rax)
    3dc4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003dc8 <__do_global_dtors_aux_fini_array_entry>:
    3dc8:	c0 18 00             	rcrb   $0x0,(%rax)
    3dcb:	00 00                	add    %al,(%rax)
    3dcd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003dd0 <_DYNAMIC>:
    3dd0:	01 00                	add    %eax,(%rax)
    3dd2:	00 00                	add    %al,(%rax)
    3dd4:	00 00                	add    %al,(%rax)
    3dd6:	00 00                	add    %al,(%rax)
    3dd8:	d0 02                	rolb   (%rdx)
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
    3dde:	00 00                	add    %al,(%rax)
    3de0:	01 00                	add    %eax,(%rax)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	df 02                	filds  (%rdx)
    3dea:	00 00                	add    %al,(%rax)
    3dec:	00 00                	add    %al,(%rax)
    3dee:	00 00                	add    %al,(%rax)
    3df0:	01 00                	add    %eax,(%rax)
    3df2:	00 00                	add    %al,(%rax)
    3df4:	00 00                	add    %al,(%rax)
    3df6:	00 00                	add    %al,(%rax)
    3df8:	ed                   	in     (%dx),%eax
    3df9:	02 00                	add    (%rax),%al
    3dfb:	00 00                	add    %al,(%rax)
    3dfd:	00 00                	add    %al,(%rax)
    3dff:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3e02:	00 00                	add    %al,(%rax)
    3e04:	00 00                	add    %al,(%rax)
    3e06:	00 00                	add    %al,(%rax)
    3e08:	00 10                	add    %dl,(%rax)
    3e0a:	00 00                	add    %al,(%rax)
    3e0c:	00 00                	add    %al,(%rax)
    3e0e:	00 00                	add    %al,(%rax)
    3e10:	0d 00 00 00 00       	or     $0x0,%eax
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 b4 1a 00 00 00 00 	add    %dh,0x0(%rdx,%rbx,1)
    3e1e:	00 00                	add    %al,(%rax)
    3e20:	19 00                	sbb    %eax,(%rax)
    3e22:	00 00                	add    %al,(%rax)
    3e24:	00 00                	add    %al,(%rax)
    3e26:	00 00                	add    %al,(%rax)
    3e28:	b8 3d 00 00 00       	mov    $0x3d,%eax
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 1b                	add    %bl,(%rbx)
    3e31:	00 00                	add    %al,(%rax)
    3e33:	00 00                	add    %al,(%rax)
    3e35:	00 00                	add    %al,(%rax)
    3e37:	00 10                	add    %dl,(%rax)
    3e39:	00 00                	add    %al,(%rax)
    3e3b:	00 00                	add    %al,(%rax)
    3e3d:	00 00                	add    %al,(%rax)
    3e3f:	00 1a                	add    %bl,(%rdx)
    3e41:	00 00                	add    %al,(%rax)
    3e43:	00 00                	add    %al,(%rax)
    3e45:	00 00                	add    %al,(%rax)
    3e47:	00 c8                	add    %cl,%al
    3e49:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	1c 00                	sbb    $0x0,%al
    3e52:	00 00                	add    %al,(%rax)
    3e54:	00 00                	add    %al,(%rax)
    3e56:	00 00                	add    %al,(%rax)
    3e58:	08 00                	or     %al,(%rax)
    3e5a:	00 00                	add    %al,(%rax)
    3e5c:	00 00                	add    %al,(%rax)
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	f5                   	cmc    
    3e61:	fe                   	(bad)  
    3e62:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 08                	add    %cl,(%rax)
    3e69:	03 00                	add    (%rax),%eax
    3e6b:	00 00                	add    %al,(%rax)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e75 <_DYNAMIC+0xa5>
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 70 05             	add    %dh,0x5(%rax)
    3e7a:	00 00                	add    %al,(%rax)
    3e7c:	00 00                	add    %al,(%rax)
    3e7e:	00 00                	add    %al,(%rax)
    3e80:	06                   	(bad)  
    3e81:	00 00                	add    %al,(%rax)
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 30                	add    %dh,(%rax)
    3e89:	03 00                	add    (%rax),%eax
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 0a                	add    %cl,(%rdx)
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 57 03             	add    %dl,0x3(%rdi)
    3e9a:	00 00                	add    %al,(%rax)
    3e9c:	00 00                	add    %al,(%rax)
    3e9e:	00 00                	add    %al,(%rax)
    3ea0:	0b 00                	or     (%rax),%eax
    3ea2:	00 00                	add    %al,(%rax)
    3ea4:	00 00                	add    %al,(%rax)
    3ea6:	00 00                	add    %al,(%rax)
    3ea8:	18 00                	sbb    %al,(%rax)
    3eaa:	00 00                	add    %al,(%rax)
    3eac:	00 00                	add    %al,(%rax)
    3eae:	00 00                	add    %al,(%rax)
    3eb0:	15 00 00 00 00       	adc    $0x0,%eax
	...
    3ebd:	00 00                	add    %al,(%rax)
    3ebf:	00 03                	add    %al,(%rbx)
	...
    3ec9:	40 00 00             	add    %al,(%rax)
    3ecc:	00 00                	add    %al,(%rax)
    3ece:	00 00                	add    %al,(%rax)
    3ed0:	02 00                	add    (%rax),%al
    3ed2:	00 00                	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	68 01 00 00 00       	pushq  $0x1
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 14 00             	add    %dl,(%rax,%rax,1)
    3ee2:	00 00                	add    %al,(%rax)
    3ee4:	00 00                	add    %al,(%rax)
    3ee6:	00 00                	add    %al,(%rax)
    3ee8:	07                   	(bad)  
    3ee9:	00 00                	add    %al,(%rax)
    3eeb:	00 00                	add    %al,(%rax)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 17                	add    %dl,(%rdi)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 c8                	add    %cl,%al
    3ef9:	0a 00                	or     (%rax),%al
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 07                	add    %al,(%rdi)
    3f01:	00 00                	add    %al,(%rax)
    3f03:	00 00                	add    %al,(%rax)
    3f05:	00 00                	add    %al,(%rax)
    3f07:	00 a8 09 00 00 00    	add    %ch,0x9(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 08                	add    %cl,(%rax)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 20                	add    %ah,(%rax)
    3f19:	01 00                	add    %eax,(%rax)
    3f1b:	00 00                	add    %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 09                	add    %cl,(%rcx)
    3f21:	00 00                	add    %al,(%rax)
    3f23:	00 00                	add    %al,(%rax)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 18                	add    %bl,(%rax)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	00 00                	add    %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 fb                	add    %bh,%bl
    3f31:	ff                   	(bad)  
    3f32:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 00                	add    %al,(%rax)
    3f39:	00 00                	add    %al,(%rax)
    3f3b:	08 00                	or     %al,(%rax)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 fe                	add    %bh,%dh
    3f41:	ff                   	(bad)  
    3f42:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 f8                	add    %bh,%al
    3f49:	08 00                	or     %al,(%rax)
    3f4b:	00 00                	add    %al,(%rax)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 ff                	add    %bh,%bh
    3f51:	ff                   	(bad)  
    3f52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 03                	add    %al,(%rbx)
    3f59:	00 00                	add    %al,(%rax)
    3f5b:	00 00                	add    %al,(%rax)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 f0                	add    %dh,%al
    3f61:	ff                   	(bad)  
    3f62:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 c8                	add    %cl,%al
    3f69:	08 00                	or     %al,(%rax)
    3f6b:	00 00                	add    %al,(%rax)
    3f6d:	00 00                	add    %al,(%rax)
    3f6f:	00 f9                	add    %bh,%cl
    3f71:	ff                   	(bad)  
    3f72:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f75:	00 00                	add    %al,(%rax)
    3f77:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .got:

0000000000003fd0 <.got>:
	...

Disassembly of section .got.plt:

0000000000004000 <_GLOBAL_OFFSET_TABLE_>:
    4000:	d0 3d 00 00 00 00    	sarb   0x0(%rip)        # 4006 <_GLOBAL_OFFSET_TABLE_+0x6>
	...
    4016:	00 00                	add    %al,(%rax)
    4018:	36 10 00             	adc    %al,%ss:(%rax)
    401b:	00 00                	add    %al,(%rax)
    401d:	00 00                	add    %al,(%rax)
    401f:	00 46 10             	add    %al,0x10(%rsi)
    4022:	00 00                	add    %al,(%rax)
    4024:	00 00                	add    %al,(%rax)
    4026:	00 00                	add    %al,(%rax)
    4028:	56                   	push   %rsi
    4029:	10 00                	adc    %al,(%rax)
    402b:	00 00                	add    %al,(%rax)
    402d:	00 00                	add    %al,(%rax)
    402f:	00 66 10             	add    %ah,0x10(%rsi)
    4032:	00 00                	add    %al,(%rax)
    4034:	00 00                	add    %al,(%rax)
    4036:	00 00                	add    %al,(%rax)
    4038:	76 10                	jbe    404a <_GLOBAL_OFFSET_TABLE_+0x4a>
    403a:	00 00                	add    %al,(%rax)
    403c:	00 00                	add    %al,(%rax)
    403e:	00 00                	add    %al,(%rax)
    4040:	86 10                	xchg   %dl,(%rax)
    4042:	00 00                	add    %al,(%rax)
    4044:	00 00                	add    %al,(%rax)
    4046:	00 00                	add    %al,(%rax)
    4048:	96                   	xchg   %eax,%esi
    4049:	10 00                	adc    %al,(%rax)
    404b:	00 00                	add    %al,(%rax)
    404d:	00 00                	add    %al,(%rax)
    404f:	00 a6 10 00 00 00    	add    %ah,0x10(%rsi)
    4055:	00 00                	add    %al,(%rax)
    4057:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
    405d:	00 00                	add    %al,(%rax)
    405f:	00 c6                	add    %al,%dh
    4061:	10 00                	adc    %al,(%rax)
    4063:	00 00                	add    %al,(%rax)
    4065:	00 00                	add    %al,(%rax)
    4067:	00 d6                	add    %dl,%dh
    4069:	10 00                	adc    %al,(%rax)
    406b:	00 00                	add    %al,(%rax)
    406d:	00 00                	add    %al,(%rax)
    406f:	00 e6                	add    %ah,%dh
    4071:	10 00                	adc    %al,(%rax)
    4073:	00 00                	add    %al,(%rax)
    4075:	00 00                	add    %al,(%rax)
    4077:	00 f6                	add    %dh,%dh
    4079:	10 00                	adc    %al,(%rax)
    407b:	00 00                	add    %al,(%rax)
    407d:	00 00                	add    %al,(%rax)
    407f:	00 06                	add    %al,(%rsi)
    4081:	11 00                	adc    %eax,(%rax)
    4083:	00 00                	add    %al,(%rax)
    4085:	00 00                	add    %al,(%rax)
    4087:	00 16                	add    %dl,(%rsi)
    4089:	11 00                	adc    %eax,(%rax)
    408b:	00 00                	add    %al,(%rax)
    408d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000004090 <__data_start>:
	...

0000000000004098 <__dso_handle>:
    4098:	98                   	cwtl   
    4099:	40 00 00             	add    %al,(%rax)
    409c:	00 00                	add    %al,(%rax)
	...

00000000000040a0 <DW.ref.__gxx_personality_v0>:
	...

Disassembly of section .bss:

00000000000040c0 <_ZSt4cout@GLIBCXX_3.4>:
	...

00000000000041d0 <completed.0>:
	...

00000000000041d1 <_ZStL8__ioinit>:
    41d1:	00 00                	add    %al,(%rax)
    41d3:	00 00                	add    %al,(%rax)
    41d5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 31 30 2e 	imul   $0x2e303120,0x6e(%rcx),%esp
  10:	32 2e                	xor    (%rsi),%ch
  12:	31 2d 36 29 20 31    	xor    %ebp,0x31202936(%rip)        # 3120294e <_end+0x311fe776>
  18:	30 2e                	xor    %ch,(%rsi)
  1a:	32 2e                	xor    (%rsi),%ch
  1c:	31 20                	xor    %esp,(%rax)
  1e:	32 30                	xor    (%rax),%dh
  20:	32 31                	xor    (%rcx),%dh
  22:	30 31                	xor    %dh,(%rcx)
  24:	31 30                	xor    %esi,(%rax)
	...
