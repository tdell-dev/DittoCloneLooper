#!/bin/perl
use strict;
use warnings;

my $numAddrBits = 8;#29;

open(outfile, ">../RAM.v");
print outfile "module RAM( input [$numAddrBits-1:0] addr, output reg [7:0] outdata );\n";

print outfile "reg[" . ((2**$numAddrBits-1)*8-1) . ":0] memReg;\n";
print outfile "\talways@(*) begin\n";
print outfile "\t\tcase( addr )\n";

my $ind=0;

while( $ind < 2**$numAddrBits-1) {
	if( $ind == 0 ) {
		print outfile "\t\t\t$ind: outdata <= memReg[7:0];\n";
		$ind++;

	}
	else {
		$ind++;
		print outfile "\t\t\t$ind: outdata <= memReg[" . (($ind*8)-1) . ":" . (($ind-1)*8) . "];\n";
	}

}

print outfile "\t\t\tdefault: outdata <= 8'b0;\n";
print outfile "\t\tendcase\n";
print outfile "\tend\n";
print outfile "endmodule\n";
close(outfile);