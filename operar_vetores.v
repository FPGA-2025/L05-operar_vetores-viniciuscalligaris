module operar_vetores( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] saida_or_bit_a_bit,
    output saida_or_logico,
    output [5:0] saida_not
);

    assign saida_or_bit_a_bit = a | b;

    assign saida_or_logico = |a || |b;
         
    assign saida_not = ~{b, a};

endmodule