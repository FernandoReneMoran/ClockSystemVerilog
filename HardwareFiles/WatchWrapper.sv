module WatchWrapper(
////////CLOCK
input 		          		MAX10_CLK1_50,
////////SEG7
output		     [6:0]		HEX0,
output		     [6:0]		HEX1,
output		     [6:0]		HEX2,
output		     [6:0]		HEX3,
output		     [6:0]		HEX4,
output		     [6:0]		HEX5,

////////SW
input 		     [9:0]		SW
);


PreWatch M1(.mclk(MAX10_CLK1_50), .options(SW), .seg0(HEX0), .seg1(HEX1), .seg2(HEX2), .seg3(HEX3), .seg4(HEX4), .seg5(HEX5));

endmodule 