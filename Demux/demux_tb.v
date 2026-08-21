`timescale 1ns/1ps

module demux_tb;

    reg D;
    reg [1:0] S;
    wire [3:0] Y;

    demux uut (
        .D(D),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("Time | D | S  | Y");
        $display("----------------");

        D = 1; S = 2'b00; #10;
        $display("%4t | %b | %b | %b", $time, D, S, Y);

        D = 1; S = 2'b01; #10;
        $display("%4t | %b | %b | %b", $time, D, S, Y);

        D = 1; S = 2'b10; #10;
        $display("%4t | %b | %b | %b", $time, D, S, Y);

        D = 1; S = 2'b11; #10;
        $display("%4t | %b | %b | %b", $time, D, S, Y);

        D = 0; S = 2'b00; #10;
        $display("%4t | %b | %b | %b", $time, D, S, Y);

        $finish;
    end

endmodule