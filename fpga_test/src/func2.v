`timescale 1ns / 1ps

`define LOW 0
`define HIGH 1

module func2(input sck, input ss, input mosi, output reg miso, input[15:0] inAddr);//, output wire[7:0] outData);
			 
reg [5:0] numBitsLeft;
reg [15:0] readAddr;
wire [31:0] outData;

ROM mem0 ( .addr( readAddr ),
			  .outdata( outData )
			 );

always@( posedge sck ) begin

	if( ss == `LOW ) begin
		if( numBitsLeft > 0 ) begin
			miso <= outData[numBitsLeft];
			numBitsLeft <= numBitsLeft - 1;
		end 
	end else begin
		readAddr <= inAddr;
		numBitsLeft <= 6'd32;
	end

end
endmodule
