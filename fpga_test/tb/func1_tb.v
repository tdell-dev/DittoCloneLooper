 module func1_tb();

 reg ss_tb, sck_tb, mosi_tb;
 wire miso_tb;
 wire a_tb,b_tb,c_tb,d_tb,e_tb,f_tb,g_tb;

 func1 dut0( .ss( ss_tb ),
 			 .sck( sck_tb ),
 			 .mosi( mosi_tb ),
 			 .miso( miso_tb ),
			 .a(a_tb),
			 .b(b_tb),
			 .c(c_tb),
			 .d(d_tb),
			 .e(e_tb),
			 .f(f_tb),
			 .g(g_tb)
 			 );


always #0.5 sck_tb = ~sck_tb;

initial begin
ss_tb =0; mosi_tb = 0; sck_tb =0; 
#1 
ss_tb =0; mosi_tb = 1; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 1; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 1; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 1; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 1; 
#1 

ss_tb =1; mosi_tb = 0; 
#1 
ss_tb =1; mosi_tb = 0; 
#1 
ss_tb =1; mosi_tb = 0; 
#1 
ss_tb =1; mosi_tb = 0; 
#1 
ss_tb =1; mosi_tb = 0; 
#1 
ss_tb =1; mosi_tb = 0; 
#1 
ss_tb =1; mosi_tb = 1; 
#1 
ss_tb =1; mosi_tb = 1; 
#1 
ss_tb =1; mosi_tb = 0; 
#1 
ss_tb =1; mosi_tb = 1; 
#1 

ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 
ss_tb =0; mosi_tb = 0; 
#1 

ss_tb =0; mosi_tb = 0; 

end

endmodule