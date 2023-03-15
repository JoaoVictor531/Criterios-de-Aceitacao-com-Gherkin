            #language: pt

            Funcionalidade: Tela de cadastro de checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na tela de cadastro

            Cenário: 1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu estiver preenchendo os campos do cadastro
            E esquecer um campo com asterisco
            Então o sistema deve me redirecionar à este campo para que eu possa preenche-lo

            Esquema do Cenário: 2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu prencher um campo com o <email> inválido
            Então deve exibir a seguinte <mensagem>

            Exemplos:
            | email                   | mensagem                                      |
            | "jow.vieira@email.com"  | "Email inválido, tente outra opção de email!" |
            | "joao_victor@email.com" | "Email inválido, tente outra opção de email!" |
            | "pedro531@email.com"    | "Email inválido, tente outra opção de email!" |

            Cenário: 3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
            Quando eu estiver preenchendo os campos do cadastro
            E esquecer um campo vazio
            Então o sistema deve exibir a mensagem: "Ainda há um campo a ser preenchido!" 