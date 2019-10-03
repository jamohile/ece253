module mux2bit2to1 (X, Y, s, M);
    input [1:0] X, Y;
    input s;
    output [1:0] M;

    assign M[1] = (!s & X[1]) + (s & Y[1]);
    assign M[0] = (!s & X[0]) + (s & Y[0]);
endmodule

module mux2bit3to1 (X, Y, Z, s, M);
    input [1:0] X, Y, Z;
    input [1:0] s;
    output [1:0] M;

    wire [1:0] M1;

    mux2bit2to1 U (X, Y, s[1], M1);
    mux2bit2to1 U1 (M1, Z, s[0], M);
endmodule

module part3(SW, LEDR);
    input [9:0] SW;
    output [9:0] LEDR;

    wire [1:0] s, U, V, W;

    assign s = SW[9:8];
    assign U = SW[5:4];
    assign V = SW[3:2];
    assign W = SW[1:0];

    mux2bit3to1 F (U, V, W, s, LEDR[1:0]);
endmodule
