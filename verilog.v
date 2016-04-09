`timescale 1ns / 1ps

module verilog;

	// Inputs
	reg H;
	reg O;
	reg R;
	reg N;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	exp1 uut (
		.H(H), 
		.O(O), 
		.R(R), 
		.N(N),
		.S(S)
	);

	initial begin
		// Initialize Inputs
		H = 0;
		O = 0;
		R = 0;
		N = 0;
end
		always begin
	#10
	{H, O, N, R} = {H,O,N,R} + 1;
end


        
		// Add stimulus here

	
      
endmodule

