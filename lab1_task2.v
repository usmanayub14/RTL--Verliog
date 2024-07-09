module fourbit_subtractor(
input [3:0]A, 
input [3:0]B,
output [3:0]S,
input c
);
wire [3:0]B_invert;
wire c0,c1,c2,c3;
xor x1(B_invert[0],c,B[0]);
xor x2(B_invert[1],c,B[1]);
xor x3(B_invert[2],c,B[2]);
xor x4(B_invert[3],c,B[3]);
full_adder FA1(.a(A[0]),.b(B_invert[0]),.cin(c),.s(S[0]),.cout(c0));
full_adder FA2(.a(A[1]),.b(B_invert[1]),.cin(c0),.s(S[1]),.cout(c1));
full_adder FA3(.a(A[2]),.b(B_invert[2]),.cin(c1),.s(S[2]),.cout(c2));
full_adder FA4(.a(A[3]),.b(B_invert[3]),.cin(c2),.s(S[3]),.cout(c3));
endmodule


