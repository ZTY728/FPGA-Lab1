`timescale 1ns/1ns
module tb_comparator();

reg key_1;
reg key_2;

wire led_0;
wire led_1;
wire led_2;

initial
begin
key_1<=1'b0;
key_2<=1'b0;
end

always #10 key_1<={$random}%2;
always #10 key_2<={$random}%2;


comparator comparator_inst
(
.key_1(key_1),
.key_2(key_2),

.led_0(led_0),
.led_1(led_1),
.led_2(led_2)
);
endmodule