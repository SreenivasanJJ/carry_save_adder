module multiplier_csa_top#(parameter MAX_MLTCND_BITS=12, parameter MAX_MLTPLR_BITS=9)( 
  multiplicand,
  multiplier,
  mult_out
 
);

  input [MAX_MLTCND_BITS-1 : 0] multiplicand;
  input [MAX_MLTPLR_BITS-1 : 0] multiplier;
  output [MAX_MLTCND_BITS+MAX_MLTPLR_BITS-1:0] mult_out;

  wire [MAX_MLTCND_BITS-1:0] partial_prd[MAX_MLTPLR_BITS-1:0];

  wire [MAX_MLTCND_BITS-1:0] partial_sum_csa[MAX_MLTPLR_BITS-2:0];
  wire [MAX_MLTCND_BITS-1:0] partial_carry_csa[MAX_MLTPLR_BITS-2:0];

  partial_prd_gen #(.MAX_MLTCND_BITS(MAX_MLTCND_BITS),.MAX_MLTPLR_BITS(MAX_MLTPLR_BITS)) u_partial_prd_gen(
    .multiplicand(multiplicand), 
    .multiplier(multiplier), 
    .partial_prd(partial_prd)
  );
  
  partial_prd_red #(.MAX_MLTCND_BITS(MAX_MLTCND_BITS),.MAX_MLTPLR_BITS(MAX_MLTPLR_BITS)) u_partial_prd_red(
    .partial_prd(partial_prd),
    .partial_sum_csa(partial_sum_csa),
    .partial_carry_csa(partial_carry_csa)
  );

  final_sum_carry_gen #(.MAX_MLTCND_BITS(MAX_MLTCND_BITS),.MAX_MLTPLR_BITS(MAX_MLTPLR_BITS)) u_final_sum_carry_gen(
    .partial_prd(partial_prd),
    .partial_sum_csa(partial_sum_csa),
    .partial_carry_csa(partial_carry_csa),
    .mult_out(mult_out)
  );
endmodule
