module fulladder
(
input wire key_1,
input wire key_2,
input wire key_3,

output wire led_0,
output wire led_1
);

assign led_0=key_1^key_2^key_3;
assign led_1=(key_1&key_2)|(key_1&key_3)|(key_2&key_3);
endmodule