/*
 * Copyright (c) 2025 James Ross
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module palette_rom(
	input  wire [2:0] cid, // color id
	input  wire [1:0] pid, // palette
	output wire [5:0] color
);
	// color palette (RRGGBB)
	reg [5:0] palette[3:0][7:0];
	assign color = palette[pid][cid];
	initial begin
palette[0][0] = 6'b000000; // black / background
    palette[0][1] = 6'b010100; // dim gold
    palette[0][2] = 6'b101000; // medium gold
    palette[0][3] = 6'b111000; // true gold (more red than green)
    palette[0][4] = 6'b111100; // bright yellow-gold
    palette[0][5] = 6'b111101; // bright gold with slight blue highlight
    palette[0][6] = 6'b111110; // paler gold highlight
    palette[0][7] = 6'b111111; // pure white (the leading drop)
	end
endmodule
