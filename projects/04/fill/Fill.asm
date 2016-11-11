// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
  @16384
  D=A
  @R1
  M=D
  @R0
  M=0
(INPUT)
  @KBD
  D=M
  @FILL0
  D;JEQ
  @FILL1
  0;JMP
(FILL0)
  @R0
  D=M
  @FILL000
  D;JEQ
(FILL00)
  @16384
  D=A
  @R1
  M=D
(FILL000)
  @R0
  M=0
  @24575
  D=A
  @R1
  D=D-M
  @INPUT
  D;JLT
  @R1
  D=M
  A=D
  M=0
  @R1
  M=M+1
  @INPUT
  0;JMP
(FILL1)
  @R0
  D=M
  @FILL111
  D;JGT
(FILL11)
  @16384
  D=A
  @R1
  M=D
(FILL111)
  @R0
  M=1
  @24575
  D=A
  @R1
  D=D-M
  @INPUT
  D;JLT
  @R1
  D=M
  A=D
  M=-1
  @R1
  M=M+1
  @INPUT
  0;JMP
