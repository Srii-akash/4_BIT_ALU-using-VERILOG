// half adder code 

// taking 2 inputs and 2 outputs
module half_adder(input a,b, output sum, carry);
  xor x1(sum,a,b); // take output first followed by inputs
  and a1(carry,a,b);
endmodule