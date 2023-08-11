module SEVENSEGDIS(leftDis,rightDis,times);
input [5:0] times;
output [6:0] leftDis,rightDis;
logic [6:0] leftDis,rightDis;

//behavioural for rightDis 7segment
always_comb 
begin
	case(times)		//gfedcba 7 segment order
	6'b000000 : rightDis = 7'b1000000; //0
	6'b000001 : rightDis = 7'b1111001; //1
	6'b000010 : rightDis = 7'b0100100; //2
	6'b000011 : rightDis = 7'b0110000; //3
	6'b000100 : rightDis = 7'b0011001; //4
	6'b000101 : rightDis = 7'b0010010; //5
	6'b000110 : rightDis = 7'b0000010; //6
	6'b000111 : rightDis = 7'b1111000; //7
	6'b001000 : rightDis = 7'b0000000; //8
	6'b001001 : rightDis = 7'b0010000; //9

	6'b001010 : rightDis = 7'b1000000; //0
	6'b001011 : rightDis = 7'b1111001; //1
	6'b001100 : rightDis = 7'b0100100; //2
	6'b001101 : rightDis = 7'b0110000; //3
	6'b001110 : rightDis = 7'b0011001; //4
	6'b001111 : rightDis = 7'b0010010; //5
	6'b010000 : rightDis = 7'b0000010; //6
	6'b010001 : rightDis = 7'b1111000; //7
	6'b010010 : rightDis = 7'b0000000; //8
	6'b010011 : rightDis = 7'b0010000; //9 

	6'b010100 : rightDis = 7'b1000000; //0
	6'b010101 : rightDis = 7'b1111001; //1
	6'b010110 : rightDis = 7'b0100100; //2
	6'b010111 : rightDis = 7'b0110000; //3
	6'b011000 : rightDis = 7'b0011001; //4
	6'b011001 : rightDis = 7'b0010010; //5
	6'b011010 : rightDis = 7'b0000010; //6
	6'b011011 : rightDis = 7'b1111000; //7
	6'b011100 : rightDis = 7'b0000000; //8
	6'b011101 : rightDis = 7'b0010000; //9 

	6'b011110 : rightDis = 7'b1000000; //0
	6'b011111 : rightDis = 7'b1111001; //1
	6'b100000 : rightDis = 7'b0100100; //2
	6'b100001 : rightDis = 7'b0110000; //3
	6'b100010 : rightDis = 7'b0011001; //4
	6'b100011 : rightDis = 7'b0010010; //5
	6'b100100 : rightDis = 7'b0000010; //6
	6'b100101 : rightDis = 7'b1111000; //7
	6'b100110 : rightDis = 7'b0000000; //8
	6'b100111 : rightDis = 7'b0010000; //9 

	6'b101000 : rightDis = 7'b1000000; //0
	6'b101001 : rightDis = 7'b1111001; //1
	6'b101010 : rightDis = 7'b0100100; //2
	6'b101011 : rightDis = 7'b0110000; //3
	6'b101100 : rightDis = 7'b0011001; //4
	6'b101101 : rightDis = 7'b0010010; //5
	6'b101110 : rightDis = 7'b0000010; //6
	6'b101111 : rightDis = 7'b1111000; //7
	6'b110000 : rightDis = 7'b0000000; //8
	6'b110001 : rightDis = 7'b0010000; //9 

	6'b110010 : rightDis = 7'b1000000; //0
	6'b110011 : rightDis = 7'b1111001; //1
	6'b110100 : rightDis = 7'b0100100; //2
	6'b110101 : rightDis = 7'b0110000; //3
	6'b110110 : rightDis = 7'b0011001; //4
	6'b110111 : rightDis = 7'b0010010; //5
	6'b111000 : rightDis = 7'b0000010; //6
	6'b111001 : rightDis = 7'b1111000; //7
	6'b111010 : rightDis = 7'b0000000; //8
	6'b111011 : rightDis = 7'b0010000; //9 	
	default : rightDis = 7'b1111111;
