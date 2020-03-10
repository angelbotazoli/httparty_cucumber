########## 1- CENÁRIO ##########

Dado("que envio solicitações GET") do
  @request_result = get_books_service.get_books
end

Então("o código de resposta deve ser {string}") do |status_code|
  puts @request_result.response.code
 expect(@request_result.response.code).to eql status_code

end

########## 2- CENÁRIO ##########

Então("o objeto json retornado não está vazio") do
  expect(@request_result.parsed_response).not_to be_empty   
end

########## 3- CENÁRIO ##########

Dado("que para consultar books o usuário informou os dados:") do |book_id|
  @book_id = book_id.rows_hash
end

Quando("faço uma requisição GET para o serviço books") do
  @request_result = get_books_service.get_books_id(@book_id['ID'])
end

Então("valido os dados do livro") do |books|
  @books = books.rows_hash
  @result = @request_result.parsed_response 
  expect(@result['Title']).to eql (@books['TITLE'])
  #expect(start_with(@result['Description'])).to eql (@books['DESCRIPTION'])
  #expect(@result['Description']).to start_with(@books['DESCRIPTION'])
end

########## 4- CENÁRIO ##########

Então("o objeto json possui as chaves com a tipagem correta") do
  @result = @request_result.parsed_response 
  expect(@result['ID'].class).to eql Integer
  expect(@result['Title'].class).to eql String
  expect(@result['Description'].class).to eql String
  expect(@result['PageCount'].class).to eql Integer
  expect(@result['Excerpt'].class).to eql String
  expect(@result['PublishDate'].class).to eql String
end

########## 4- CENÁRIO ##########

Então("a mensagem de erro:") do |message_error|
  puts @request_result.parsed_response['MessageDetail']
  expect(@request_result.parsed_response['MessageDetail']). to eql message_error
end