module task5(
    output a,b,c,d,e,f,g,h,i,j,k,l,m,n,
    input [3:0] X, Y,
    input C1
);

    wire A,B,C,D,E;
    
    fourbit_adder FA(
        .A(X),
        .B(Y),
        .contrl(C1), // Corrected from C1 to C1
        .S({A,B,C,D}),
        .C(E)
    );
    b2ss b1(.A(A),.B(B),.C(C),.D(D),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
    b2ss b2(.A(1'b0),.B(1'b0),.C(1'b0),.D(E),.a(h),.b(i),.c(j),.d(k),.e(l),.f(m),.g(n));

endmodule

