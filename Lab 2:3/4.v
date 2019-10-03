module cToHex(c, HEX0);
    output [6:0] HEX0;
    input [1:0] c;

    assign HEX0[0] = 1b'0;
    assign HEX0[1] = c1;
    assign HEX0[2] = !c1;
    assign HEX0[3] = 1b'0;
    assign HEX0[4] = !(c1 + c2);
    assign HEX0[5] = !(c1 + c2);
    assign HEX0[6] = c1 & c1;
endmodule;

module part4(SW, HEX0);
    input [9:0] SW;
    output [6:0] HEX0;

    wire [1:0] c;
    assign c = SW[1:0];

    cToHex U (c, HEX0);
endmodule;

