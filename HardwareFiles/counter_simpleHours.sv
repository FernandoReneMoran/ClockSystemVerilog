//Simple Counter

module counter_simpleHours
#(parameter WIDTH =8, TIMENUMBER = 20)
(
	Enable,
	Clk,
	Clr,
	Q,
	RCO,
	load,
	mode,
	value
);

	input Enable,load;
	input [1:0] mode;
	input [5:0] value;
	input Clk, Clr ;
	output reg [WIDTH-1:0] Q;
	output RCO;

  always@ (negedge Clr, posedge Clk)
	begin
	   if (Clr == 1'b0 ) Q <= 0;
			else if(load == 1'b1) begin
				if(mode == 3)
					Q<= value;
			end
			else if(Enable == 1'b1) begin
				if(Q + 1 >= TIMENUMBER)
						Q <= 0;
					else Q<= Q + 1;
			end
		end
	// Ripple Carry Output
	assign RCO = (Q + 1 == TIMENUMBER) ? 1'b1 : 1'b0 ;
endmodule
	