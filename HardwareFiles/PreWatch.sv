module PreWatch(seg0,seg1,seg2,seg3,seg4,seg5,options,mclk);
input mclk;
input [9:0] options;
output [6:0] seg0,seg1,seg2,seg3,seg4,seg5;
logic secondEnable,secondFinished,minuteFinished,minuteEnable,hourEnable,nothing;
logic [5:0] seconds,minutes;
logic [4:0] hours;
//options[9] is the reset or clear for the watch
//option[8] is the load option
//options[7:6] is for the mode to change the value 1 is for seconds, 2 is for minutes and 3 is for hours
//options[5:0] is for the value to change the time of the count

assign minuteEnable = secondFinished & secondEnable;
assign hourEnable = minuteFinished & minuteEnable;


//Module to convert 50MHZ in 1 second clock
cont_1s_RCO mclkConverter(.mclk,.reset(options[9]),.RCO(secondEnable));


//Module for the Seconds of the Watch
counter_simpleSeconds #(.WIDTH(6),.TIMENUMBER(60))
secondWatch(.Enable(secondEnable),.Clk(mclk),.Clr(options[9]),.Q(seconds),.RCO(secondFinished),.load(options[8]),.mode(options[7:6]),.value(options[5:0]));

//Module 7 seg displays for the seconds
SEVENSEGDIS secondsDis(.times(seconds),.leftDis(seg1),.rightDis(seg0));

//Module for the minutes of the Watch
counter_simpleMinutes #(.WIDTH(6),.TIMENUMBER(60))
minuteWatch(.Enable(minuteEnable),.Clk(mclk),.Clr(options[9]),.Q(minutes),.RCO(minuteFinished),.load(options[8]),.mode(options[7:6]),.value(options[5:0]));

//Module 7 seg displays for the minutes
SEVENSEGDIS minutesDis(.times(minutes),.leftDis(seg3),.rightDis(seg2));


//Module for the hours of the Watch
counter_simpleHours #(.WIDTH(5),.TIMENUMBER(24))
hourWatch(.Enable(hourEnable),.Clk(mclk),.Clr(options[9]),.Q(hours),.RCO(nothing),.load(options[8]),.mode(options[7:6]),.value(options[5:0]));

//Module 7 seg displays for the hours
SEVENSEGDISHOUR hourDis(.times(hours),.leftDis(seg5),.rightDis(seg4));

endmodule 