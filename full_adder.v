
module full_adder(input a,b,cin, output s,cout);
//xor gates for sum calculation '
wire xor1_out,xor2_out;
xor xor1(xor1_out, a,b);
xor xor2(xor2_out, xor1_out,cin);
assign s=xor2_out;
//2 and gates and 1 or gate for carry calculation 
wire and1_out,and2_out;
and and1(and1_out,xor1_out,cin);
and and2(and2_out,a,b);
wire or_out;
or orgate(or_out,and1_out,and2_out);
assign cout=or_out;
endmodule