endcase
end

//behavioural for leftDis 7segment
always_comb 
begin
	case(times)		//gfedcba 7 segment order
	6'b000000 : leftDis = 7'b1000000; //0
	6'b000001 : leftDis = 7'b1000000; //0
	6'b000010 : leftDis = 7'b1000000; //0
	6'b000011 : leftDis = 7'b1000000; //0
	6'b000100 : leftDis = 7'b1000000; //0
	6'b000101 : leftDis = 7'b1000000; //0
	6'b000110 : leftDis = 7'b1000000; //0
	6'b000111 : leftDis = 7'b1000000; //0
	6'b001000 : leftDis = 7'b1000000; //0
	6'b001001 : leftDis = 7'b1000000; //0

	6'b001010 : leftDis = 7'b1111001; //1
	6'b001011 : leftDis = 7'b1111001; //1
	6'b001100 : leftDis = 7'b1111001; //1
	6'b001101 : leftDis = 7'b1111001; //1
	6'b001110 : leftDis = 7'b1111001; //1
	6'b001111 : leftDis = 7'b1111001; //1
	6'b010000 : leftDis = 7'b1111001; //1
	6'b010001 : leftDis = 7'b1111001; //1
	6'b010010 : leftDis = 7'b1111001; //1
	6'b010011 : leftDis = 7'b1111001; //1

	6'b010100 : leftDis = 7'b0100100; //2
	6'b010101 : leftDis = 7'b0100100; //2
	6'b010110 : leftDis = 7'b0100100; //2
	6'b010111 : leftDis = 7'b0100100; //2
	6'b011000 : leftDis = 7'b0100100; //2
	6'b011001 : leftDis = 7'b0100100; //2
	6'b011010 : leftDis = 7'b0100100; //2
	6'b011011 : leftDis = 7'b0100100; //2
	6'b011100 : leftDis = 7'b0100100; //2
	6'b011101 : leftDis = 7'b0100100; //2 

	6'b011110 : leftDis = 7'b0110000; //3
	6'b011111 : leftDis = 7'b0110000; //3
	6'b100000 : leftDis = 7'b0110000; //3
	6'b100001 : leftDis = 7'b0110000; //3
	6'b100010 : leftDis = 7'b0110000; //3
	6'b100011 : leftDis = 7'b0110000; //3
	6'b100100 : leftDis = 7'b0110000; //3
	6'b100101 : leftDis = 7'b0110000; //3
	6'b100110 : leftDis = 7'b0110000; //3
	6'b100111 : leftDis = 7'b0110000; //3 

	6'b101000 : leftDis = 7'b0011001; //4
	6'b101001 : leftDis = 7'b0011001; //4
	6'b101010 : leftDis = 7'b0011001; //4
	6'b101011 : leftDis = 7'b0011001; //4
	6'b101100 : leftDis = 7'b0011001; //4
	6'b101101 : leftDis = 7'b0011001; //4
	6'b101110 : leftDis = 7'b0011001; //4
	6'b101111 : leftDis = 7'b0011001; //4
	6'b110000 : leftDis = 7'b0011001; //4
	6'b110001 : leftDis = 7'b0011001; //4 

	6'b110010 : leftDis = 7'b0010010; //5
	6'b110011 : leftDis = 7'b0010010; //5
	6'b110100 : leftDis = 7'b0010010; //5
	6'b110101 : leftDis = 7'b0010010; //5
	6'b110110 : leftDis = 7'b0010010; //5
	6'b110111 : leftDis = 7'b0010010; //5
	6'b111000 : leftDis = 7'b0010010; //5
	6'b111001 : leftDis = 7'b0010010; //5
	6'b111010 : leftDis = 7'b0010010; //5
	6'b111011 : leftDis = 7'b0010010; //5	
	default : leftDis = 7'b1111111;
endcase
end

endmodule 