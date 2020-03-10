class PutBooksService
    include HTTParty
  
    def put_books_id(id)
        Books.put("/api/Books/#{id}",
            body:  {
              ID: $tbl_books['ID'],
              Title: $tbl_books['TITLE'],
              Description: $tbl_books['DESCRIPTION'],
              PageCount: $tbl_books['PAGE_COUNT'],
              Excerpt: $tbl_books['EXCERPT'],
              PublishDate: $tbl_books['PUBLISH_DATE']}.to_json,
            headers: { 'Accept' => 'application/json', 'Content-Type' => 'application/json'})
    end  

    def put_books_id1(id)
      Books.put("/api/Books/#{id}",
          body:  {
            ID: 300,
            Title: 'angelica',
            Description: 'angelica@angelica.com.br',
            PageCount: 2,
            Excerpt: 'lalalalala',
            PublishDate: '2020-02-26T16:05:36.077Z'}.to_json,
          headers: { 'Accept' => 'application/json', 'Content-Type' => 'application/json'})
    end  
  end