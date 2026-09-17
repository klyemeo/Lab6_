module mux_2to1 (s,d0,d1,y);
output y;
input d0;
input d1;
input s;

assign y = ~s&d0 | s&d1 ; 

    
endmodule