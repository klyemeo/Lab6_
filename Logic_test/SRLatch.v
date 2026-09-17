module SRLatch (R,S,Q,QN);
input R;
input S;
output Q;
output QN;

nor nor_1(Q,R,QN);
nor nor_2(QN,S,Q);
    
endmodule