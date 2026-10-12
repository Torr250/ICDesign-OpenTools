module encoder_4b (
	input [3:0] value,
	output reg [14:0] therm);
	
always @(value) begin
	case (value)
		0:  therm = 15'b000000000000000;
		1:  therm = 15'b000000000000001;  
		2:  therm = 15'b000000000000011;
		3:  therm = 15'b000000000000111;
		4:  therm = 15'b000000000001111;
		5:  therm = 15'b000000000011111;
		6:  therm = 15'b000000000111111;
		7:  therm = 15'b000000001111111;
		8:  therm = 15'b000000011111111;
		9:  therm = 15'b000000111111111;
		10: therm = 15'b000001111111111;
		11: therm = 15'b000011111111111;
		12: therm = 15'b000111111111111;
		13: therm = 15'b001111111111111;
		14: therm = 15'b011111111111111;
		15: therm = 15'b111111111111111;
		default: therm = 15'b000000000000000;  
	endcase
end
endmodule

