module ha_cell(in1, in2, sum, carry);

  input in1;
  input in2;

  output sum;
  output carry;

  assign sum = in1 ^ in2;
  assign carry = in1 & in2;

endmodule
