module SEVENSEGDISHOUR(leftDis,rightDis,times);
input [4:0] times;
output [6:0] leftDis,rightDis;
logic [6:0] leftDis,rightDis;

//behavioural for rightDis 7segment
always_comb
begin
	case(times)		//gfedcba 7 segment order
	5'b00000 : rightDis = 7'b1000000; //0
	5'b00001 : rightDis = 7'b1111001; //1
	5'b00010 : rightDis = 7'b0100100; //2
	5'b00011 : rightDis = 7'b0110000; //3
	5'b00100 : rightDis = 7'b0011001; //4
	5'b00101 : rightDis = 7'b0010010; //5
	5'b00110 : rightDis = 7'b0000010; //6
	5'b00111 : rightDis = 7'b1111000; //7
	5'b01000 : rightDis = 7'b0000000; //8
	5'b01001 : rightDis = 7'b0010000; //9

	5'b01010 : rightDis = 7'b1000000; //0
	5'b01011 : rightDis = 7'b1111001; //1
	5'b01100 : rightDis = 7'b0100100; //2
	5'b01101 : rightDis = 7'b0110000; //3
	5'b01110 : rightDis = 7'b0011001; //4
	5'b01111 : rightDis = 7'b0010010; //5
	5'b10000 : rightDis = 7'b0000010; //6
	5'b10001 : rightDis = 7'b1111000; //7
	5'b10010 : rightDis = 7'b0000000; //8
	5'b10011 : rightDis = 7'b0010000; //9 

	5'b10100 : rightDis = 7'b1000000; //0
	5'b10101 : rightDis = 7'b1111001; //1
	5'b10110 : rightDis = 7'b0100100; //2
	5'b10111 : rightDis = 7'b0110000; //3
	default : rightDis = 7'b1111111;
endcase
end

//behavioural for leftDis 7segment
always_comb 
begin
	case(times)		//gfedcba 7 segment order
	5'b00000 : leftDis = 7'b1000000; //0
	5'b00001 : leftDis = 7'b1000000; //0
	5'b00010 : leftDis = 7'b1000000; //0
	5'b00011 : leftDis = 7'b1000000; //0
	5'b00100 : leftDis = 7'b1000000; //0
	5'b00101 : leftDis = 7'b1000000; //0
	5'b00110 : leftDis = 7'b1000000; //0
	5'b00111 : leftDis = 7'b1000000; //0
	5'b01000 : leftDis = 7'b1000000; //0
	5'b01001 : leftDis = 7'b1000000; //0

	5'b01010 : leftDis = 7'b1111001; //1
	5'b01011 : leftDis = 7'b1111001; //1
	5'b01100 : leftDis = 7'b1111001; //1
	5'b01101 : leftDis = 7'b1111001; //1
	5'b01110 : leftDis = 7'b1111001; //1
	5'b01111 : leftDis = 7'b1111001; //1
	5'b10000 : leftDis = 7'b1111001; //1
	5'b10001 : leftDis = 7'b1111001; //1
	5'b10010 : leftDis = 7'b1111001; //1
	5'b10011 : leftDis = 7'b1111001; //1

	5'b10100 : leftDis = 7'b0100100; //2
	5'b10101 : leftDis = 7'b0100100; //2
	5'b10110 : leftDis = 7'b0100100; //2
	5'b10111 : leftDis = 7'b0100100; //2
	default : leftDis = 7'b1111111;
endcase
end

endmodule 