module part4(SW, HEX0);
    input [9:0] SW;
    output [6:0] HEX0;

    wire [1:0] X, Y, Z, s, c;

    assign s = SW[9:8];

    assign X = SW[5:4];
    assign Y = SW[3:2];
    assign Z = SW[1:0];


    mux2bit3to1 U (X, Y, Z, s, c);
    cToHex U (c, HEX0);
endmodule


