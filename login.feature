            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a EBAC-SHOP

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu inserir usuário e senha corretamente
            Então devo ser direcionado para a tela de checkout

            Cenário: Usuário não cadastrado
            Quando o usuário digitar o email
            E senha pela primeira vez
            Então deve exibir a mensagem: "Usuário não cadastrado! Por favor, cadastre-se!"

            Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu inserir os dados <email> ou <senha> inválidos
            Então deve exibir a <mensagem> de alerta: "Usuário ou senha inválidos"

            Exemplos:
            | email             | senha       | mensagem                     |
            | "joao@gmail.com"  | "123jota"   | "Usuário ou senha inválidos" |
            | "ana@outlook.com" | "ana123"    | "Usuário ou senha inválidos" |
            | "pedro@gmail.com" | "123@pedro" | "Usuário ou senha inválidos" | 