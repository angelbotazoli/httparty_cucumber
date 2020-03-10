########## 1- CENÁRIO ##########

Dado("que para cadastrar books o usuário informou os dados:") do |books|
  @books =  books.rows_hash
end

Quando("faço uma requisição POST para o serviço books") do
  @request_result = post_books_service.post_books(@books)
end

########## 2- CENÁRIO ##########

Quando("faço uma requisição POST a partir de um arquivo de massa de dados") do
  @request_result = post_books_service.post_books_file_data  
end

########## 3- CENÁRIO ##########

Quando("faço uma requisição POST a partir de dados gerados automaticamente") do
  @request_result = post_books_service.post_books(generate_faker_book)  
end