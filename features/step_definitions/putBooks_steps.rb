########## 1 CENÁRIO ##########

Quando("faço uma requisição PUT para o serviço books") do |tbl_books|
  $tbl_books = tbl_books.rows_hash
  @request_result = put_books_service.put_books_id(@book_id['ID'])
end

########## 1 CENÁRIO ##########

Então("a mensagem de erro {string}") do |message_error|
  expect(@request_result.parsed_response['Message']). to eql message_error
end