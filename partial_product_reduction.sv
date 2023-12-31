module partial_prd_red #(parameter MAX_MLTCND_BITS=12, parameter MAX_MLTPLR_BITS=9)
(
  partial_prd,
  partial_sum_csa,
  partial_carry_csa
);

  input [MAX_MLTCND_BITS-1:0] partial_prd[MAX_MLTPLR_BITS-1:0];

  output [MAX_MLTCND_BITS-1:0] partial_sum_csa[MAX_MLTPLR_BITS-2:0];
  output [MAX_MLTCND_BITS-1:0] partial_carry_csa[MAX_MLTPLR_BITS-2:0];

  genvar i,j;

// The First Adder row consists of half adders and last column is direct pass from partial product
  generate for (i=0;i<(MAX_MLTPLR_BITS-1); i=i+1) begin

    if(i==0) begin
      for (j=0; j<(MAX_MLTCND_BITS); j=j+1) begin
        if(j< (MAX_MLTCND_BITS-1))
          ha_cell row_0(.in1(partial_prd[1][j]),.in2(partial_prd[0][j+1]),.sum(partial_sum_csa[0][j]),.carry(partial_carry_csa[0][j])); 
        else begin
          assign partial_sum_csa[0][j] = partial_prd[1][j];
          assign partial_carry_csa[0][j] = 1'b0;
        end
          
      end
    end
   
 // The next consecutive rows are made up of full adders and the last column does not require any adder as it directly passes from partial product
    if(i>0 && i<(MAX_MLTPLR_BITS-1)) begin
      for (j=0; j<MAX_MLTCND_BITS; j=j+1) begin
        if(j<(MAX_MLTCND_BITS-1)) begin
          fa_cell row_n(.in1(partial_prd[i+1][j]),.in2(partial_sum_csa[i-1][j+1]),.in3(partial_carry_csa[i-1][j]),.sum(partial_sum_csa[i][j]),.carry(partial_carry_csa[i][j]));
        end
        if(j==(MAX_MLTCND_BITS-1)) begin
          assign partial_sum_csa[i][j] = partial_prd[i+1][j];
          assign partial_carry_csa[i][j] = 1'b0;

        end
      end
    end

  end
  endgenerate


endmodule

