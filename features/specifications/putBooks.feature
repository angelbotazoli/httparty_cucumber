#language: pt

@put
Funcionalidade: Atualiza livros
    Sendo um usuário
    Posso enviar solicitações PUT para um serviço web
    Para atualizar livros cadastrados

    Cenario: Valide a alteração de um livro
        Dado que para consultar books o usuário informou os dados:
            | ID | 1 |
        Quando faço uma requisição PUT para o serviço books
            | ID           | 201                  |
            | TITLE        | hoje só tem ladainha |
            | DESCRIPTION  | ladainha ladainha    |
            | PAGE_COUNT   | 200                  |
            | EXCERPT      | ladainha ++          |
            | PUBLISH_DATE | 01/01/1984           |
        Então o código de resposta deve ser "200"

     Cenario: Valide uma request inválida
        Dado que para consultar books o usuário informou os dados:
            | ID | aasdas |
        Quando faço uma requisição PUT para o serviço books
            | ID           | 201                  |
            | TITLE        | hoje só tem ladainha |
            | DESCRIPTION  | ladainha ladainha    |
            | PAGE_COUNT   | 200                  |
            | EXCERPT      | ladainha ++          |
            | PUBLISH_DATE | 01/01/1984           |
        Então o código de resposta deve ser "400"
            E a mensagem de erro "The request is invalid."
    