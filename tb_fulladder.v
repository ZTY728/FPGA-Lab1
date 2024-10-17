`timescale 1ns/1ns

module tb_fulladder();

reg key_1;
reg key_2;
reg key_3;

wire led_0;
wire led_1;

initial
begin
key_1<=1'b0;
key_2<=1'b0;
key_3<=1'b0;
end

always #10  key_1<={$random}%2;
always #10  key_2<={$random}%2;
always #10  key_3<={$random}%2;


fulladder fulladder_inst
(
.key_1(key_1),
.key_2(key_2),
.key_3(key_3),

.led_0(led_0),
.led_1(led_1)
);
endmodule