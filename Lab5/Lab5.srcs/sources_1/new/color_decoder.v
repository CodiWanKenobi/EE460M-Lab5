module color_decoder
(
	input [7:0] sw,
	output reg r,
	output reg g,
	output reg b
);

    always @(*) begin
        case (sw)
            8'h00: {r, g, b} = 12'h000; // black
            8'h01: {r, g, b} = 12'h000; // black
            8'h02: {r, g, b} = 12'h00F; // blue
            8'h04: {r, g, b} = 12'h950; // brown
            8'h08: {r, g, b} = 12'h0FF; // cyan
            8'h10: {r, g, b} = 12'hF00; // red
            8'h20: {r, g, b} = 12'hF0F; // magenta
            8'h40: {r, g, b} = 12'hFF0; // yellow
            8'h80: {r, g, b} = 12'hFFF; // white
            default: {r, g, b} = 12'h000; // black
        endcase
    end
endmodule