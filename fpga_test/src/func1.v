`define LOW 0
`define HIGH 1

module func1( input sck, input ss, input mosi, output miso, output a, output b, output c, output d, output e, output f, output g);

reg[3:0] counter;
reg[10:0] data_received;
reg[3:0] disp_data;
//wire a,b,c,d,e,f,g;

sevSegDisp disp0( .inWord( disp_data ), .outWord({a,b,c,d,e,f,g}) );

assign miso = `LOW;

always@( posedge sck ) begin

	if (ss == `HIGH) begin

		if (counter < 10) begin
			data_received <= {data_received[9:0], mosi};
			counter <= counter + 1;
			disp_data <= 4'he;
		end else begin
			counter <=0;
			disp_data <= data_received[3:0];
		end
		
	end else begin
	
		counter <=0;
		disp_data <= data_received[3:0];
	
	end

end

endmodule