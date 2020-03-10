class GetBooksService
    include HTTParty

    def get_books    
        Books.get("/api/Books",
            headers: { 'Accept' => 'application/json' })
    end

    def get_books_id(id)
        Books.get("/api/Books/#{id}",
            headers: { 'Accept' => 'application/json' })
    end
end