module fa_cell(in1,in2,in3,sum,carry);

  input in1;
  input in2;
  input in3;
 
  output sum;
  output carry;
 
  wire ha_sum;

   assign ha_sum = in1 ^ in2;
   assign sum = ha_sum ^in3;
   assign carry = (in1 & in2) | (in3 & ha_sum);

endmodule
