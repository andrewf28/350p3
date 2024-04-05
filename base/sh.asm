
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	57                   	push   %edi
       e:	56                   	push   %esi
       f:	53                   	push   %ebx
      10:	51                   	push   %ecx
      11:	83 ec 08             	sub    $0x8,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      14:	eb 13                	jmp    29 <main+0x29>
      16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      1d:	8d 76 00             	lea    0x0(%esi),%esi
    if(fd >= 3){
      20:	83 f8 02             	cmp    $0x2,%eax
      23:	0f 8f b6 01 00 00    	jg     1df <main+0x1df>
  while((fd = open("console", O_RDWR)) >= 0){
      29:	83 ec 08             	sub    $0x8,%esp
      2c:	6a 02                	push   $0x2
      2e:	68 3c 16 00 00       	push   $0x163c
      33:	e8 bb 10 00 00       	call   10f3 <open>
      38:	83 c4 10             	add    $0x10,%esp
      3b:	85 c0                	test   %eax,%eax
      3d:	79 e1                	jns    20 <main+0x20>
        int pos = (start + i) % HIST_SIZE;
      3f:	bf 67 66 66 66       	mov    $0x66666667,%edi
      44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(2, "$ ");
      48:	83 ec 08             	sub    $0x8,%esp
      4b:	68 61 15 00 00       	push   $0x1561
      50:	6a 02                	push   $0x2
      52:	e8 c9 11 00 00       	call   1220 <printf>
  memset(buf, 0, nbuf);
      57:	83 c4 0c             	add    $0xc,%esp
      5a:	6a 64                	push   $0x64
      5c:	6a 00                	push   $0x0
      5e:	68 80 1d 00 00       	push   $0x1d80
      63:	e8 c8 0e 00 00       	call   f30 <memset>
  gets(buf, nbuf);
      68:	58                   	pop    %eax
      69:	5a                   	pop    %edx
      6a:	6a 64                	push   $0x64
      6c:	68 80 1d 00 00       	push   $0x1d80
      71:	e8 1a 0f 00 00       	call   f90 <gets>
  if(buf[0] == 0) // EOF
      76:	0f b6 05 80 1d 00 00 	movzbl 0x1d80,%eax
      7d:	83 c4 10             	add    $0x10,%esp
      80:	84 c0                	test   %al,%al
      82:	0f 84 52 01 00 00    	je     1da <main+0x1da>
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0)
  {
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      88:	3c 63                	cmp    $0x63,%al
      8a:	75 0d                	jne    99 <main+0x99>
      8c:	80 3d 81 1d 00 00 64 	cmpb   $0x64,0x1d81
      93:	0f 84 d7 00 00 00    	je     170 <main+0x170>
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }

    //Anita
    if (strcmp(buf, "hist print\n") == 0) {
      99:	83 ec 08             	sub    $0x8,%esp
      9c:	68 52 16 00 00       	push   $0x1652
      a1:	68 80 1d 00 00       	push   $0x1d80
      a6:	e8 f5 0d 00 00       	call   ea0 <strcmp>
      ab:	83 c4 10             	add    $0x10,%esp
      ae:	89 c3                	mov    %eax,%ebx
      b0:	85 c0                	test   %eax,%eax
      b2:	74 4c                	je     100 <main+0x100>
int
fork1(void)
{
  int pid;

  pid = fork();
      b4:	e8 f2 0f 00 00       	call   10ab <fork>
  if(pid == -1)
      b9:	83 f8 ff             	cmp    $0xffffffff,%eax
      bc:	0f 84 8e 01 00 00    	je     250 <main+0x250>
    if (fork1() == 0) {
      c2:	85 c0                	test   %eax,%eax
      c4:	0f 84 26 01 00 00    	je     1f0 <main+0x1f0>
    wait();
      ca:	e8 ec 0f 00 00       	call   10bb <wait>
    if (!(buf[0] == 'h' && buf[3] == 't' && buf[5] != ' ')) {
      cf:	80 3d 80 1d 00 00 68 	cmpb   $0x68,0x1d80
      d6:	75 0d                	jne    e5 <main+0xe5>
      d8:	80 3d 83 1d 00 00 74 	cmpb   $0x74,0x1d83
      df:	0f 84 e3 00 00 00    	je     1c8 <main+0x1c8>
        increment_history(buf);
      e5:	83 ec 0c             	sub    $0xc,%esp
      e8:	68 80 1d 00 00       	push   $0x1d80
      ed:	e8 6e 01 00 00       	call   260 <increment_history>
      f2:	83 c4 10             	add    $0x10,%esp
      f5:	e9 4e ff ff ff       	jmp    48 <main+0x48>
      fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (hist_counter < HIST_SIZE) 
     100:	a1 24 1d 00 00       	mov    0x1d24,%eax
        start = idx;
     105:	8b 35 20 1d 00 00    	mov    0x1d20,%esi
    if (hist_counter < HIST_SIZE) 
     10b:	83 f8 09             	cmp    $0x9,%eax
     10e:	7f 19                	jg     129 <main+0x129>
    for (i = 0; i < hist_counter && i < n; i++) 
     110:	85 c0                	test   %eax,%eax
     112:	0f 8e 30 ff ff ff    	jle    48 <main+0x48>
        start = 0;
     118:	31 f6                	xor    %esi,%esi
     11a:	eb 0d                	jmp    129 <main+0x129>
     11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for (i = 0; i < hist_counter && i < n; i++) 
     120:	83 fb 0a             	cmp    $0xa,%ebx
     123:	0f 84 1f ff ff ff    	je     48 <main+0x48>
        int pos = (start + i) % HIST_SIZE;
     129:	8d 0c 33             	lea    (%ebx,%esi,1),%ecx
        printf(1, "Previous command %d: %s\n", i + 1, hist_arr[pos]);
     12c:	83 c3 01             	add    $0x1,%ebx
        int pos = (start + i) % HIST_SIZE;
     12f:	89 c8                	mov    %ecx,%eax
     131:	f7 ef                	imul   %edi
     133:	89 c8                	mov    %ecx,%eax
     135:	c1 f8 1f             	sar    $0x1f,%eax
     138:	c1 fa 02             	sar    $0x2,%edx
     13b:	29 c2                	sub    %eax,%edx
     13d:	8d 04 92             	lea    (%edx,%edx,4),%eax
     140:	01 c0                	add    %eax,%eax
     142:	29 c1                	sub    %eax,%ecx
        printf(1, "Previous command %d: %s\n", i + 1, hist_arr[pos]);
     144:	ff 34 8d 40 1d 00 00 	push   0x1d40(,%ecx,4)
     14b:	53                   	push   %ebx
     14c:	68 48 15 00 00       	push   $0x1548
     151:	6a 01                	push   $0x1
     153:	e8 c8 10 00 00       	call   1220 <printf>
    for (i = 0; i < hist_counter && i < n; i++) 
     158:	83 c4 10             	add    $0x10,%esp
     15b:	3b 1d 24 1d 00 00    	cmp    0x1d24,%ebx
     161:	7c bd                	jl     120 <main+0x120>
     163:	e9 e0 fe ff ff       	jmp    48 <main+0x48>
     168:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     16f:	90                   	nop
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
     170:	80 3d 82 1d 00 00 20 	cmpb   $0x20,0x1d82
     177:	0f 85 1c ff ff ff    	jne    99 <main+0x99>
      buf[strlen(buf)-1] = 0;  // chop \n
     17d:	83 ec 0c             	sub    $0xc,%esp
     180:	68 80 1d 00 00       	push   $0x1d80
     185:	e8 76 0d 00 00       	call   f00 <strlen>
      if(chdir(buf+3) < 0)
     18a:	c7 04 24 83 1d 00 00 	movl   $0x1d83,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
     191:	c6 80 7f 1d 00 00 00 	movb   $0x0,0x1d7f(%eax)
      if(chdir(buf+3) < 0)
     198:	e8 86 0f 00 00       	call   1123 <chdir>
     19d:	83 c4 10             	add    $0x10,%esp
     1a0:	85 c0                	test   %eax,%eax
     1a2:	0f 89 a0 fe ff ff    	jns    48 <main+0x48>
        printf(2, "cannot cd %s\n", buf+3);
     1a8:	51                   	push   %ecx
     1a9:	68 83 1d 00 00       	push   $0x1d83
     1ae:	68 44 16 00 00       	push   $0x1644
     1b3:	6a 02                	push   $0x2
     1b5:	e8 66 10 00 00       	call   1220 <printf>
     1ba:	83 c4 10             	add    $0x10,%esp
     1bd:	e9 86 fe ff ff       	jmp    48 <main+0x48>
     1c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (!(buf[0] == 'h' && buf[3] == 't' && buf[5] != ' ')) {
     1c8:	80 3d 85 1d 00 00 20 	cmpb   $0x20,0x1d85
     1cf:	0f 85 73 fe ff ff    	jne    48 <main+0x48>
     1d5:	e9 0b ff ff ff       	jmp    e5 <main+0xe5>
  exit();
     1da:	e8 d4 0e 00 00       	call   10b3 <exit>
      close(fd);
     1df:	83 ec 0c             	sub    $0xc,%esp
     1e2:	50                   	push   %eax
     1e3:	e8 f3 0e 00 00       	call   10db <close>
      break;
     1e8:	83 c4 10             	add    $0x10,%esp
     1eb:	e9 4f fe ff ff       	jmp    3f <main+0x3f>
        if (buf[0] == 'h' && buf[3] == 't' && buf[5] != ' ') {
     1f0:	80 3d 80 1d 00 00 68 	cmpb   $0x68,0x1d80
     1f7:	75 32                	jne    22b <main+0x22b>
     1f9:	80 3d 83 1d 00 00 74 	cmpb   $0x74,0x1d83
     200:	75 29                	jne    22b <main+0x22b>
     202:	0f be 05 85 1d 00 00 	movsbl 0x1d85,%eax
     209:	3c 20                	cmp    $0x20,%al
     20b:	74 1e                	je     22b <main+0x22b>
            if (buf[5] == '1' && buf[6] == '0') idx = 10;
     20d:	3c 31                	cmp    $0x31,%al
     20f:	74 2f                	je     240 <main+0x240>
            unsigned int idx = buf[5] - '0';
     211:	83 e8 30             	sub    $0x30,%eax
            runcmd(parsecmd(hist_arr[idx - 1]));
     214:	83 ec 0c             	sub    $0xc,%esp
     217:	ff 34 85 3c 1d 00 00 	push   0x1d3c(,%eax,4)
     21e:	e8 dd 0b 00 00       	call   e00 <parsecmd>
     223:	89 04 24             	mov    %eax,(%esp)
     226:	e8 d5 01 00 00       	call   400 <runcmd>
            runcmd(parsecmd(buf));
     22b:	83 ec 0c             	sub    $0xc,%esp
     22e:	68 80 1d 00 00       	push   $0x1d80
     233:	e8 c8 0b 00 00       	call   e00 <parsecmd>
     238:	89 04 24             	mov    %eax,(%esp)
     23b:	e8 c0 01 00 00       	call   400 <runcmd>
            if (buf[5] == '1' && buf[6] == '0') idx = 10;
     240:	80 3d 86 1d 00 00 30 	cmpb   $0x30,0x1d86
     247:	75 c8                	jne    211 <main+0x211>
     249:	b8 0a 00 00 00       	mov    $0xa,%eax
     24e:	eb c4                	jmp    214 <main+0x214>
    panic("fork");
     250:	83 ec 0c             	sub    $0xc,%esp
     253:	68 64 15 00 00       	push   $0x1564
     258:	e8 63 01 00 00       	call   3c0 <panic>
     25d:	66 90                	xchg   %ax,%ax
     25f:	90                   	nop

00000260 <increment_history>:
void increment_history(char *cmd) {
     260:	55                   	push   %ebp
     261:	89 e5                	mov    %esp,%ebp
     263:	53                   	push   %ebx
     264:	83 ec 04             	sub    $0x4,%esp
    if (hist_counter >= HIST_SIZE) {
     267:	a1 24 1d 00 00       	mov    0x1d24,%eax
        free(hist_arr[idx]);
     26c:	8b 1d 20 1d 00 00    	mov    0x1d20,%ebx
    if (hist_counter >= HIST_SIZE) {
     272:	83 f8 09             	cmp    $0x9,%eax
     275:	7f 61                	jg     2d8 <increment_history+0x78>
        hist_counter++;
     277:	83 c0 01             	add    $0x1,%eax
     27a:	a3 24 1d 00 00       	mov    %eax,0x1d24
    hist_arr[idx] = malloc(100 * sizeof(char));
     27f:	83 ec 0c             	sub    $0xc,%esp
     282:	6a 64                	push   $0x64
     284:	e8 d7 11 00 00       	call   1460 <malloc>
     289:	89 04 9d 40 1d 00 00 	mov    %eax,0x1d40(,%ebx,4)
    strcpy(hist_arr[idx], cmd);
     290:	58                   	pop    %eax
     291:	5a                   	pop    %edx
     292:	ff 75 08             	push   0x8(%ebp)
     295:	a1 20 1d 00 00       	mov    0x1d20,%eax
     29a:	ff 34 85 40 1d 00 00 	push   0x1d40(,%eax,4)
     2a1:	e8 ca 0b 00 00       	call   e70 <strcpy>
    idx = (idx + 1) % HIST_SIZE;
     2a6:	a1 20 1d 00 00       	mov    0x1d20,%eax
}
     2ab:	83 c4 10             	add    $0x10,%esp
    idx = (idx + 1) % HIST_SIZE;
     2ae:	8d 48 01             	lea    0x1(%eax),%ecx
     2b1:	b8 67 66 66 66       	mov    $0x66666667,%eax
     2b6:	f7 e9                	imul   %ecx
     2b8:	89 c8                	mov    %ecx,%eax
     2ba:	c1 f8 1f             	sar    $0x1f,%eax
     2bd:	c1 fa 02             	sar    $0x2,%edx
     2c0:	29 c2                	sub    %eax,%edx
     2c2:	8d 04 92             	lea    (%edx,%edx,4),%eax
     2c5:	01 c0                	add    %eax,%eax
     2c7:	29 c1                	sub    %eax,%ecx
     2c9:	89 0d 20 1d 00 00    	mov    %ecx,0x1d20
}
     2cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     2d2:	c9                   	leave
     2d3:	c3                   	ret
     2d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        free(hist_arr[idx]);
     2d8:	83 ec 0c             	sub    $0xc,%esp
     2db:	ff 34 9d 40 1d 00 00 	push   0x1d40(,%ebx,4)
     2e2:	e8 e9 10 00 00       	call   13d0 <free>
     2e7:	8b 1d 20 1d 00 00    	mov    0x1d20,%ebx
     2ed:	83 c4 10             	add    $0x10,%esp
     2f0:	eb 8d                	jmp    27f <increment_history+0x1f>
     2f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000300 <print_history>:
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	57                   	push   %edi
     304:	56                   	push   %esi
     305:	53                   	push   %ebx
     306:	83 ec 0c             	sub    $0xc,%esp
    if (hist_counter < HIST_SIZE) 
     309:	a1 24 1d 00 00       	mov    0x1d24,%eax
        start = idx;
     30e:	8b 3d 20 1d 00 00    	mov    0x1d20,%edi
    if (hist_counter < HIST_SIZE) 
     314:	83 f8 09             	cmp    $0x9,%eax
     317:	7f 06                	jg     31f <print_history+0x1f>
    for (i = 0; i < hist_counter && i < n; i++) 
     319:	85 c0                	test   %eax,%eax
     31b:	7e 52                	jle    36f <print_history+0x6f>
        start = 0;
     31d:	31 ff                	xor    %edi,%edi
    for (i = 0; i < hist_counter && i < n; i++) 
     31f:	8b 45 08             	mov    0x8(%ebp),%eax
     322:	85 c0                	test   %eax,%eax
     324:	74 49                	je     36f <print_history+0x6f>
     326:	31 db                	xor    %ebx,%ebx
        int pos = (start + i) % HIST_SIZE;
     328:	be 67 66 66 66       	mov    $0x66666667,%esi
     32d:	eb 06                	jmp    335 <print_history+0x35>
     32f:	90                   	nop
    for (i = 0; i < hist_counter && i < n; i++) 
     330:	3b 5d 08             	cmp    0x8(%ebp),%ebx
     333:	74 3a                	je     36f <print_history+0x6f>
        int pos = (start + i) % HIST_SIZE;
     335:	8d 0c 3b             	lea    (%ebx,%edi,1),%ecx
        printf(1, "Previous command %d: %s\n", i + 1, hist_arr[pos]);
     338:	83 c3 01             	add    $0x1,%ebx
        int pos = (start + i) % HIST_SIZE;
     33b:	89 c8                	mov    %ecx,%eax
     33d:	f7 ee                	imul   %esi
     33f:	89 c8                	mov    %ecx,%eax
     341:	c1 f8 1f             	sar    $0x1f,%eax
     344:	c1 fa 02             	sar    $0x2,%edx
     347:	29 c2                	sub    %eax,%edx
     349:	8d 04 92             	lea    (%edx,%edx,4),%eax
     34c:	01 c0                	add    %eax,%eax
     34e:	29 c1                	sub    %eax,%ecx
        printf(1, "Previous command %d: %s\n", i + 1, hist_arr[pos]);
     350:	ff 34 8d 40 1d 00 00 	push   0x1d40(,%ecx,4)
     357:	53                   	push   %ebx
     358:	68 48 15 00 00       	push   $0x1548
     35d:	6a 01                	push   $0x1
     35f:	e8 bc 0e 00 00       	call   1220 <printf>
    for (i = 0; i < hist_counter && i < n; i++) 
     364:	83 c4 10             	add    $0x10,%esp
     367:	3b 1d 24 1d 00 00    	cmp    0x1d24,%ebx
     36d:	7c c1                	jl     330 <print_history+0x30>
}
     36f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     372:	5b                   	pop    %ebx
     373:	5e                   	pop    %esi
     374:	5f                   	pop    %edi
     375:	5d                   	pop    %ebp
     376:	c3                   	ret
     377:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     37e:	66 90                	xchg   %ax,%ax

00000380 <getcmd>:
{
     380:	55                   	push   %ebp
     381:	89 e5                	mov    %esp,%ebp
     383:	56                   	push   %esi
     384:	53                   	push   %ebx
     385:	8b 5d 08             	mov    0x8(%ebp),%ebx
     388:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     38b:	83 ec 08             	sub    $0x8,%esp
     38e:	68 61 15 00 00       	push   $0x1561
     393:	6a 02                	push   $0x2
     395:	e8 86 0e 00 00       	call   1220 <printf>
  memset(buf, 0, nbuf);
     39a:	83 c4 0c             	add    $0xc,%esp
     39d:	56                   	push   %esi
     39e:	6a 00                	push   $0x0
     3a0:	53                   	push   %ebx
     3a1:	e8 8a 0b 00 00       	call   f30 <memset>
  gets(buf, nbuf);
     3a6:	58                   	pop    %eax
     3a7:	5a                   	pop    %edx
     3a8:	56                   	push   %esi
     3a9:	53                   	push   %ebx
     3aa:	e8 e1 0b 00 00       	call   f90 <gets>
  if(buf[0] == 0) // EOF
     3af:	83 c4 10             	add    $0x10,%esp
     3b2:	80 3b 01             	cmpb   $0x1,(%ebx)
     3b5:	19 c0                	sbb    %eax,%eax
}
     3b7:	8d 65 f8             	lea    -0x8(%ebp),%esp
     3ba:	5b                   	pop    %ebx
     3bb:	5e                   	pop    %esi
     3bc:	5d                   	pop    %ebp
     3bd:	c3                   	ret
     3be:	66 90                	xchg   %ax,%ax

000003c0 <panic>:
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     3c6:	ff 75 08             	push   0x8(%ebp)
     3c9:	68 5d 15 00 00       	push   $0x155d
     3ce:	6a 02                	push   $0x2
     3d0:	e8 4b 0e 00 00       	call   1220 <printf>
  exit();
     3d5:	e8 d9 0c 00 00       	call   10b3 <exit>
     3da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003e0 <fork1>:
{
     3e0:	55                   	push   %ebp
     3e1:	89 e5                	mov    %esp,%ebp
     3e3:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     3e6:	e8 c0 0c 00 00       	call   10ab <fork>
  if(pid == -1)
     3eb:	83 f8 ff             	cmp    $0xffffffff,%eax
     3ee:	74 02                	je     3f2 <fork1+0x12>
  return pid;
}
     3f0:	c9                   	leave
     3f1:	c3                   	ret
    panic("fork");
     3f2:	83 ec 0c             	sub    $0xc,%esp
     3f5:	68 64 15 00 00       	push   $0x1564
     3fa:	e8 c1 ff ff ff       	call   3c0 <panic>
     3ff:	90                   	nop

00000400 <runcmd>:
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	53                   	push   %ebx
     404:	83 ec 14             	sub    $0x14,%esp
     407:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     40a:	85 db                	test   %ebx,%ebx
     40c:	74 77                	je     485 <runcmd+0x85>
  switch(cmd->type){
     40e:	83 3b 05             	cmpl   $0x5,(%ebx)
     411:	0f 87 21 01 00 00    	ja     538 <runcmd+0x138>
     417:	8b 03                	mov    (%ebx),%eax
     419:	ff 24 85 60 16 00 00 	jmp    *0x1660(,%eax,4)
    printf(2, "file %s\n cmd %s\n",rcmd->file, rcmd->cmd);
     420:	ff 73 04             	push   0x4(%ebx)
     423:	ff 73 08             	push   0x8(%ebx)
     426:	68 80 15 00 00       	push   $0x1580
     42b:	6a 02                	push   $0x2
     42d:	e8 ee 0d 00 00       	call   1220 <printf>
    int fd = open("output.txt", O_WRONLY | O_CREATE);
     432:	58                   	pop    %eax
     433:	5a                   	pop    %edx
     434:	68 01 02 00 00       	push   $0x201
     439:	68 91 15 00 00       	push   $0x1591
     43e:	e8 b0 0c 00 00       	call   10f3 <open>
    if (fd == -1) {
     443:	83 c4 10             	add    $0x10,%esp
    int fd = open("output.txt", O_WRONLY | O_CREATE);
     446:	89 c3                	mov    %eax,%ebx
    if (fd == -1) {
     448:	83 f8 ff             	cmp    $0xffffffff,%eax
     44b:	0f 84 01 01 00 00    	je     552 <runcmd+0x152>
    if (dup2(fd, 0) == -1) {
     451:	50                   	push   %eax
     452:	50                   	push   %eax
     453:	6a 00                	push   $0x0
     455:	53                   	push   %ebx
     456:	e8 d8 0c 00 00       	call   1133 <dup2>
     45b:	83 c4 10             	add    $0x10,%esp
     45e:	83 c0 01             	add    $0x1,%eax
     461:	0f 84 01 01 00 00    	je     568 <runcmd+0x168>
    close(fd);
     467:	83 ec 0c             	sub    $0xc,%esp
     46a:	53                   	push   %ebx
     46b:	e8 6b 0c 00 00       	call   10db <close>
    printf("cmd %s",ecmd->argv[0]);
     470:	59                   	pop    %ecx
     471:	5b                   	pop    %ebx
     472:	ff 35 04 00 00 00    	push   0x4
     478:	68 c3 15 00 00       	push   $0x15c3
     47d:	e8 9e 0d 00 00       	call   1220 <printf>
    break;
     482:	83 c4 10             	add    $0x10,%esp
    exit();
     485:	e8 29 0c 00 00       	call   10b3 <exit>
    if (fork1() == 0){
     48a:	e8 51 ff ff ff       	call   3e0 <fork1>
     48f:	85 c0                	test   %eax,%eax
     491:	75 f2                	jne    485 <runcmd+0x85>
      runcmd(bcmd->cmd); //child process continues running whereas parent immediately breaks
     493:	83 ec 0c             	sub    $0xc,%esp
     496:	ff 73 04             	push   0x4(%ebx)
     499:	e8 62 ff ff ff       	call   400 <runcmd>
    if(ecmd->argv[0] == 0)
     49e:	8b 43 04             	mov    0x4(%ebx),%eax
     4a1:	85 c0                	test   %eax,%eax
     4a3:	74 e0                	je     485 <runcmd+0x85>
    exec(ecmd->argv[0], ecmd->argv);
     4a5:	8d 53 04             	lea    0x4(%ebx),%edx
     4a8:	51                   	push   %ecx
     4a9:	51                   	push   %ecx
     4aa:	52                   	push   %edx
     4ab:	50                   	push   %eax
     4ac:	e8 3a 0c 00 00       	call   10eb <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     4b1:	83 c4 0c             	add    $0xc,%esp
     4b4:	ff 73 04             	push   0x4(%ebx)
     4b7:	68 70 15 00 00       	push   $0x1570
     4bc:	6a 02                	push   $0x2
     4be:	e8 5d 0d 00 00       	call   1220 <printf>
    break;
     4c3:	83 c4 10             	add    $0x10,%esp
     4c6:	eb bd                	jmp    485 <runcmd+0x85>
    if(pipe(p) < 0)
     4c8:	83 ec 0c             	sub    $0xc,%esp
     4cb:	8d 45 f0             	lea    -0x10(%ebp),%eax
     4ce:	50                   	push   %eax
     4cf:	e8 ef 0b 00 00       	call   10c3 <pipe>
     4d4:	83 c4 10             	add    $0x10,%esp
     4d7:	85 c0                	test   %eax,%eax
     4d9:	78 6a                	js     545 <runcmd+0x145>
    if(fork1() == 0) {
     4db:	e8 00 ff ff ff       	call   3e0 <fork1>
     4e0:	85 c0                	test   %eax,%eax
     4e2:	0f 84 c4 00 00 00    	je     5ac <runcmd+0x1ac>
    if(fork1() == 0) {
     4e8:	e8 f3 fe ff ff       	call   3e0 <fork1>
     4ed:	85 c0                	test   %eax,%eax
     4ef:	0f 84 89 00 00 00    	je     57e <runcmd+0x17e>
    close(p[0]);
     4f5:	83 ec 0c             	sub    $0xc,%esp
     4f8:	ff 75 f0             	push   -0x10(%ebp)
     4fb:	e8 db 0b 00 00       	call   10db <close>
    close(p[1]);
     500:	58                   	pop    %eax
     501:	ff 75 f4             	push   -0xc(%ebp)
     504:	e8 d2 0b 00 00       	call   10db <close>
    wait();
     509:	e8 ad 0b 00 00       	call   10bb <wait>
    wait();
     50e:	e8 a8 0b 00 00       	call   10bb <wait>
    break;
     513:	83 c4 10             	add    $0x10,%esp
     516:	e9 6a ff ff ff       	jmp    485 <runcmd+0x85>
    if(fork1() == 0) {
     51b:	e8 c0 fe ff ff       	call   3e0 <fork1>
     520:	85 c0                	test   %eax,%eax
     522:	0f 84 6b ff ff ff    	je     493 <runcmd+0x93>
    wait();
     528:	e8 8e 0b 00 00       	call   10bb <wait>
    runcmd(lcmd->right);
     52d:	83 ec 0c             	sub    $0xc,%esp
     530:	ff 73 08             	push   0x8(%ebx)
     533:	e8 c8 fe ff ff       	call   400 <runcmd>
    panic("runcmd");
     538:	83 ec 0c             	sub    $0xc,%esp
     53b:	68 69 15 00 00       	push   $0x1569
     540:	e8 7b fe ff ff       	call   3c0 <panic>
        panic("pipe");
     545:	83 ec 0c             	sub    $0xc,%esp
     548:	68 ca 15 00 00       	push   $0x15ca
     54d:	e8 6e fe ff ff       	call   3c0 <panic>
        printf(2,"file open didn't work");
     552:	50                   	push   %eax
     553:	50                   	push   %eax
     554:	68 9c 15 00 00       	push   $0x159c
     559:	6a 02                	push   $0x2
     55b:	e8 c0 0c 00 00       	call   1220 <printf>
     560:	83 c4 10             	add    $0x10,%esp
     563:	e9 e9 fe ff ff       	jmp    451 <runcmd+0x51>
        printf(2,"dup2 didn't work");
     568:	50                   	push   %eax
     569:	50                   	push   %eax
     56a:	68 b2 15 00 00       	push   $0x15b2
     56f:	6a 02                	push   $0x2
     571:	e8 aa 0c 00 00       	call   1220 <printf>
     576:	83 c4 10             	add    $0x10,%esp
     579:	e9 e9 fe ff ff       	jmp    467 <runcmd+0x67>
        close(0);       // Close standard input
     57e:	83 ec 0c             	sub    $0xc,%esp
     581:	6a 00                	push   $0x0
     583:	e8 53 0b 00 00       	call   10db <close>
        dup(p[0]);      // Duplicate the read end of the pipe to standard input
     588:	5a                   	pop    %edx
     589:	ff 75 f0             	push   -0x10(%ebp)
     58c:	e8 9a 0b 00 00       	call   112b <dup>
        close(p[1]);    // Close the write end of the pipe
     591:	59                   	pop    %ecx
     592:	ff 75 f4             	push   -0xc(%ebp)
     595:	e8 41 0b 00 00       	call   10db <close>
        close(p[0]);
     59a:	58                   	pop    %eax
     59b:	ff 75 f0             	push   -0x10(%ebp)
     59e:	e8 38 0b 00 00       	call   10db <close>
        runcmd(pcmd->right);
     5a3:	58                   	pop    %eax
     5a4:	ff 73 08             	push   0x8(%ebx)
     5a7:	e8 54 fe ff ff       	call   400 <runcmd>
        close(1);       // Close standard output
     5ac:	83 ec 0c             	sub    $0xc,%esp
     5af:	6a 01                	push   $0x1
     5b1:	e8 25 0b 00 00       	call   10db <close>
        dup(p[1]);      // Duplicate the write end of the pipe to standard output
     5b6:	58                   	pop    %eax
     5b7:	ff 75 f4             	push   -0xc(%ebp)
     5ba:	e8 6c 0b 00 00       	call   112b <dup>
        close(p[0]);    // Close the read end of the pipe
     5bf:	58                   	pop    %eax
     5c0:	ff 75 f0             	push   -0x10(%ebp)
     5c3:	e8 13 0b 00 00       	call   10db <close>
        close(p[1]);
     5c8:	58                   	pop    %eax
     5c9:	ff 75 f4             	push   -0xc(%ebp)
     5cc:	e8 0a 0b 00 00       	call   10db <close>
        runcmd(pcmd->left);
     5d1:	5a                   	pop    %edx
     5d2:	ff 73 04             	push   0x4(%ebx)
     5d5:	e8 26 fe ff ff       	call   400 <runcmd>
     5da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005e0 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     5e0:	55                   	push   %ebp
     5e1:	89 e5                	mov    %esp,%ebp
     5e3:	53                   	push   %ebx
     5e4:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5e7:	6a 54                	push   $0x54
     5e9:	e8 72 0e 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5ee:	83 c4 0c             	add    $0xc,%esp
     5f1:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     5f3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     5f5:	6a 00                	push   $0x0
     5f7:	50                   	push   %eax
     5f8:	e8 33 09 00 00       	call   f30 <memset>
  cmd->type = EXEC;
     5fd:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     603:	89 d8                	mov    %ebx,%eax
     605:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     608:	c9                   	leave
     609:	c3                   	ret
     60a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000610 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     610:	55                   	push   %ebp
     611:	89 e5                	mov    %esp,%ebp
     613:	53                   	push   %ebx
     614:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     617:	6a 18                	push   $0x18
     619:	e8 42 0e 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     61e:	83 c4 0c             	add    $0xc,%esp
     621:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     623:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     625:	6a 00                	push   $0x0
     627:	50                   	push   %eax
     628:	e8 03 09 00 00       	call   f30 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     62d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     630:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     636:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     639:	8b 45 0c             	mov    0xc(%ebp),%eax
     63c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     63f:	8b 45 10             	mov    0x10(%ebp),%eax
     642:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     645:	8b 45 14             	mov    0x14(%ebp),%eax
     648:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     64b:	8b 45 18             	mov    0x18(%ebp),%eax
     64e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     651:	89 d8                	mov    %ebx,%eax
     653:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     656:	c9                   	leave
     657:	c3                   	ret
     658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     65f:	90                   	nop

00000660 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	53                   	push   %ebx
     664:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     667:	6a 0c                	push   $0xc
     669:	e8 f2 0d 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     66e:	83 c4 0c             	add    $0xc,%esp
     671:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     673:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     675:	6a 00                	push   $0x0
     677:	50                   	push   %eax
     678:	e8 b3 08 00 00       	call   f30 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     67d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     680:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     686:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     689:	8b 45 0c             	mov    0xc(%ebp),%eax
     68c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     68f:	89 d8                	mov    %ebx,%eax
     691:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     694:	c9                   	leave
     695:	c3                   	ret
     696:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     69d:	8d 76 00             	lea    0x0(%esi),%esi

000006a0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     6a0:	55                   	push   %ebp
     6a1:	89 e5                	mov    %esp,%ebp
     6a3:	53                   	push   %ebx
     6a4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     6a7:	6a 0c                	push   $0xc
     6a9:	e8 b2 0d 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6ae:	83 c4 0c             	add    $0xc,%esp
     6b1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     6b3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     6b5:	6a 00                	push   $0x0
     6b7:	50                   	push   %eax
     6b8:	e8 73 08 00 00       	call   f30 <memset>
  cmd->type = LIST;
  cmd->left = left;
     6bd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     6c0:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     6c6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     6c9:	8b 45 0c             	mov    0xc(%ebp),%eax
     6cc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     6cf:	89 d8                	mov    %ebx,%eax
     6d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     6d4:	c9                   	leave
     6d5:	c3                   	ret
     6d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6dd:	8d 76 00             	lea    0x0(%esi),%esi

000006e0 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     6e0:	55                   	push   %ebp
     6e1:	89 e5                	mov    %esp,%ebp
     6e3:	53                   	push   %ebx
     6e4:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     6e7:	6a 08                	push   $0x8
     6e9:	e8 72 0d 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6ee:	83 c4 0c             	add    $0xc,%esp
     6f1:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     6f3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     6f5:	6a 00                	push   $0x0
     6f7:	50                   	push   %eax
     6f8:	e8 33 08 00 00       	call   f30 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     6fd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     700:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     706:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     709:	89 d8                	mov    %ebx,%eax
     70b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     70e:	c9                   	leave
     70f:	c3                   	ret

00000710 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     710:	55                   	push   %ebp
     711:	89 e5                	mov    %esp,%ebp
     713:	57                   	push   %edi
     714:	56                   	push   %esi
     715:	53                   	push   %ebx
     716:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     719:	8b 45 08             	mov    0x8(%ebp),%eax
{
     71c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     71f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     722:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     724:	39 df                	cmp    %ebx,%edi
     726:	72 0f                	jb     737 <gettoken+0x27>
     728:	eb 25                	jmp    74f <gettoken+0x3f>
     72a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     730:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     733:	39 fb                	cmp    %edi,%ebx
     735:	74 18                	je     74f <gettoken+0x3f>
     737:	0f be 07             	movsbl (%edi),%eax
     73a:	83 ec 08             	sub    $0x8,%esp
     73d:	50                   	push   %eax
     73e:	68 08 1d 00 00       	push   $0x1d08
     743:	e8 08 08 00 00       	call   f50 <strchr>
     748:	83 c4 10             	add    $0x10,%esp
     74b:	85 c0                	test   %eax,%eax
     74d:	75 e1                	jne    730 <gettoken+0x20>
  if(q)
     74f:	85 f6                	test   %esi,%esi
     751:	74 02                	je     755 <gettoken+0x45>
    *q = s;
     753:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     755:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     758:	3c 3c                	cmp    $0x3c,%al
     75a:	0f 8f d0 00 00 00    	jg     830 <gettoken+0x120>
     760:	3c 3a                	cmp    $0x3a,%al
     762:	0f 8f bc 00 00 00    	jg     824 <gettoken+0x114>
     768:	84 c0                	test   %al,%al
     76a:	75 44                	jne    7b0 <gettoken+0xa0>
     76c:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     76e:	8b 4d 14             	mov    0x14(%ebp),%ecx
     771:	85 c9                	test   %ecx,%ecx
     773:	74 05                	je     77a <gettoken+0x6a>
    *eq = s;
     775:	8b 45 14             	mov    0x14(%ebp),%eax
     778:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     77a:	39 df                	cmp    %ebx,%edi
     77c:	72 09                	jb     787 <gettoken+0x77>
     77e:	eb 1f                	jmp    79f <gettoken+0x8f>
    s++;
     780:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     783:	39 fb                	cmp    %edi,%ebx
     785:	74 18                	je     79f <gettoken+0x8f>
     787:	0f be 07             	movsbl (%edi),%eax
     78a:	83 ec 08             	sub    $0x8,%esp
     78d:	50                   	push   %eax
     78e:	68 08 1d 00 00       	push   $0x1d08
     793:	e8 b8 07 00 00       	call   f50 <strchr>
     798:	83 c4 10             	add    $0x10,%esp
     79b:	85 c0                	test   %eax,%eax
     79d:	75 e1                	jne    780 <gettoken+0x70>
  *ps = s;
     79f:	8b 45 08             	mov    0x8(%ebp),%eax
     7a2:	89 38                	mov    %edi,(%eax)
  return ret;
}
     7a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7a7:	89 f0                	mov    %esi,%eax
     7a9:	5b                   	pop    %ebx
     7aa:	5e                   	pop    %esi
     7ab:	5f                   	pop    %edi
     7ac:	5d                   	pop    %ebp
     7ad:	c3                   	ret
     7ae:	66 90                	xchg   %ax,%ax
  switch(*s){
     7b0:	79 66                	jns    818 <gettoken+0x108>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     7b2:	39 df                	cmp    %ebx,%edi
     7b4:	72 39                	jb     7ef <gettoken+0xdf>
  if(eq)
     7b6:	8b 55 14             	mov    0x14(%ebp),%edx
     7b9:	85 d2                	test   %edx,%edx
     7bb:	0f 84 b3 00 00 00    	je     874 <gettoken+0x164>
    *eq = s;
     7c1:	8b 45 14             	mov    0x14(%ebp),%eax
     7c4:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     7c6:	e9 a9 00 00 00       	jmp    874 <gettoken+0x164>
     7cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     7cf:	90                   	nop
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     7d0:	0f be 07             	movsbl (%edi),%eax
     7d3:	83 ec 08             	sub    $0x8,%esp
     7d6:	50                   	push   %eax
     7d7:	68 00 1d 00 00       	push   $0x1d00
     7dc:	e8 6f 07 00 00       	call   f50 <strchr>
     7e1:	83 c4 10             	add    $0x10,%esp
     7e4:	85 c0                	test   %eax,%eax
     7e6:	75 1f                	jne    807 <gettoken+0xf7>
      s++;
     7e8:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     7eb:	39 fb                	cmp    %edi,%ebx
     7ed:	74 77                	je     866 <gettoken+0x156>
     7ef:	0f be 07             	movsbl (%edi),%eax
     7f2:	83 ec 08             	sub    $0x8,%esp
     7f5:	50                   	push   %eax
     7f6:	68 08 1d 00 00       	push   $0x1d08
     7fb:	e8 50 07 00 00       	call   f50 <strchr>
     800:	83 c4 10             	add    $0x10,%esp
     803:	85 c0                	test   %eax,%eax
     805:	74 c9                	je     7d0 <gettoken+0xc0>
    ret = 'a';
     807:	be 61 00 00 00       	mov    $0x61,%esi
     80c:	e9 5d ff ff ff       	jmp    76e <gettoken+0x5e>
     811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     818:	3c 26                	cmp    $0x26,%al
     81a:	74 08                	je     824 <gettoken+0x114>
     81c:	8d 48 d8             	lea    -0x28(%eax),%ecx
     81f:	80 f9 01             	cmp    $0x1,%cl
     822:	77 8e                	ja     7b2 <gettoken+0xa2>
  ret = *s;
     824:	0f be f0             	movsbl %al,%esi
    s++;
     827:	83 c7 01             	add    $0x1,%edi
    break;
     82a:	e9 3f ff ff ff       	jmp    76e <gettoken+0x5e>
     82f:	90                   	nop
  switch(*s){
     830:	3c 3e                	cmp    $0x3e,%al
     832:	75 1c                	jne    850 <gettoken+0x140>
    if(*s == '>'){
     834:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     838:	74 1f                	je     859 <gettoken+0x149>
    s++;
     83a:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     83d:	be 3e 00 00 00       	mov    $0x3e,%esi
     842:	e9 27 ff ff ff       	jmp    76e <gettoken+0x5e>
     847:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     84e:	66 90                	xchg   %ax,%ax
  switch(*s){
     850:	3c 7c                	cmp    $0x7c,%al
     852:	74 d0                	je     824 <gettoken+0x114>
     854:	e9 59 ff ff ff       	jmp    7b2 <gettoken+0xa2>
      s++;
     859:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     85c:	be 2b 00 00 00       	mov    $0x2b,%esi
     861:	e9 08 ff ff ff       	jmp    76e <gettoken+0x5e>
  if(eq)
     866:	8b 45 14             	mov    0x14(%ebp),%eax
     869:	85 c0                	test   %eax,%eax
     86b:	74 05                	je     872 <gettoken+0x162>
    *eq = s;
     86d:	8b 45 14             	mov    0x14(%ebp),%eax
     870:	89 18                	mov    %ebx,(%eax)
      s++;
     872:	89 df                	mov    %ebx,%edi
    ret = 'a';
     874:	be 61 00 00 00       	mov    $0x61,%esi
     879:	e9 21 ff ff ff       	jmp    79f <gettoken+0x8f>
     87e:	66 90                	xchg   %ax,%ax

00000880 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     880:	55                   	push   %ebp
     881:	89 e5                	mov    %esp,%ebp
     883:	57                   	push   %edi
     884:	56                   	push   %esi
     885:	53                   	push   %ebx
     886:	83 ec 0c             	sub    $0xc,%esp
     889:	8b 7d 08             	mov    0x8(%ebp),%edi
     88c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     88f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     891:	39 f3                	cmp    %esi,%ebx
     893:	72 12                	jb     8a7 <peek+0x27>
     895:	eb 28                	jmp    8bf <peek+0x3f>
     897:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     89e:	66 90                	xchg   %ax,%ax
    s++;
     8a0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     8a3:	39 de                	cmp    %ebx,%esi
     8a5:	74 18                	je     8bf <peek+0x3f>
     8a7:	0f be 03             	movsbl (%ebx),%eax
     8aa:	83 ec 08             	sub    $0x8,%esp
     8ad:	50                   	push   %eax
     8ae:	68 08 1d 00 00       	push   $0x1d08
     8b3:	e8 98 06 00 00       	call   f50 <strchr>
     8b8:	83 c4 10             	add    $0x10,%esp
     8bb:	85 c0                	test   %eax,%eax
     8bd:	75 e1                	jne    8a0 <peek+0x20>
  *ps = s;
     8bf:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     8c1:	0f be 03             	movsbl (%ebx),%eax
     8c4:	31 d2                	xor    %edx,%edx
     8c6:	84 c0                	test   %al,%al
     8c8:	75 0e                	jne    8d8 <peek+0x58>
}
     8ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8cd:	89 d0                	mov    %edx,%eax
     8cf:	5b                   	pop    %ebx
     8d0:	5e                   	pop    %esi
     8d1:	5f                   	pop    %edi
     8d2:	5d                   	pop    %ebp
     8d3:	c3                   	ret
     8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     8d8:	83 ec 08             	sub    $0x8,%esp
     8db:	50                   	push   %eax
     8dc:	ff 75 10             	push   0x10(%ebp)
     8df:	e8 6c 06 00 00       	call   f50 <strchr>
     8e4:	83 c4 10             	add    $0x10,%esp
     8e7:	31 d2                	xor    %edx,%edx
     8e9:	85 c0                	test   %eax,%eax
     8eb:	0f 95 c2             	setne  %dl
}
     8ee:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8f1:	5b                   	pop    %ebx
     8f2:	89 d0                	mov    %edx,%eax
     8f4:	5e                   	pop    %esi
     8f5:	5f                   	pop    %edi
     8f6:	5d                   	pop    %ebp
     8f7:	c3                   	ret
     8f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8ff:	90                   	nop

00000900 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     900:	55                   	push   %ebp
     901:	89 e5                	mov    %esp,%ebp
     903:	57                   	push   %edi
     904:	56                   	push   %esi
     905:	53                   	push   %ebx
     906:	83 ec 2c             	sub    $0x2c,%esp
     909:	8b 75 0c             	mov    0xc(%ebp),%esi
     90c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     90f:	90                   	nop
     910:	83 ec 04             	sub    $0x4,%esp
     913:	68 ec 15 00 00       	push   $0x15ec
     918:	53                   	push   %ebx
     919:	56                   	push   %esi
     91a:	e8 61 ff ff ff       	call   880 <peek>
     91f:	83 c4 10             	add    $0x10,%esp
     922:	85 c0                	test   %eax,%eax
     924:	0f 84 f6 00 00 00    	je     a20 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     92a:	6a 00                	push   $0x0
     92c:	6a 00                	push   $0x0
     92e:	53                   	push   %ebx
     92f:	56                   	push   %esi
     930:	e8 db fd ff ff       	call   710 <gettoken>
     935:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     937:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     93a:	50                   	push   %eax
     93b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     93e:	50                   	push   %eax
     93f:	53                   	push   %ebx
     940:	56                   	push   %esi
     941:	e8 ca fd ff ff       	call   710 <gettoken>
     946:	83 c4 20             	add    $0x20,%esp
     949:	83 f8 61             	cmp    $0x61,%eax
     94c:	0f 85 d9 00 00 00    	jne    a2b <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     952:	83 ff 3c             	cmp    $0x3c,%edi
     955:	74 69                	je     9c0 <parseredirs+0xc0>
     957:	83 ff 3e             	cmp    $0x3e,%edi
     95a:	74 05                	je     961 <parseredirs+0x61>
     95c:	83 ff 2b             	cmp    $0x2b,%edi
     95f:	75 af                	jne    910 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     961:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     964:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     967:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     96a:	89 55 d0             	mov    %edx,-0x30(%ebp)
     96d:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     970:	6a 18                	push   $0x18
     972:	e8 e9 0a 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     977:	83 c4 0c             	add    $0xc,%esp
     97a:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     97c:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     97e:	6a 00                	push   $0x0
     980:	50                   	push   %eax
     981:	e8 aa 05 00 00       	call   f30 <memset>
  cmd->type = REDIR;
     986:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     98c:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     98f:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     992:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     995:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     998:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     99b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     99e:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     9a5:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     9a8:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      break;
     9af:	89 7d 08             	mov    %edi,0x8(%ebp)
     9b2:	e9 59 ff ff ff       	jmp    910 <parseredirs+0x10>
     9b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     9be:	66 90                	xchg   %ax,%ax
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     9c0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     9c3:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     9c6:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     9c9:	89 55 d0             	mov    %edx,-0x30(%ebp)
     9cc:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     9cf:	6a 18                	push   $0x18
     9d1:	e8 8a 0a 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     9d6:	83 c4 0c             	add    $0xc,%esp
     9d9:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     9db:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     9dd:	6a 00                	push   $0x0
     9df:	50                   	push   %eax
     9e0:	e8 4b 05 00 00       	call   f30 <memset>
  cmd->cmd = subcmd;
     9e5:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     9e8:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     9eb:	89 7d 08             	mov    %edi,0x8(%ebp)
  cmd->efile = efile;
     9ee:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     9f1:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
      break;
     9f7:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     9fa:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     9fd:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     a00:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     a03:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     a0a:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      break;
     a11:	e9 fa fe ff ff       	jmp    910 <parseredirs+0x10>
     a16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a1d:	8d 76 00             	lea    0x0(%esi),%esi
    }
  }
  return cmd;
}
     a20:	8b 45 08             	mov    0x8(%ebp),%eax
     a23:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a26:	5b                   	pop    %ebx
     a27:	5e                   	pop    %esi
     a28:	5f                   	pop    %edi
     a29:	5d                   	pop    %ebp
     a2a:	c3                   	ret
      panic("missing file for redirection");
     a2b:	83 ec 0c             	sub    $0xc,%esp
     a2e:	68 cf 15 00 00       	push   $0x15cf
     a33:	e8 88 f9 ff ff       	call   3c0 <panic>
     a38:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a3f:	90                   	nop

00000a40 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	57                   	push   %edi
     a44:	56                   	push   %esi
     a45:	53                   	push   %ebx
     a46:	83 ec 30             	sub    $0x30,%esp
     a49:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a4c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     a4f:	68 ef 15 00 00       	push   $0x15ef
     a54:	56                   	push   %esi
     a55:	53                   	push   %ebx
     a56:	e8 25 fe ff ff       	call   880 <peek>
     a5b:	83 c4 10             	add    $0x10,%esp
     a5e:	85 c0                	test   %eax,%eax
     a60:	0f 85 aa 00 00 00    	jne    b10 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     a66:	83 ec 0c             	sub    $0xc,%esp
     a69:	89 c7                	mov    %eax,%edi
     a6b:	6a 54                	push   $0x54
     a6d:	e8 ee 09 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     a72:	83 c4 0c             	add    $0xc,%esp
     a75:	6a 54                	push   $0x54
     a77:	6a 00                	push   $0x0
     a79:	89 45 d0             	mov    %eax,-0x30(%ebp)
     a7c:	50                   	push   %eax
     a7d:	e8 ae 04 00 00       	call   f30 <memset>
  cmd->type = EXEC;
     a82:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     a85:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     a88:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     a8e:	56                   	push   %esi
     a8f:	53                   	push   %ebx
     a90:	50                   	push   %eax
     a91:	e8 6a fe ff ff       	call   900 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     a96:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     a99:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     a9c:	eb 15                	jmp    ab3 <parseexec+0x73>
     a9e:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     aa0:	83 ec 04             	sub    $0x4,%esp
     aa3:	56                   	push   %esi
     aa4:	53                   	push   %ebx
     aa5:	ff 75 d4             	push   -0x2c(%ebp)
     aa8:	e8 53 fe ff ff       	call   900 <parseredirs>
     aad:	83 c4 10             	add    $0x10,%esp
     ab0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     ab3:	83 ec 04             	sub    $0x4,%esp
     ab6:	68 06 16 00 00       	push   $0x1606
     abb:	56                   	push   %esi
     abc:	53                   	push   %ebx
     abd:	e8 be fd ff ff       	call   880 <peek>
     ac2:	83 c4 10             	add    $0x10,%esp
     ac5:	85 c0                	test   %eax,%eax
     ac7:	75 5f                	jne    b28 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     ac9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     acc:	50                   	push   %eax
     acd:	8d 45 e0             	lea    -0x20(%ebp),%eax
     ad0:	50                   	push   %eax
     ad1:	56                   	push   %esi
     ad2:	53                   	push   %ebx
     ad3:	e8 38 fc ff ff       	call   710 <gettoken>
     ad8:	83 c4 10             	add    $0x10,%esp
     adb:	85 c0                	test   %eax,%eax
     add:	74 49                	je     b28 <parseexec+0xe8>
    if(tok != 'a')
     adf:	83 f8 61             	cmp    $0x61,%eax
     ae2:	75 62                	jne    b46 <parseexec+0x106>
    cmd->argv[argc] = q;
     ae4:	8b 45 e0             	mov    -0x20(%ebp),%eax
     ae7:	8b 55 d0             	mov    -0x30(%ebp),%edx
     aea:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     aee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     af1:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     af5:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     af8:	83 ff 0a             	cmp    $0xa,%edi
     afb:	75 a3                	jne    aa0 <parseexec+0x60>
      panic("too many args");
     afd:	83 ec 0c             	sub    $0xc,%esp
     b00:	68 f8 15 00 00       	push   $0x15f8
     b05:	e8 b6 f8 ff ff       	call   3c0 <panic>
     b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     b10:	89 75 0c             	mov    %esi,0xc(%ebp)
     b13:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     b16:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b19:	5b                   	pop    %ebx
     b1a:	5e                   	pop    %esi
     b1b:	5f                   	pop    %edi
     b1c:	5d                   	pop    %ebp
    return parseblock(ps, es);
     b1d:	e9 ae 01 00 00       	jmp    cd0 <parseblock>
     b22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     b28:	8b 45 d0             	mov    -0x30(%ebp),%eax
     b2b:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     b32:	00 
  cmd->eargv[argc] = 0;
     b33:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     b3a:	00 
}
     b3b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     b3e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b41:	5b                   	pop    %ebx
     b42:	5e                   	pop    %esi
     b43:	5f                   	pop    %edi
     b44:	5d                   	pop    %ebp
     b45:	c3                   	ret
      panic("syntax");
     b46:	83 ec 0c             	sub    $0xc,%esp
     b49:	68 f1 15 00 00       	push   $0x15f1
     b4e:	e8 6d f8 ff ff       	call   3c0 <panic>
     b53:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000b60 <parsepipe>:
{
     b60:	55                   	push   %ebp
     b61:	89 e5                	mov    %esp,%ebp
     b63:	57                   	push   %edi
     b64:	56                   	push   %esi
     b65:	53                   	push   %ebx
     b66:	83 ec 14             	sub    $0x14,%esp
     b69:	8b 75 08             	mov    0x8(%ebp),%esi
     b6c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     b6f:	57                   	push   %edi
     b70:	56                   	push   %esi
     b71:	e8 ca fe ff ff       	call   a40 <parseexec>
  if(peek(ps, es, "|")){
     b76:	83 c4 0c             	add    $0xc,%esp
     b79:	68 0b 16 00 00       	push   $0x160b
  cmd = parseexec(ps, es);
     b7e:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     b80:	57                   	push   %edi
     b81:	56                   	push   %esi
     b82:	e8 f9 fc ff ff       	call   880 <peek>
     b87:	83 c4 10             	add    $0x10,%esp
     b8a:	85 c0                	test   %eax,%eax
     b8c:	75 12                	jne    ba0 <parsepipe+0x40>
}
     b8e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b91:	89 d8                	mov    %ebx,%eax
     b93:	5b                   	pop    %ebx
     b94:	5e                   	pop    %esi
     b95:	5f                   	pop    %edi
     b96:	5d                   	pop    %ebp
     b97:	c3                   	ret
     b98:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b9f:	90                   	nop
    gettoken(ps, es, 0, 0);
     ba0:	6a 00                	push   $0x0
     ba2:	6a 00                	push   $0x0
     ba4:	57                   	push   %edi
     ba5:	56                   	push   %esi
     ba6:	e8 65 fb ff ff       	call   710 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     bab:	58                   	pop    %eax
     bac:	5a                   	pop    %edx
     bad:	57                   	push   %edi
     bae:	56                   	push   %esi
     baf:	e8 ac ff ff ff       	call   b60 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     bb4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     bbb:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     bbd:	e8 9e 08 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     bc2:	83 c4 0c             	add    $0xc,%esp
     bc5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     bc7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     bc9:	6a 00                	push   $0x0
     bcb:	50                   	push   %eax
     bcc:	e8 5f 03 00 00       	call   f30 <memset>
  cmd->left = left;
     bd1:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     bd4:	83 c4 10             	add    $0x10,%esp
     bd7:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     bd9:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     bdf:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     be1:	89 7e 08             	mov    %edi,0x8(%esi)
}
     be4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     be7:	5b                   	pop    %ebx
     be8:	5e                   	pop    %esi
     be9:	5f                   	pop    %edi
     bea:	5d                   	pop    %ebp
     beb:	c3                   	ret
     bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000bf0 <parseline>:
{
     bf0:	55                   	push   %ebp
     bf1:	89 e5                	mov    %esp,%ebp
     bf3:	57                   	push   %edi
     bf4:	56                   	push   %esi
     bf5:	53                   	push   %ebx
     bf6:	83 ec 24             	sub    $0x24,%esp
     bf9:	8b 75 08             	mov    0x8(%ebp),%esi
     bfc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     bff:	57                   	push   %edi
     c00:	56                   	push   %esi
     c01:	e8 5a ff ff ff       	call   b60 <parsepipe>
  while(peek(ps, es, "&")){
     c06:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     c09:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     c0b:	eb 3b                	jmp    c48 <parseline+0x58>
     c0d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     c10:	6a 00                	push   $0x0
     c12:	6a 00                	push   $0x0
     c14:	57                   	push   %edi
     c15:	56                   	push   %esi
     c16:	e8 f5 fa ff ff       	call   710 <gettoken>
  cmd = malloc(sizeof(*cmd));
     c1b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     c22:	e8 39 08 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     c27:	83 c4 0c             	add    $0xc,%esp
     c2a:	6a 08                	push   $0x8
     c2c:	6a 00                	push   $0x0
     c2e:	50                   	push   %eax
     c2f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     c32:	e8 f9 02 00 00       	call   f30 <memset>
  cmd->type = BACK;
     c37:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     c3a:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     c3d:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     c43:	89 5a 04             	mov    %ebx,0x4(%edx)
     c46:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     c48:	83 ec 04             	sub    $0x4,%esp
     c4b:	68 0d 16 00 00       	push   $0x160d
     c50:	57                   	push   %edi
     c51:	56                   	push   %esi
     c52:	e8 29 fc ff ff       	call   880 <peek>
     c57:	83 c4 10             	add    $0x10,%esp
     c5a:	85 c0                	test   %eax,%eax
     c5c:	75 b2                	jne    c10 <parseline+0x20>
  if(peek(ps, es, ";")){
     c5e:	83 ec 04             	sub    $0x4,%esp
     c61:	68 09 16 00 00       	push   $0x1609
     c66:	57                   	push   %edi
     c67:	56                   	push   %esi
     c68:	e8 13 fc ff ff       	call   880 <peek>
     c6d:	83 c4 10             	add    $0x10,%esp
     c70:	85 c0                	test   %eax,%eax
     c72:	75 0c                	jne    c80 <parseline+0x90>
}
     c74:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c77:	89 d8                	mov    %ebx,%eax
     c79:	5b                   	pop    %ebx
     c7a:	5e                   	pop    %esi
     c7b:	5f                   	pop    %edi
     c7c:	5d                   	pop    %ebp
     c7d:	c3                   	ret
     c7e:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     c80:	6a 00                	push   $0x0
     c82:	6a 00                	push   $0x0
     c84:	57                   	push   %edi
     c85:	56                   	push   %esi
     c86:	e8 85 fa ff ff       	call   710 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     c8b:	58                   	pop    %eax
     c8c:	5a                   	pop    %edx
     c8d:	57                   	push   %edi
     c8e:	56                   	push   %esi
     c8f:	e8 5c ff ff ff       	call   bf0 <parseline>
  cmd = malloc(sizeof(*cmd));
     c94:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     c9b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     c9d:	e8 be 07 00 00       	call   1460 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     ca2:	83 c4 0c             	add    $0xc,%esp
     ca5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     ca7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     ca9:	6a 00                	push   $0x0
     cab:	50                   	push   %eax
     cac:	e8 7f 02 00 00       	call   f30 <memset>
  cmd->left = left;
     cb1:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     cb4:	83 c4 10             	add    $0x10,%esp
     cb7:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     cb9:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     cbf:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     cc1:	89 7e 08             	mov    %edi,0x8(%esi)
}
     cc4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cc7:	5b                   	pop    %ebx
     cc8:	5e                   	pop    %esi
     cc9:	5f                   	pop    %edi
     cca:	5d                   	pop    %ebp
     ccb:	c3                   	ret
     ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000cd0 <parseblock>:
{
     cd0:	55                   	push   %ebp
     cd1:	89 e5                	mov    %esp,%ebp
     cd3:	57                   	push   %edi
     cd4:	56                   	push   %esi
     cd5:	53                   	push   %ebx
     cd6:	83 ec 10             	sub    $0x10,%esp
     cd9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     cdc:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     cdf:	68 ef 15 00 00       	push   $0x15ef
     ce4:	56                   	push   %esi
     ce5:	53                   	push   %ebx
     ce6:	e8 95 fb ff ff       	call   880 <peek>
     ceb:	83 c4 10             	add    $0x10,%esp
     cee:	85 c0                	test   %eax,%eax
     cf0:	74 4a                	je     d3c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     cf2:	6a 00                	push   $0x0
     cf4:	6a 00                	push   $0x0
     cf6:	56                   	push   %esi
     cf7:	53                   	push   %ebx
     cf8:	e8 13 fa ff ff       	call   710 <gettoken>
  cmd = parseline(ps, es);
     cfd:	58                   	pop    %eax
     cfe:	5a                   	pop    %edx
     cff:	56                   	push   %esi
     d00:	53                   	push   %ebx
     d01:	e8 ea fe ff ff       	call   bf0 <parseline>
  if(!peek(ps, es, ")"))
     d06:	83 c4 0c             	add    $0xc,%esp
     d09:	68 2b 16 00 00       	push   $0x162b
  cmd = parseline(ps, es);
     d0e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     d10:	56                   	push   %esi
     d11:	53                   	push   %ebx
     d12:	e8 69 fb ff ff       	call   880 <peek>
     d17:	83 c4 10             	add    $0x10,%esp
     d1a:	85 c0                	test   %eax,%eax
     d1c:	74 2b                	je     d49 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     d1e:	6a 00                	push   $0x0
     d20:	6a 00                	push   $0x0
     d22:	56                   	push   %esi
     d23:	53                   	push   %ebx
     d24:	e8 e7 f9 ff ff       	call   710 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     d29:	83 c4 0c             	add    $0xc,%esp
     d2c:	56                   	push   %esi
     d2d:	53                   	push   %ebx
     d2e:	57                   	push   %edi
     d2f:	e8 cc fb ff ff       	call   900 <parseredirs>
}
     d34:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d37:	5b                   	pop    %ebx
     d38:	5e                   	pop    %esi
     d39:	5f                   	pop    %edi
     d3a:	5d                   	pop    %ebp
     d3b:	c3                   	ret
    panic("parseblock");
     d3c:	83 ec 0c             	sub    $0xc,%esp
     d3f:	68 0f 16 00 00       	push   $0x160f
     d44:	e8 77 f6 ff ff       	call   3c0 <panic>
    panic("syntax - missing )");
     d49:	83 ec 0c             	sub    $0xc,%esp
     d4c:	68 1a 16 00 00       	push   $0x161a
     d51:	e8 6a f6 ff ff       	call   3c0 <panic>
     d56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d5d:	8d 76 00             	lea    0x0(%esi),%esi

00000d60 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     d60:	55                   	push   %ebp
     d61:	89 e5                	mov    %esp,%ebp
     d63:	53                   	push   %ebx
     d64:	83 ec 04             	sub    $0x4,%esp
     d67:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     d6a:	85 db                	test   %ebx,%ebx
     d6c:	0f 84 7e 00 00 00    	je     df0 <nulterminate+0x90>
    return 0;

  switch(cmd->type){
     d72:	83 3b 05             	cmpl   $0x5,(%ebx)
     d75:	77 20                	ja     d97 <nulterminate+0x37>
     d77:	8b 03                	mov    (%ebx),%eax
     d79:	ff 24 85 78 16 00 00 	jmp    *0x1678(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     d80:	83 ec 0c             	sub    $0xc,%esp
     d83:	ff 73 04             	push   0x4(%ebx)
     d86:	e8 d5 ff ff ff       	call   d60 <nulterminate>
    nulterminate(lcmd->right);
     d8b:	58                   	pop    %eax
     d8c:	ff 73 08             	push   0x8(%ebx)
     d8f:	e8 cc ff ff ff       	call   d60 <nulterminate>
    break;
     d94:	83 c4 10             	add    $0x10,%esp
    return 0;
     d97:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     d99:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     d9c:	c9                   	leave
     d9d:	c3                   	ret
     d9e:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     da0:	83 ec 0c             	sub    $0xc,%esp
     da3:	ff 73 04             	push   0x4(%ebx)
     da6:	e8 b5 ff ff ff       	call   d60 <nulterminate>
    break;
     dab:	83 c4 10             	add    $0x10,%esp
     dae:	eb e7                	jmp    d97 <nulterminate+0x37>
    for(i=0; ecmd->argv[i]; i++)
     db0:	8b 4b 04             	mov    0x4(%ebx),%ecx
     db3:	8d 43 08             	lea    0x8(%ebx),%eax
     db6:	85 c9                	test   %ecx,%ecx
     db8:	74 dd                	je     d97 <nulterminate+0x37>
     dba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     dc0:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     dc3:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     dc6:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     dc9:	8b 50 fc             	mov    -0x4(%eax),%edx
     dcc:	85 d2                	test   %edx,%edx
     dce:	75 f0                	jne    dc0 <nulterminate+0x60>
     dd0:	eb c5                	jmp    d97 <nulterminate+0x37>
     dd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    nulterminate(rcmd->cmd);
     dd8:	83 ec 0c             	sub    $0xc,%esp
     ddb:	ff 73 04             	push   0x4(%ebx)
     dde:	e8 7d ff ff ff       	call   d60 <nulterminate>
    *rcmd->efile = 0;
     de3:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     de6:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     de9:	c6 00 00             	movb   $0x0,(%eax)
    break;
     dec:	eb a9                	jmp    d97 <nulterminate+0x37>
     dee:	66 90                	xchg   %ax,%ax
    return 0;
     df0:	31 c0                	xor    %eax,%eax
     df2:	eb a5                	jmp    d99 <nulterminate+0x39>
     df4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     dfb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     dff:	90                   	nop

00000e00 <parsecmd>:
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	57                   	push   %edi
     e04:	56                   	push   %esi
  cmd = parseline(&s, es);
     e05:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     e08:	53                   	push   %ebx
     e09:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     e0c:	8b 5d 08             	mov    0x8(%ebp),%ebx
     e0f:	53                   	push   %ebx
     e10:	e8 eb 00 00 00       	call   f00 <strlen>
  cmd = parseline(&s, es);
     e15:	59                   	pop    %ecx
     e16:	5e                   	pop    %esi
  es = s + strlen(s);
     e17:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     e19:	53                   	push   %ebx
     e1a:	57                   	push   %edi
     e1b:	e8 d0 fd ff ff       	call   bf0 <parseline>
  peek(&s, es, "");
     e20:	83 c4 0c             	add    $0xc,%esp
     e23:	68 7f 15 00 00       	push   $0x157f
  cmd = parseline(&s, es);
     e28:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     e2a:	53                   	push   %ebx
     e2b:	57                   	push   %edi
     e2c:	e8 4f fa ff ff       	call   880 <peek>
  if(s != es){
     e31:	8b 45 08             	mov    0x8(%ebp),%eax
     e34:	83 c4 10             	add    $0x10,%esp
     e37:	39 d8                	cmp    %ebx,%eax
     e39:	75 13                	jne    e4e <parsecmd+0x4e>
  nulterminate(cmd);
     e3b:	83 ec 0c             	sub    $0xc,%esp
     e3e:	56                   	push   %esi
     e3f:	e8 1c ff ff ff       	call   d60 <nulterminate>
}
     e44:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e47:	89 f0                	mov    %esi,%eax
     e49:	5b                   	pop    %ebx
     e4a:	5e                   	pop    %esi
     e4b:	5f                   	pop    %edi
     e4c:	5d                   	pop    %ebp
     e4d:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     e4e:	52                   	push   %edx
     e4f:	50                   	push   %eax
     e50:	68 2d 16 00 00       	push   $0x162d
     e55:	6a 02                	push   $0x2
     e57:	e8 c4 03 00 00       	call   1220 <printf>
    panic("syntax");
     e5c:	c7 04 24 f1 15 00 00 	movl   $0x15f1,(%esp)
     e63:	e8 58 f5 ff ff       	call   3c0 <panic>
     e68:	66 90                	xchg   %ax,%ax
     e6a:	66 90                	xchg   %ax,%ax
     e6c:	66 90                	xchg   %ax,%ax
     e6e:	66 90                	xchg   %ax,%ax

00000e70 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     e70:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     e71:	31 c0                	xor    %eax,%eax
{
     e73:	89 e5                	mov    %esp,%ebp
     e75:	53                   	push   %ebx
     e76:	8b 4d 08             	mov    0x8(%ebp),%ecx
     e79:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     e80:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     e84:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     e87:	83 c0 01             	add    $0x1,%eax
     e8a:	84 d2                	test   %dl,%dl
     e8c:	75 f2                	jne    e80 <strcpy+0x10>
    ;
  return os;
}
     e8e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     e91:	89 c8                	mov    %ecx,%eax
     e93:	c9                   	leave
     e94:	c3                   	ret
     e95:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ea0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     ea0:	55                   	push   %ebp
     ea1:	89 e5                	mov    %esp,%ebp
     ea3:	53                   	push   %ebx
     ea4:	8b 55 08             	mov    0x8(%ebp),%edx
     ea7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     eaa:	0f b6 02             	movzbl (%edx),%eax
     ead:	84 c0                	test   %al,%al
     eaf:	75 17                	jne    ec8 <strcmp+0x28>
     eb1:	eb 3a                	jmp    eed <strcmp+0x4d>
     eb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     eb7:	90                   	nop
     eb8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     ebc:	83 c2 01             	add    $0x1,%edx
     ebf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     ec2:	84 c0                	test   %al,%al
     ec4:	74 1a                	je     ee0 <strcmp+0x40>
    p++, q++;
     ec6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
     ec8:	0f b6 19             	movzbl (%ecx),%ebx
     ecb:	38 c3                	cmp    %al,%bl
     ecd:	74 e9                	je     eb8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
     ecf:	29 d8                	sub    %ebx,%eax
}
     ed1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ed4:	c9                   	leave
     ed5:	c3                   	ret
     ed6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     edd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
     ee0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     ee4:	31 c0                	xor    %eax,%eax
     ee6:	29 d8                	sub    %ebx,%eax
}
     ee8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     eeb:	c9                   	leave
     eec:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     eed:	0f b6 19             	movzbl (%ecx),%ebx
     ef0:	31 c0                	xor    %eax,%eax
     ef2:	eb db                	jmp    ecf <strcmp+0x2f>
     ef4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     efb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     eff:	90                   	nop

00000f00 <strlen>:

uint
strlen(char *s)
{
     f00:	55                   	push   %ebp
     f01:	89 e5                	mov    %esp,%ebp
     f03:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     f06:	80 3a 00             	cmpb   $0x0,(%edx)
     f09:	74 15                	je     f20 <strlen+0x20>
     f0b:	31 c0                	xor    %eax,%eax
     f0d:	8d 76 00             	lea    0x0(%esi),%esi
     f10:	83 c0 01             	add    $0x1,%eax
     f13:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     f17:	89 c1                	mov    %eax,%ecx
     f19:	75 f5                	jne    f10 <strlen+0x10>
    ;
  return n;
}
     f1b:	89 c8                	mov    %ecx,%eax
     f1d:	5d                   	pop    %ebp
     f1e:	c3                   	ret
     f1f:	90                   	nop
  for(n = 0; s[n]; n++)
     f20:	31 c9                	xor    %ecx,%ecx
}
     f22:	5d                   	pop    %ebp
     f23:	89 c8                	mov    %ecx,%eax
     f25:	c3                   	ret
     f26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f2d:	8d 76 00             	lea    0x0(%esi),%esi

00000f30 <memset>:

void*
memset(void *dst, int c, uint n)
{
     f30:	55                   	push   %ebp
     f31:	89 e5                	mov    %esp,%ebp
     f33:	57                   	push   %edi
     f34:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     f37:	8b 4d 10             	mov    0x10(%ebp),%ecx
     f3a:	8b 45 0c             	mov    0xc(%ebp),%eax
     f3d:	89 d7                	mov    %edx,%edi
     f3f:	fc                   	cld
     f40:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     f42:	8b 7d fc             	mov    -0x4(%ebp),%edi
     f45:	89 d0                	mov    %edx,%eax
     f47:	c9                   	leave
     f48:	c3                   	ret
     f49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000f50 <strchr>:

char*
strchr(const char *s, char c)
{
     f50:	55                   	push   %ebp
     f51:	89 e5                	mov    %esp,%ebp
     f53:	8b 45 08             	mov    0x8(%ebp),%eax
     f56:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     f5a:	0f b6 10             	movzbl (%eax),%edx
     f5d:	84 d2                	test   %dl,%dl
     f5f:	75 12                	jne    f73 <strchr+0x23>
     f61:	eb 1d                	jmp    f80 <strchr+0x30>
     f63:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f67:	90                   	nop
     f68:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     f6c:	83 c0 01             	add    $0x1,%eax
     f6f:	84 d2                	test   %dl,%dl
     f71:	74 0d                	je     f80 <strchr+0x30>
    if(*s == c)
     f73:	38 d1                	cmp    %dl,%cl
     f75:	75 f1                	jne    f68 <strchr+0x18>
      return (char*)s;
  return 0;
}
     f77:	5d                   	pop    %ebp
     f78:	c3                   	ret
     f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     f80:	31 c0                	xor    %eax,%eax
}
     f82:	5d                   	pop    %ebp
     f83:	c3                   	ret
     f84:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f8f:	90                   	nop

00000f90 <gets>:

char*
gets(char *buf, int max)
{
     f90:	55                   	push   %ebp
     f91:	89 e5                	mov    %esp,%ebp
     f93:	57                   	push   %edi
     f94:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     f95:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
     f98:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     f99:	31 db                	xor    %ebx,%ebx
{
     f9b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     f9e:	eb 27                	jmp    fc7 <gets+0x37>
    cc = read(0, &c, 1);
     fa0:	83 ec 04             	sub    $0x4,%esp
     fa3:	6a 01                	push   $0x1
     fa5:	56                   	push   %esi
     fa6:	6a 00                	push   $0x0
     fa8:	e8 1e 01 00 00       	call   10cb <read>
    if(cc < 1)
     fad:	83 c4 10             	add    $0x10,%esp
     fb0:	85 c0                	test   %eax,%eax
     fb2:	7e 1d                	jle    fd1 <gets+0x41>
      break;
    buf[i++] = c;
     fb4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     fb8:	8b 55 08             	mov    0x8(%ebp),%edx
     fbb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     fbf:	3c 0a                	cmp    $0xa,%al
     fc1:	74 10                	je     fd3 <gets+0x43>
     fc3:	3c 0d                	cmp    $0xd,%al
     fc5:	74 0c                	je     fd3 <gets+0x43>
  for(i=0; i+1 < max; ){
     fc7:	89 df                	mov    %ebx,%edi
     fc9:	83 c3 01             	add    $0x1,%ebx
     fcc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     fcf:	7c cf                	jl     fa0 <gets+0x10>
     fd1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
     fd3:	8b 45 08             	mov    0x8(%ebp),%eax
     fd6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     fda:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fdd:	5b                   	pop    %ebx
     fde:	5e                   	pop    %esi
     fdf:	5f                   	pop    %edi
     fe0:	5d                   	pop    %ebp
     fe1:	c3                   	ret
     fe2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     fe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ff0 <stat>:

int
stat(char *n, struct stat *st)
{
     ff0:	55                   	push   %ebp
     ff1:	89 e5                	mov    %esp,%ebp
     ff3:	56                   	push   %esi
     ff4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     ff5:	83 ec 08             	sub    $0x8,%esp
     ff8:	6a 00                	push   $0x0
     ffa:	ff 75 08             	push   0x8(%ebp)
     ffd:	e8 f1 00 00 00       	call   10f3 <open>
  if(fd < 0)
    1002:	83 c4 10             	add    $0x10,%esp
    1005:	85 c0                	test   %eax,%eax
    1007:	78 27                	js     1030 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    1009:	83 ec 08             	sub    $0x8,%esp
    100c:	ff 75 0c             	push   0xc(%ebp)
    100f:	89 c3                	mov    %eax,%ebx
    1011:	50                   	push   %eax
    1012:	e8 f4 00 00 00       	call   110b <fstat>
  close(fd);
    1017:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    101a:	89 c6                	mov    %eax,%esi
  close(fd);
    101c:	e8 ba 00 00 00       	call   10db <close>
  return r;
    1021:	83 c4 10             	add    $0x10,%esp
}
    1024:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1027:	89 f0                	mov    %esi,%eax
    1029:	5b                   	pop    %ebx
    102a:	5e                   	pop    %esi
    102b:	5d                   	pop    %ebp
    102c:	c3                   	ret
    102d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1030:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1035:	eb ed                	jmp    1024 <stat+0x34>
    1037:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    103e:	66 90                	xchg   %ax,%ax

00001040 <atoi>:

int
atoi(const char *s)
{
    1040:	55                   	push   %ebp
    1041:	89 e5                	mov    %esp,%ebp
    1043:	53                   	push   %ebx
    1044:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1047:	0f be 02             	movsbl (%edx),%eax
    104a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    104d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1050:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1055:	77 1e                	ja     1075 <atoi+0x35>
    1057:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    105e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    1060:	83 c2 01             	add    $0x1,%edx
    1063:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1066:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    106a:	0f be 02             	movsbl (%edx),%eax
    106d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1070:	80 fb 09             	cmp    $0x9,%bl
    1073:	76 eb                	jbe    1060 <atoi+0x20>
  return n;
}
    1075:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1078:	89 c8                	mov    %ecx,%eax
    107a:	c9                   	leave
    107b:	c3                   	ret
    107c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001080 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1080:	55                   	push   %ebp
    1081:	89 e5                	mov    %esp,%ebp
    1083:	57                   	push   %edi
    1084:	56                   	push   %esi
    1085:	8b 45 10             	mov    0x10(%ebp),%eax
    1088:	8b 55 08             	mov    0x8(%ebp),%edx
    108b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    108e:	85 c0                	test   %eax,%eax
    1090:	7e 13                	jle    10a5 <memmove+0x25>
    1092:	01 d0                	add    %edx,%eax
  dst = vdst;
    1094:	89 d7                	mov    %edx,%edi
    1096:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    109d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    10a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    10a1:	39 f8                	cmp    %edi,%eax
    10a3:	75 fb                	jne    10a0 <memmove+0x20>
  return vdst;
}
    10a5:	5e                   	pop    %esi
    10a6:	89 d0                	mov    %edx,%eax
    10a8:	5f                   	pop    %edi
    10a9:	5d                   	pop    %ebp
    10aa:	c3                   	ret

000010ab <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    10ab:	b8 01 00 00 00       	mov    $0x1,%eax
    10b0:	cd 40                	int    $0x40
    10b2:	c3                   	ret

000010b3 <exit>:
SYSCALL(exit)
    10b3:	b8 02 00 00 00       	mov    $0x2,%eax
    10b8:	cd 40                	int    $0x40
    10ba:	c3                   	ret

000010bb <wait>:
SYSCALL(wait)
    10bb:	b8 03 00 00 00       	mov    $0x3,%eax
    10c0:	cd 40                	int    $0x40
    10c2:	c3                   	ret

000010c3 <pipe>:
SYSCALL(pipe)
    10c3:	b8 04 00 00 00       	mov    $0x4,%eax
    10c8:	cd 40                	int    $0x40
    10ca:	c3                   	ret

000010cb <read>:
SYSCALL(read)
    10cb:	b8 05 00 00 00       	mov    $0x5,%eax
    10d0:	cd 40                	int    $0x40
    10d2:	c3                   	ret

000010d3 <write>:
SYSCALL(write)
    10d3:	b8 10 00 00 00       	mov    $0x10,%eax
    10d8:	cd 40                	int    $0x40
    10da:	c3                   	ret

000010db <close>:
SYSCALL(close)
    10db:	b8 15 00 00 00       	mov    $0x15,%eax
    10e0:	cd 40                	int    $0x40
    10e2:	c3                   	ret

000010e3 <kill>:
SYSCALL(kill)
    10e3:	b8 06 00 00 00       	mov    $0x6,%eax
    10e8:	cd 40                	int    $0x40
    10ea:	c3                   	ret

000010eb <exec>:
SYSCALL(exec)
    10eb:	b8 07 00 00 00       	mov    $0x7,%eax
    10f0:	cd 40                	int    $0x40
    10f2:	c3                   	ret

000010f3 <open>:
SYSCALL(open)
    10f3:	b8 0f 00 00 00       	mov    $0xf,%eax
    10f8:	cd 40                	int    $0x40
    10fa:	c3                   	ret

000010fb <mknod>:
SYSCALL(mknod)
    10fb:	b8 11 00 00 00       	mov    $0x11,%eax
    1100:	cd 40                	int    $0x40
    1102:	c3                   	ret

00001103 <unlink>:
SYSCALL(unlink)
    1103:	b8 12 00 00 00       	mov    $0x12,%eax
    1108:	cd 40                	int    $0x40
    110a:	c3                   	ret

0000110b <fstat>:
SYSCALL(fstat)
    110b:	b8 08 00 00 00       	mov    $0x8,%eax
    1110:	cd 40                	int    $0x40
    1112:	c3                   	ret

00001113 <link>:
SYSCALL(link)
    1113:	b8 13 00 00 00       	mov    $0x13,%eax
    1118:	cd 40                	int    $0x40
    111a:	c3                   	ret

0000111b <mkdir>:
SYSCALL(mkdir)
    111b:	b8 14 00 00 00       	mov    $0x14,%eax
    1120:	cd 40                	int    $0x40
    1122:	c3                   	ret

00001123 <chdir>:
SYSCALL(chdir)
    1123:	b8 09 00 00 00       	mov    $0x9,%eax
    1128:	cd 40                	int    $0x40
    112a:	c3                   	ret

0000112b <dup>:
SYSCALL(dup)
    112b:	b8 0a 00 00 00       	mov    $0xa,%eax
    1130:	cd 40                	int    $0x40
    1132:	c3                   	ret

00001133 <dup2>:
SYSCALL(dup2)
    1133:	b8 19 00 00 00       	mov    $0x19,%eax
    1138:	cd 40                	int    $0x40
    113a:	c3                   	ret

0000113b <getpid>:
SYSCALL(getpid)
    113b:	b8 0b 00 00 00       	mov    $0xb,%eax
    1140:	cd 40                	int    $0x40
    1142:	c3                   	ret

00001143 <sbrk>:
SYSCALL(sbrk)
    1143:	b8 0c 00 00 00       	mov    $0xc,%eax
    1148:	cd 40                	int    $0x40
    114a:	c3                   	ret

0000114b <sleep>:
SYSCALL(sleep)
    114b:	b8 0d 00 00 00       	mov    $0xd,%eax
    1150:	cd 40                	int    $0x40
    1152:	c3                   	ret

00001153 <uptime>:
SYSCALL(uptime)
    1153:	b8 0e 00 00 00       	mov    $0xe,%eax
    1158:	cd 40                	int    $0x40
    115a:	c3                   	ret

0000115b <shutdown>:
SYSCALL(shutdown)
    115b:	b8 16 00 00 00       	mov    $0x16,%eax
    1160:	cd 40                	int    $0x40
    1162:	c3                   	ret

00001163 <cps>:
SYSCALL(cps)
    1163:	b8 17 00 00 00       	mov    $0x17,%eax
    1168:	cd 40                	int    $0x40
    116a:	c3                   	ret

0000116b <chpr>:
SYSCALL(chpr)
    116b:	b8 18 00 00 00       	mov    $0x18,%eax
    1170:	cd 40                	int    $0x40
    1172:	c3                   	ret
    1173:	66 90                	xchg   %ax,%ax
    1175:	66 90                	xchg   %ax,%ax
    1177:	66 90                	xchg   %ax,%ax
    1179:	66 90                	xchg   %ax,%ax
    117b:	66 90                	xchg   %ax,%ax
    117d:	66 90                	xchg   %ax,%ax
    117f:	90                   	nop

00001180 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1180:	55                   	push   %ebp
    1181:	89 e5                	mov    %esp,%ebp
    1183:	57                   	push   %edi
    1184:	56                   	push   %esi
    1185:	53                   	push   %ebx
    1186:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    1188:	89 d1                	mov    %edx,%ecx
{
    118a:	83 ec 3c             	sub    $0x3c,%esp
    118d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
    1190:	85 d2                	test   %edx,%edx
    1192:	0f 89 80 00 00 00    	jns    1218 <printint+0x98>
    1198:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    119c:	74 7a                	je     1218 <printint+0x98>
    x = -xx;
    119e:	f7 d9                	neg    %ecx
    neg = 1;
    11a0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
    11a5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    11a8:	31 f6                	xor    %esi,%esi
    11aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    11b0:	89 c8                	mov    %ecx,%eax
    11b2:	31 d2                	xor    %edx,%edx
    11b4:	89 f7                	mov    %esi,%edi
    11b6:	f7 f3                	div    %ebx
    11b8:	8d 76 01             	lea    0x1(%esi),%esi
    11bb:	0f b6 92 f0 16 00 00 	movzbl 0x16f0(%edx),%edx
    11c2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
    11c6:	89 ca                	mov    %ecx,%edx
    11c8:	89 c1                	mov    %eax,%ecx
    11ca:	39 da                	cmp    %ebx,%edx
    11cc:	73 e2                	jae    11b0 <printint+0x30>
  if(neg)
    11ce:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    11d1:	85 c0                	test   %eax,%eax
    11d3:	74 07                	je     11dc <printint+0x5c>
    buf[i++] = '-';
    11d5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    buf[i++] = digits[x % base];
    11da:	89 f7                	mov    %esi,%edi
    11dc:	8d 5d d8             	lea    -0x28(%ebp),%ebx
    11df:	8b 75 c0             	mov    -0x40(%ebp),%esi
    11e2:	01 df                	add    %ebx,%edi
    11e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  while(--i >= 0)
    putc(fd, buf[i]);
    11e8:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
    11eb:	83 ec 04             	sub    $0x4,%esp
    11ee:	88 45 d7             	mov    %al,-0x29(%ebp)
    11f1:	8d 45 d7             	lea    -0x29(%ebp),%eax
    11f4:	6a 01                	push   $0x1
    11f6:	50                   	push   %eax
    11f7:	56                   	push   %esi
    11f8:	e8 d6 fe ff ff       	call   10d3 <write>
  while(--i >= 0)
    11fd:	89 f8                	mov    %edi,%eax
    11ff:	83 c4 10             	add    $0x10,%esp
    1202:	83 ef 01             	sub    $0x1,%edi
    1205:	39 d8                	cmp    %ebx,%eax
    1207:	75 df                	jne    11e8 <printint+0x68>
}
    1209:	8d 65 f4             	lea    -0xc(%ebp),%esp
    120c:	5b                   	pop    %ebx
    120d:	5e                   	pop    %esi
    120e:	5f                   	pop    %edi
    120f:	5d                   	pop    %ebp
    1210:	c3                   	ret
    1211:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1218:	31 c0                	xor    %eax,%eax
    121a:	eb 89                	jmp    11a5 <printint+0x25>
    121c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001220 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1220:	55                   	push   %ebp
    1221:	89 e5                	mov    %esp,%ebp
    1223:	57                   	push   %edi
    1224:	56                   	push   %esi
    1225:	53                   	push   %ebx
    1226:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1229:	8b 75 0c             	mov    0xc(%ebp),%esi
{
    122c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
    122f:	0f b6 1e             	movzbl (%esi),%ebx
    1232:	83 c6 01             	add    $0x1,%esi
    1235:	84 db                	test   %bl,%bl
    1237:	74 67                	je     12a0 <printf+0x80>
    1239:	8d 4d 10             	lea    0x10(%ebp),%ecx
    123c:	31 d2                	xor    %edx,%edx
    123e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
    1241:	eb 34                	jmp    1277 <printf+0x57>
    1243:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1247:	90                   	nop
    1248:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    124b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1250:	83 f8 25             	cmp    $0x25,%eax
    1253:	74 18                	je     126d <printf+0x4d>
  write(fd, &c, 1);
    1255:	83 ec 04             	sub    $0x4,%esp
    1258:	8d 45 e7             	lea    -0x19(%ebp),%eax
    125b:	88 5d e7             	mov    %bl,-0x19(%ebp)
    125e:	6a 01                	push   $0x1
    1260:	50                   	push   %eax
    1261:	57                   	push   %edi
    1262:	e8 6c fe ff ff       	call   10d3 <write>
    1267:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    126a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    126d:	0f b6 1e             	movzbl (%esi),%ebx
    1270:	83 c6 01             	add    $0x1,%esi
    1273:	84 db                	test   %bl,%bl
    1275:	74 29                	je     12a0 <printf+0x80>
    c = fmt[i] & 0xff;
    1277:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    127a:	85 d2                	test   %edx,%edx
    127c:	74 ca                	je     1248 <printf+0x28>
      }
    } else if(state == '%'){
    127e:	83 fa 25             	cmp    $0x25,%edx
    1281:	75 ea                	jne    126d <printf+0x4d>
      if(c == 'd'){
    1283:	83 f8 25             	cmp    $0x25,%eax
    1286:	0f 84 24 01 00 00    	je     13b0 <printf+0x190>
    128c:	83 e8 63             	sub    $0x63,%eax
    128f:	83 f8 15             	cmp    $0x15,%eax
    1292:	77 1c                	ja     12b0 <printf+0x90>
    1294:	ff 24 85 98 16 00 00 	jmp    *0x1698(,%eax,4)
    129b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    129f:	90                   	nop
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    12a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12a3:	5b                   	pop    %ebx
    12a4:	5e                   	pop    %esi
    12a5:	5f                   	pop    %edi
    12a6:	5d                   	pop    %ebp
    12a7:	c3                   	ret
    12a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12af:	90                   	nop
  write(fd, &c, 1);
    12b0:	83 ec 04             	sub    $0x4,%esp
    12b3:	8d 55 e7             	lea    -0x19(%ebp),%edx
    12b6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    12ba:	6a 01                	push   $0x1
    12bc:	52                   	push   %edx
    12bd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    12c0:	57                   	push   %edi
    12c1:	e8 0d fe ff ff       	call   10d3 <write>
    12c6:	83 c4 0c             	add    $0xc,%esp
    12c9:	88 5d e7             	mov    %bl,-0x19(%ebp)
    12cc:	6a 01                	push   $0x1
    12ce:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    12d1:	52                   	push   %edx
    12d2:	57                   	push   %edi
    12d3:	e8 fb fd ff ff       	call   10d3 <write>
        putc(fd, c);
    12d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
    12db:	31 d2                	xor    %edx,%edx
    12dd:	eb 8e                	jmp    126d <printf+0x4d>
    12df:	90                   	nop
        printint(fd, *ap, 16, 0);
    12e0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    12e3:	83 ec 0c             	sub    $0xc,%esp
    12e6:	b9 10 00 00 00       	mov    $0x10,%ecx
    12eb:	8b 13                	mov    (%ebx),%edx
    12ed:	6a 00                	push   $0x0
    12ef:	89 f8                	mov    %edi,%eax
        ap++;
    12f1:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
    12f4:	e8 87 fe ff ff       	call   1180 <printint>
        ap++;
    12f9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    12fc:	83 c4 10             	add    $0x10,%esp
      state = 0;
    12ff:	31 d2                	xor    %edx,%edx
    1301:	e9 67 ff ff ff       	jmp    126d <printf+0x4d>
    1306:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    130d:	8d 76 00             	lea    0x0(%esi),%esi
        s = (char*)*ap;
    1310:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1313:	8b 18                	mov    (%eax),%ebx
        ap++;
    1315:	83 c0 04             	add    $0x4,%eax
    1318:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    131b:	85 db                	test   %ebx,%ebx
    131d:	0f 84 9d 00 00 00    	je     13c0 <printf+0x1a0>
        while(*s != 0){
    1323:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1326:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1328:	84 c0                	test   %al,%al
    132a:	0f 84 3d ff ff ff    	je     126d <printf+0x4d>
    1330:	8d 55 e7             	lea    -0x19(%ebp),%edx
    1333:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    1336:	89 de                	mov    %ebx,%esi
    1338:	89 d3                	mov    %edx,%ebx
    133a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1340:	83 ec 04             	sub    $0x4,%esp
    1343:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    1346:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1349:	6a 01                	push   $0x1
    134b:	53                   	push   %ebx
    134c:	57                   	push   %edi
    134d:	e8 81 fd ff ff       	call   10d3 <write>
        while(*s != 0){
    1352:	0f b6 06             	movzbl (%esi),%eax
    1355:	83 c4 10             	add    $0x10,%esp
    1358:	84 c0                	test   %al,%al
    135a:	75 e4                	jne    1340 <printf+0x120>
      state = 0;
    135c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
    135f:	31 d2                	xor    %edx,%edx
    1361:	e9 07 ff ff ff       	jmp    126d <printf+0x4d>
    1366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    136d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    1370:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    1373:	83 ec 0c             	sub    $0xc,%esp
    1376:	b9 0a 00 00 00       	mov    $0xa,%ecx
    137b:	8b 13                	mov    (%ebx),%edx
    137d:	6a 01                	push   $0x1
    137f:	e9 6b ff ff ff       	jmp    12ef <printf+0xcf>
    1384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1388:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    138b:	83 ec 04             	sub    $0x4,%esp
    138e:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
    1391:	8b 03                	mov    (%ebx),%eax
        ap++;
    1393:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
    1396:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1399:	6a 01                	push   $0x1
    139b:	52                   	push   %edx
    139c:	57                   	push   %edi
    139d:	e8 31 fd ff ff       	call   10d3 <write>
        ap++;
    13a2:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    13a5:	83 c4 10             	add    $0x10,%esp
      state = 0;
    13a8:	31 d2                	xor    %edx,%edx
    13aa:	e9 be fe ff ff       	jmp    126d <printf+0x4d>
    13af:	90                   	nop
  write(fd, &c, 1);
    13b0:	83 ec 04             	sub    $0x4,%esp
    13b3:	88 5d e7             	mov    %bl,-0x19(%ebp)
    13b6:	8d 55 e7             	lea    -0x19(%ebp),%edx
    13b9:	6a 01                	push   $0x1
    13bb:	e9 11 ff ff ff       	jmp    12d1 <printf+0xb1>
    13c0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    13c5:	bb 90 16 00 00       	mov    $0x1690,%ebx
    13ca:	e9 61 ff ff ff       	jmp    1330 <printf+0x110>
    13cf:	90                   	nop

000013d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    13d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13d1:	a1 e4 1d 00 00       	mov    0x1de4,%eax
{
    13d6:	89 e5                	mov    %esp,%ebp
    13d8:	57                   	push   %edi
    13d9:	56                   	push   %esi
    13da:	53                   	push   %ebx
    13db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    13de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13e8:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    13ea:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13ec:	39 ca                	cmp    %ecx,%edx
    13ee:	73 30                	jae    1420 <free+0x50>
    13f0:	39 c1                	cmp    %eax,%ecx
    13f2:	72 04                	jb     13f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    13f4:	39 c2                	cmp    %eax,%edx
    13f6:	72 f0                	jb     13e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    13f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    13fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    13fe:	39 f8                	cmp    %edi,%eax
    1400:	74 2e                	je     1430 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    1402:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1405:	8b 42 04             	mov    0x4(%edx),%eax
    1408:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    140b:	39 f1                	cmp    %esi,%ecx
    140d:	74 38                	je     1447 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    140f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    1411:	5b                   	pop    %ebx
  freep = p;
    1412:	89 15 e4 1d 00 00    	mov    %edx,0x1de4
}
    1418:	5e                   	pop    %esi
    1419:	5f                   	pop    %edi
    141a:	5d                   	pop    %ebp
    141b:	c3                   	ret
    141c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1420:	39 c1                	cmp    %eax,%ecx
    1422:	72 d0                	jb     13f4 <free+0x24>
    1424:	eb c2                	jmp    13e8 <free+0x18>
    1426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    142d:	8d 76 00             	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    1430:	03 70 04             	add    0x4(%eax),%esi
    1433:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1436:	8b 02                	mov    (%edx),%eax
    1438:	8b 00                	mov    (%eax),%eax
    143a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    143d:	8b 42 04             	mov    0x4(%edx),%eax
    1440:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1443:	39 f1                	cmp    %esi,%ecx
    1445:	75 c8                	jne    140f <free+0x3f>
    p->s.size += bp->s.size;
    1447:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    144a:	89 15 e4 1d 00 00    	mov    %edx,0x1de4
    p->s.size += bp->s.size;
    1450:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    1453:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    1456:	89 0a                	mov    %ecx,(%edx)
}
    1458:	5b                   	pop    %ebx
    1459:	5e                   	pop    %esi
    145a:	5f                   	pop    %edi
    145b:	5d                   	pop    %ebp
    145c:	c3                   	ret
    145d:	8d 76 00             	lea    0x0(%esi),%esi

00001460 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1460:	55                   	push   %ebp
    1461:	89 e5                	mov    %esp,%ebp
    1463:	57                   	push   %edi
    1464:	56                   	push   %esi
    1465:	53                   	push   %ebx
    1466:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1469:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    146c:	8b 15 e4 1d 00 00    	mov    0x1de4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1472:	8d 78 07             	lea    0x7(%eax),%edi
    1475:	c1 ef 03             	shr    $0x3,%edi
    1478:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    147b:	85 d2                	test   %edx,%edx
    147d:	0f 84 8d 00 00 00    	je     1510 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1483:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1485:	8b 48 04             	mov    0x4(%eax),%ecx
    1488:	39 f9                	cmp    %edi,%ecx
    148a:	73 64                	jae    14f0 <malloc+0x90>
  if(nu < 4096)
    148c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1491:	39 df                	cmp    %ebx,%edi
    1493:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    1496:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    149d:	eb 0a                	jmp    14a9 <malloc+0x49>
    149f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14a0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    14a2:	8b 48 04             	mov    0x4(%eax),%ecx
    14a5:	39 f9                	cmp    %edi,%ecx
    14a7:	73 47                	jae    14f0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    14a9:	89 c2                	mov    %eax,%edx
    14ab:	39 05 e4 1d 00 00    	cmp    %eax,0x1de4
    14b1:	75 ed                	jne    14a0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    14b3:	83 ec 0c             	sub    $0xc,%esp
    14b6:	56                   	push   %esi
    14b7:	e8 87 fc ff ff       	call   1143 <sbrk>
  if(p == (char*)-1)
    14bc:	83 c4 10             	add    $0x10,%esp
    14bf:	83 f8 ff             	cmp    $0xffffffff,%eax
    14c2:	74 1c                	je     14e0 <malloc+0x80>
  hp->s.size = nu;
    14c4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    14c7:	83 ec 0c             	sub    $0xc,%esp
    14ca:	83 c0 08             	add    $0x8,%eax
    14cd:	50                   	push   %eax
    14ce:	e8 fd fe ff ff       	call   13d0 <free>
  return freep;
    14d3:	8b 15 e4 1d 00 00    	mov    0x1de4,%edx
      if((p = morecore(nunits)) == 0)
    14d9:	83 c4 10             	add    $0x10,%esp
    14dc:	85 d2                	test   %edx,%edx
    14de:	75 c0                	jne    14a0 <malloc+0x40>
        return 0;
  }
}
    14e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    14e3:	31 c0                	xor    %eax,%eax
}
    14e5:	5b                   	pop    %ebx
    14e6:	5e                   	pop    %esi
    14e7:	5f                   	pop    %edi
    14e8:	5d                   	pop    %ebp
    14e9:	c3                   	ret
    14ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    14f0:	39 cf                	cmp    %ecx,%edi
    14f2:	74 4c                	je     1540 <malloc+0xe0>
        p->s.size -= nunits;
    14f4:	29 f9                	sub    %edi,%ecx
    14f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    14f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    14fc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    14ff:	89 15 e4 1d 00 00    	mov    %edx,0x1de4
}
    1505:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1508:	83 c0 08             	add    $0x8,%eax
}
    150b:	5b                   	pop    %ebx
    150c:	5e                   	pop    %esi
    150d:	5f                   	pop    %edi
    150e:	5d                   	pop    %ebp
    150f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    1510:	c7 05 e4 1d 00 00 e8 	movl   $0x1de8,0x1de4
    1517:	1d 00 00 
    base.s.size = 0;
    151a:	b8 e8 1d 00 00       	mov    $0x1de8,%eax
    base.s.ptr = freep = prevp = &base;
    151f:	c7 05 e8 1d 00 00 e8 	movl   $0x1de8,0x1de8
    1526:	1d 00 00 
    base.s.size = 0;
    1529:	c7 05 ec 1d 00 00 00 	movl   $0x0,0x1dec
    1530:	00 00 00 
    if(p->s.size >= nunits){
    1533:	e9 54 ff ff ff       	jmp    148c <malloc+0x2c>
    1538:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    153f:	90                   	nop
        prevp->s.ptr = p->s.ptr;
    1540:	8b 08                	mov    (%eax),%ecx
    1542:	89 0a                	mov    %ecx,(%edx)
    1544:	eb b9                	jmp    14ff <malloc+0x9f>
