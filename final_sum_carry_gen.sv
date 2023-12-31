module final_sum_carry_gen #(parameter MAX_MLTCND_BITS=12, parameter MAX_MLTPLR_BITS=9)
(
  partial_prd,
  partial_sum_csa,
  partial_carry_csa,
  mult_out
);

  input [MAX_MLTCND_BITS-1:0] partial_prd[MAX_MLTPLR_BITS-1:0];
  input [MAX_MLTCND_BITS-1:0] partial_sum_csa[MAX_MLTPLR_BITS-2:0];
  input [MAX_MLTCND_BITS-1:0] partial_carry_csa[MAX_MLTPLR_BITS-2:0];
  output [MAX_MLTCND_BITS+MAX_MLTPLR_BITS-1:0] mult_out;

  wire [MAX_MLTCND_BITS-2:0] sum;
  wire [MAX_MLTCND_BITS-1:0] carry;

  assign carry[0] = 1'b0;

  genvar i,j;

// The final Carry propagate added is built using Carry ripple adder structure
  generate for (i=0;i<(MAX_MLTCND_BITS-1); i=i+1) begin
    fa_cell finalrow(.in1(partial_sum_csa[MAX_MLTPLR_BITS-2][i+1]),.in2(partial_carry_csa[MAX_MLTPLR_BITS-2][i]),.in3(carry[i]),.sum(sum[i]),.carry(carry[i+1]));
    end
  endgenerate

  assign mult_out[0] = partial_prd[0][0];
  assign mult_out[MAX_MLTPLR_BITS+MAX_MLTCND_BITS-1] = carry[MAX_MLTCND_BITS-2];

  generate for (i=0;i<(MAX_MLTPLR_BITS+MAX_MLTCND_BITS-2); i=i+1) begin
    if(i<MAX_MLTPLR_BITS-1)
      assign mult_out[i+1] =  partial_sum_csa[i][0];
    else
      assign mult_out[i+1] = sum[i-(MAX_MLTPLR_BITS-1)];
  end
  endgenerate

endmodule
