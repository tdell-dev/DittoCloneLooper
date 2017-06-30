module sevSegDisp( input[3:0] inWord, output reg [6:0] outWord );

always@(*) begin
	
	case( inWord ) 
	0: outWord <= ~7'b1111110;
	1: outWord <= ~7'b0110000;
	2: outWord <= ~7'b1101101;
	3: outWord <= ~7'b1111001;
	4: outWord <= ~7'b0110011;
	5: outWord <= ~7'b1011011;
	6: outWord <= ~7'b1011111;
	7: outWord <= ~7'b1110010;
	8: outWord <= ~7'b1111111;
	9: outWord <= ~7'b1110011;
	10: outWord <= ~7'b1110111;
	11: outWord <= ~7'b0011111;
	12: outWord <= ~7'b1001110;
	13: outWord <= ~7'b0111101;
	14: outWord <= ~7'b1001111;
	15: outWord <= ~7'b1000111;
	default: outWord <= ~7'b0001101; 

	endcase

end

endmodule