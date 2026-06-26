module half_subtractor(
    input a,b,
    output diff,borrow
);

wire na;

not(na,a);
xor(diff,a,b);
and(borrow,na,b);

endmodule