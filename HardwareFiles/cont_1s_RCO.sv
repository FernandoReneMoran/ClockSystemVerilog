/*
-- P0: Realiza el conteo hasta llegar a CUENTA y genera un RCO
-- de manera sincrona. El RCO opera como señal de habilitacion
*/

module cont_1s_RCO
	(
		input mclk, reset,
		output RCO  // Ripple Carry Output
  	);

  localparam CUENTA= 50000000; // 50MHz
  integer conteo;
  logic w1; 
  always_ff @(negedge reset, posedge mclk)
	begin
	   if (reset == 1'b0 ) conteo <= 0;
	   else
				if (conteo == CUENTA) conteo <=0; //opcion 1
				//if (~|(conteo ^ CUENTA)) conteo <=0; //opcion 2
				else conteo <= conteo + 1;
		end
	// Ripple Carry Output
	assign RCO = (conteo == CUENTA) ? 1'b1 : 1'b0 ; //opcion 1	
	//assign RCO = ~|(conteo ^ CUENTA) ? 1'b1 : 1'b0 ;	//opcion 2
	
	
	endmodule 