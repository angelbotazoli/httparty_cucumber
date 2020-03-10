#language: pt

@post
Funcionalidade: Cadastra livros
    Sendo um usuário
    Posso enviar solicitações POST para um serviço web
    Para cadastrar livros
    
    Cenario: Valide o cadastro de um livro
        Dado que para cadastrar books o usuário informou os dados:
            | ID           | 201                  |
            | TITLE        | hoje só tem ladainha |
            | DESCRIPTION  | ladainha ladainha    |
            | PAGE_COUNT   | 200                  |
            | EXCERPT      | ladainha ++          |
            | PUBLISH_DATE | 01/01/1984           |
        Quando faço uma requisição POST para o serviço books
        Então o código de resposta deve ser "200"

    Cenario: Valide o cadastro de um livro com dados em um arquivo de massa de dados
        Quando faço uma requisição POST a partir de um arquivo de massa de dados
        Então o código de resposta deve ser "200"

    Cenario: Valide o cadastro de um livro com dados gerados automaticamente
        Quando faço uma requisição POST a partir de dados gerados automaticamente
        Então o código de resposta deve ser "200"