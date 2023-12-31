# carry_save_adder
Multiplication of fiven two positive numbers.
                                                                                       a11   a10   a9   a8   a7   a6   a5   a4   a3   a2   a1    a0
	                                                                         X                  x9   x8   x7   x6   x5   x4   x3   x2   x1    x0

                                                         a11x0   a10x0   a9x0   a8x0   a7x0   a6x0   a5x0   a4x0   a3x0   a2x0   a1x0   a0x0
                                             a11x1   a10x1     a9x1   a8x1   a7x1   a6x1   a5x1   a4x1   a3x1   a2x1   a1x1   a0x1
                                 a11x2   a10x2    a9x2     a8x2   a7x2   a6x2   a5x2   a4x2   a3x2   a2x2   a1x2   a0x2
                 a11x3    a10x3     a9x3    a8x3      a7x3   a6x3   a5x3   a4x3   a3x3   a2x3   a1x3   a0x3
                                           a11x4    a10x4      a9x4     a8x4    a7x4      a6x4   a5x4   a4x4   a3x4   a2x4   a1x4   a0x4
                             a11x5    a10x5      a9x5      a8x5     a7x5    a6x5      a5x5   a4x5   a3x5   a2x5   a1x5   a0x5
              a11x6     a10x6       a9x6      a8x6     a7x6      a6x5    a5x6     a4x6   a3x6   a2x6   a1x6   a0x6
                     a11x7    a10x7      a9x7       a8x7      a7x7     a6x7     a5x7    a4x7      a3x7   a2x7   a1x7   a0x7
      a11x8    a10x8      a9x8       a8x8       a7x8     a6x8     a5x8     a4x8    a3x8       a2x8   a1x8  a0x8
     P20        P19         P18        P17        P16         P14       P13        P12       P11      P10       P9        P8      P7       P6       P5      P4        P3      P2       P1        P0    

 
Multiplication of given two negative numbers.
If Both Multiplicand and Multiplier are negative numbers. Then,

                                                                                       a11   a10   a9   a8   a7   a6   a5   a4   a3   a2   a1    a0
	                                                                         X                  x9   x8   x7   x6   x5   x4   x3   x2   x1    x0

 a11x0    a11x0   a11x0  a11x0    a11x0    a11x0   a11x0    a11x0     a11x0  a11x0   a10x0   a9x0   a8x0   a7x0   a6x0   a5x0   a4x0   a3x0   a2x0   a1x0   a0x0
 a11x1   a11x1    a11x1  a11x1    a11x1    a11x1   a11x1     a11x1    a11x1   a10x1     a9x1   a8x1   a7x1   a6x1   a5x1   a4x1   a3x1   a2x1   a1x1   a0x1
  a11x2   a11x2    a11x2   a11x2    a11x2   a11x2    a11x2      a11x2   a10x2    a9x2     a8x2   a7x2   a6x2   a5x2   a4x2   a3x2   a2x2   a1x2   a0x2
   a11x3   a11x3     a11x3   a11x3    a11x3   a11x3   a11x3    a10x3     a9x3    a8x3      a7x3   a6x3   a5x3   a4x3   a3x3   a2x3   a1x3   a0x3
  a11x4   a11x4     a11x4   a11x4    a11x4   a11x4    a10x4      a9x4     a8x4    a7x4      a6x4   a5x4   a4x4   a3x4   a2x4   a1x4   a0x4
   a11x5  a11x5     a11x5   a11x5     a11x5    a10x5      a9x5      a8x5     a7x5    a6x5      a5x5   a4x5   a3x5   a2x5   a1x5   a0x5
   a11x6   a11x6     a11x6  a11x6     a10x6       a9x6      a8x6     a7x6      a6x5    a5x6     a4x6   a3x6   a2x6   a1x6   a0x6
    a11x7  a11x7     a11x7    a10x7      a9x7       a8x7      a7x7     a6x7     a5x7    a4x7      a3x7   a2x7   a1x7   a0x7
   a11x8’  a11x8’    a10x8’      a9x8’    a8x8’     a7x8’   a6x8’    a5x8’    a4x8’   a3x8’    a2x8’  a1x8’  a0x8’

                    P20        P19       P18       P17       P16      P15      P14     P13     P12     P11      P10   P9     P8      P7      P6      P5      P4     P3    P2    P1     P0   

Above one can be also represented as below.

                                                                                       a11   a10   a9   a8   a7   a6   a5   a4   a3   a2   a1    a0
	                                                                         X                  x9   x8   x7   x6   x5   x4   x3   x2   x1    x0

                                                        a11x0’   a10x0   a9x0   a8x0   a7x0   a6x0   a5x0   a4x0   a3x0   a2x0   a1x0   a0x0
                                            a11x1’   a10x1     a9x1   a8x1   a7x1   a6x1   a5x1   a4x1   a3x1   a2x1   a1x1   a0x1
                                a11x2’   a10x2    a9x2     a8x2   a7x2   a6x2   a5x2   a4x2   a3x2   a2x2   a1x2   a0x2
                 a11x3’    a10x3     a9x3    a8x3      a7x3   a6x3   a5x3   a4x3   a3x3   a2x3   a1x3   a0x3
                                          a11x4’    a10x4      a9x4     a8x4    a7x4      a6x4   a5x4   a4x4   a3x4   a2x4   a1x4   a0x4
                           a11x5’    a10x5      a9x5      a8x5     a7x5    a6x5      a5x5   a4x5   a3x5   a2x5   a1x5   a0x5
             a11x6’     a10x6       a9x6      a8x6     a7x6      a6x5    a5x6     a4x6   a3x6   a2x6   a1x6   a0x6
                   a11x7’    a10x7      a9x7       a8x7      a7x7     a6x7     a5x7    a4x7      a3x7   a2x7   a1x7   a0x7
   a11x8    a10x8’      a9x8’       a8x8’       a7x8’     a6x8’     a5x8’     a4x8’    a3x8’       a2x8’   a1x8’  a0x8’
    P20        P19         P18        P17        P16         P14       P13        P12       P11      P10       P9        P8      P7       P6       P5      P4        P3      P2       P1        P0    

For negative number architecture changes to :



