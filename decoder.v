module decoder
(
input wire key_2,
input wire key_3,
input wire key_1,

output wire led_0,
output wire led_1,
output wire led_2,
output wire led_3
);

assign led_0=key_1 & (~key_2 & ~key_3);
assign led_1=key_1 & (~key_2 & key_3);
assign led_2=key_1 & (key_2 & ~key_3);
assign led_3=key_1 & (key_2 & key_3);

endmodule
