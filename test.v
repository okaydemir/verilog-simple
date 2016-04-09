`timescale 1ns / 1ps
module test(
    input H,
    input O,
    input R,
    input N,
	 wire S,K,L,X,Z,
	output wire Y
    );

or u1(X,H,O);
or u2(K,X,R);
or u3(Z,O,N);
not u4(Y,R);
or u5(L,Y,Z);
and u6(S,K,L);


endmodule
