module InstanceServices

    def get_books_service
        GetBooksService.new
    end   

    def post_books_service
        PostBooksService.new
    end  

    def put_books_service
        PutBooksService.new
    end    
   
  end  