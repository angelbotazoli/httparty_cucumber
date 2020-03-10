#language: pt

@get
Funcionalidade: Consulta livros
    Sendo um usuário
    Posso enviar solicitações GET para um serviço web
    Para ter acesso aos livros cadastrados

    Cenario: Valide o status code
        Quando que envio solicitações GET
        Então o código de resposta deve ser "200"

    Cenario: Valide o response body não esta vazio
        Quando que envio solicitações GET
        Então o objeto json retornado não está vazio   

    Cenario: Valide os dados do response body
        Dado que para consultar books o usuário informou os dados:
            | ID | 199 |
        Quando faço uma requisição GET para o serviço books
        Então valido os dados do livro
            | TITLE       | Book 199                                                     |
            | DESCRIPTION | Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n |
            Mas o objeto json retornado não está vazio
        
    Cenario: Valide as chaves do response body
        Dado que para consultar books o usuário informou os dados:
            | ID | 199 |
        Quando faço uma requisição GET para o serviço books
        Então o objeto json possui as chaves com a tipagem correta
            E o código de resposta deve ser "200"

    Cenario: Valide uma request inválida
        Dado que para consultar books o usuário informou os dados:
            | ID | hjk |
        Quando faço uma requisição GET para o serviço books
        Então o código de resposta deve ser "400"
            E a mensagem de erro "The request is invalid."