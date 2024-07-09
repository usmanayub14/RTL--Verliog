module task4(
    output a, b, c, d, e, f, g,
    input [3:0] X, Y,
    input C2
);

    wire A,B,C,D;
    
    fourbit_adder fourbit_adder_inst (
        .A(X),
        .B(Y),
        .contrl(C2),
        .S({A,B,C,D})
    );

 

 assign a = ((~A & ~B & ~C & D) |(~A & B & ~C & ~D) | (A & ~B & C & D) | (A & B & ~C & D));
assign b = ((B & C & ~D) | (A & C & D) | (A & B & ~D) | (~A & B & ~C & D));
assign c = ((A & B & ~D) | (A & B & C) | (~A & ~B & C & ~D));
assign d = ((B & C & D) | (~A & ~B & ~C & D) | (~A & B & ~C & ~D) | (A & ~B & C & ~D));
assign e = ((~A & D) | (~B & ~C & D) | (~A & B & ~C));
assign f = (~A & ~B & D) | (~A & ~B & C) | (~A & C & D) | (A & B & ~C & D);
assign g = (~A & ~B & ~C) | (~A & B & C & D) | (A & B & ~C & ~D);

endmodule
