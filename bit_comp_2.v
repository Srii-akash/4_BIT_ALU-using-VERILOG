module bit_comp_2(input [1:0] a, b, output gt, eq, lt);
    wire a0bar, a1bar, b0bar, b1bar;
    wire w1, w2, w3;  // for GT
    wire w4, w5;      // for EQ
    wire w6, w7, w8;  // for LT
    
    // NOT gates
    not n1(a0bar, a[0]);
    not n2(a1bar, a[1]);
    not n3(b0bar, b[0]);
    not n4(b1bar, b[1]);
    
    // ========== GREATER THAN ==========
    // a[1]=1 AND b[1]=0
    and a1(w1, a[1], b1bar);
    
    // a[1]=b[1] (XNOR) AND a[0]=1 AND b[0]=0
    xnor x1(w2, a[1], b[1]);
    and a2(w3, w2, a[0], b0bar);
    
    or or1(gt, w1, w3);
    
    // ========== EQUAL ==========
    xnor x2(w4, a[1], b[1]);
    xnor x3(w5, a[0], b[0]);
    and and_eq(eq, w4, w5);
    
    // ========== LESS THAN ==========
    // a[1]=0 AND b[1]=1
    and a3(w6, a1bar, b[1]);
    
    // a[1]=b[1] (XNOR) AND a[0]=0 AND b[0]=1
    xnor x4(w7, a[1], b[1]);
    and a4(w8, w7, a0bar, b[0]);
    
    or or2(lt, w6, w8);
    
endmodule