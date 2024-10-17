`timescale 1ns/1ns

module tb_decoder();

reg key_1;
reg key_2;
reg key_3;

wire led_0;
wire led_1;
wire led_2;
wire led_3;

initial key_1 <=1'b0;
initial key_2 <=1'b0;
initial key_3 <=1'b0;
 
always #10 key_1 <={$random}%2;
always #10 key_2 <={$random}%2;
always #10 key_3 <={$random}%2;


decoder decoder_inst
(
.key_1 (key_1),
.key_2 (key_2),
.key_3 (key_3),

.led_0 (led_0),
.led_1 (led_1),
.led_2 (led_2),
.led_3 (led_3)
);
endmodule