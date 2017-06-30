#!/bin/perl
use strict;
use warnings;

my $numAddrBits = 16;#29;

open(outfile, ">../ROM.v");
print outfile "module ROM( input [$numAddrBits-1:0] addr, output reg [31:0] outdata );\n";
print outfile "\talways@(*) begin\n";
print outfile "\t\tcase( addr )\n";

my $ind=0;

while( $ind < 2**$numAddrBits) {
	
	print outfile "\t\t\t$ind: outdata = 32'd" . (2**$numAddrBits - $ind) . ";\n";
	$ind++;

}

print outfile "\t\t\tdefault: outdata = 32'b0;\n";
print outfile "\t\tendcase\n";
print outfile "\tend\n";
print outfile "endmodule\n";
close(outfile);