module Book {

    public type Book = {
        title: Text;
        pages: Nat;
    };

    func create_book(t: Text, p : Nat) : Book {
        return ({
            title = t;
            pages = p;
        })
    };
}