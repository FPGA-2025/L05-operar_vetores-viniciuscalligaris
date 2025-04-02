module tb();

// Sinais gerais
reg   [2:0] a;
reg   [2:0] b;
wire  [2:0] saida_or_bit_a_bit;
wire        saida_or_logico;
wire  [5:0] saida_not;

reg [5:0] dados_arquivo [0:3];

operar_vetores op( 
    .a(a),
    .b(b),
    .saida_or_bit_a_bit(saida_or_bit_a_bit),
    .saida_or_logico(saida_or_logico),
    .saida_not(saida_not)
);

integer i;

initial begin
  
  $readmemb("teste.txt", dados_arquivo); // le o arquivo de entrada e guarda em dados_arquivo

  $dumpfile("saida.vcd");
  $dumpvars(0, tb);

  $monitor("a=%b, b=%b, saida_or_bit_a_bit=%b, saida_or_logico=%b, saida_not=%b", a, b, saida_or_bit_a_bit, saida_or_logico, saida_not);
  
  for (i = 0; i < 4; i = i + 1) begin
    a = dados_arquivo[i][5:3];
    b = dados_arquivo[i][2:0];
    #1;
  end

end

endmodule