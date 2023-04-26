main:                                   # @main
  push    rbp
  mov     rbp, rsp
  sub     rsp, 32
  mov     dword ptr [rbp - 4], 0
  mov     dword ptr [rbp - 8], edi
  mov     qword ptr [rbp - 16], rsi
  mov     dword ptr [rbp - 20], 0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
  cmp     dword ptr [rbp - 20], 10000
  jge     .LBB0_4
  call    multiples
  mov     eax, dword ptr [rbp - 20]
  add     eax, 1
  mov     dword ptr [rbp - 20], eax
  jmp     .LBB0_1
.LBB0_4:
  mov     eax, dword ptr [rbp - 4]
  add     rsp, 32
  pop     rbp
  ret
multiples:                              # @multiples
  push    rbp
  mov     rbp, rsp
  mov     dword ptr [rbp - 4], 3
  mov     dword ptr [rbp - 8], 0
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
  cmp     dword ptr [rbp - 4], 1000
  jge     .LBB1_9
  mov     eax, dword ptr [rbp - 4]
  mov     ecx, 3
  cdq
  idiv    ecx
  cmp     edx, 0
  jne     .LBB1_4
  mov     eax, dword ptr [rbp - 4]
  add     eax, dword ptr [rbp - 8]
  mov     dword ptr [rbp - 8], eax
  jmp     .LBB1_7
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
  mov     eax, dword ptr [rbp - 4]
  mov     ecx, 5
  cdq
  idiv    ecx
  cmp     edx, 0
  jne     .LBB1_6
  mov     eax, dword ptr [rbp - 4]
  add     eax, dword ptr [rbp - 8]
  mov     dword ptr [rbp - 8], eax
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
  jmp     .LBB1_7
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
  jmp     .LBB1_8
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
  mov     eax, dword ptr [rbp - 4]
  add     eax, 1
  mov     dword ptr [rbp - 4], eax
  jmp     .LBB1_1
.LBB1_9:
  mov     eax, dword ptr [rbp - 8]
  pop     rbp
  ret
  