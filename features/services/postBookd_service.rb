class PostBooksService
  include HTTParty

  def post_books_file_data           
    Books.post("/api/Books",
      body: $data_books.to_json,
      headers: { 'Accept' => 'application/json', 'Content-Type' => 'application/json'})
  end 

  def post_books(books)
    Books.post("/api/Books",
      body:  books.to_json,
      headers: { 'Accept' => 'application/json', 'Content-Type' => 'application/json'})
  end
end