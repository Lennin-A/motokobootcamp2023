import Book "book";
import List "mo:base/List";

actor day_3 {

    type Book = Book.Book;

    let bible : Book = {
        title = "Bible"; 
        pages = 400;
    };

    var book_list = List.nil<Book>();

    public shared query func add_book(b : Book) : async () {
        book_list := List.push<Book>(b, book_list);
        
    };

    public shared query func get_books() : async [Book] {
        return List.toArray<Book>(book_list);
    };

};
