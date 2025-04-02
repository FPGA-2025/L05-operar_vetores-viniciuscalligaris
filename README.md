# Operando Sobre Vetores

Esta atividade busca mostrar algumas operações básicas com vetores de bits. Esse tipo de operação é muito importante, pois em quase todo projeto são usados vetores de bits. Operar em vetores permite fazer operações com quantidades maiores de dados de uma vez e também simplifica a escrita do código HDL.

## Comportamento do Módulo Operador de Vetores

O operador de vetores tem duas entradas de três bits, `a` e `b`, e três saídas, `saida_or_bit_a_bit`, `saida_or_logico` e `saida_not`. A primeira saída deve realizar a operação OR bit a bit com as duas entradas. A segunda saída faz a operação OR lógica. A terceira saída mostra a operação NOT sobre a entrada b concatenada com a entrada a, sendo b na parte mais significativa. Veja na tabela abaixo um exemplo de comportamento esperado.

|   a   |   b   | saida_or_bit_a_bit | saida_or_logico |  saida_not  |
|-------|-------|--------------------|-----------------|-------------|
|  000  |  000  |   000   |   0   | 111 111 |
|  000  |  001  |   001   |   1   | 110 111 |
|  011  |  010  |   011   |   1   | 101 100 |
|  101  |  011  |   111   |   1   | 100 010 |
|  111  |  100  |   111   |   1   | 011 000 |

> É importante nessa atividade observar o comportamento de cada tipo de operção e prestar atenção nos símbolos dos operadores, para não se confundir.

## Execução da atividade

Siga o modelo de módulo já fornecido e utilize o testbench e scripts de execução para sua verificação. Em seguida, implemente o circuito de acordo com as especificações e, se necessário, crie outros testes para verificá-lo.

Uma vez que estiver satisfeito com o circuito, execute o script de testes com `./run-all.sh`. Serão feitos 10 testes: cada um deles mostrará na tela `ERRO` em caso de falha ou `OK` em caso de sucesso.

## Entrega

Para entregar o projeto, basta fazer um *commit* no repositório do GitHub. O GitHub Classroom já está configurado para verificar a entrega e atribuir a nota dos testes automaticamente.

> Os testes do GitHub estão embutidos nos arquivos do laboratório. Se quiser saber mais sobre eles, veja o script de correção 'run.sh' do repositório do GitHub. Não altere os arquivos de correção!