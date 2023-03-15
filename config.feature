#language: pt

Funcionalidade: Configurar Produto 
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a EBAC-SHOP 

Cenário: Seleção de cor, tamanho e quantidade
Quando eu estiver na página do produto desejado
E selecione a cor, tamanho e quantidade 
Então o produto deve ser adicionado ao carrinho

Cenário: Deve permitir apenas 10 produtos por venda
Quando eu adicionar até 10 produtos no carrinho 
E finalizar a compra 
Então os produtos devem ser adicionados ao carrinho 

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando eu já estiver como meus produtos selecionados
E   clicar no botão "limpar"    
Então o carrinho deve voltar ao estado original 