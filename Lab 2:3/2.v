module mux4bit2to1(X, Y, s, M);
    input [3:0] X, Y;
    input s;
    output [3:0] M;

    assign M[0] = (!s & X[0]) | (s & Y[0]);
    assign M[1] = (!s & X[1]) | (s & Y[1]);
    assign M[2] = (!s & X[2]) | (s & Y[2]);
    assign M[3] = (!s & X[3]) | (s & Y[3]);
endmodule;

module part2 (SW, LEDR);
    input [9:0] SW;
    output [9:0] LEDR;

    wire [3:0] X, Y;
    wire s;

    assign X = SW[3:0];
    assign Y = SW[4:7];
    assign s = SW[9];

    mux4bit2to1 U (X, Y, sw[9], LEDR[3:0]);
endmodule;





