const books = [
    {id: 1, title: "Book 1", releaseYear:2001, authorId: 1},
    {id: 2, title: "Book 2", releaseYear:2002, authorId: 2},
];

const authors = [
    {id:1, name: "Author 1", books: [1]},
    {id:2, name: "Author 2", books: [2]},
]

export const resolvers = {
    Query: {
        books: () => books,
        book: (_, {id}) => books.find(book => book.id === id),
        authors: () => authors,
        author: (_, {id}) => authors.find(author => author.id === id)
    },
    Mutation: {
        createBook: (_, {authorId, title, releaseYear}) => {
            const newBook = {
                id: String(books.length + 1),
                title,
                releaseYear,
                authorId,
            }
            books.push(newBook);
            return newBook;
        },
        updateBook: (_, {id, authorId, title, releaseYear}) => {
            const book = books.find(book=>book.id === id);
            if(!book) return null;
            book.title = title ?? book.title;
            book.releaseYear = releaseYear ?? book.releaseYear;
            book.authorId = authorId ?? book.authorId;
            return book;
        },
        deleteBook: (_, {id}) => {
            const index = books.findIndex(book => book.id = id);
            if (index === -1){
                return {message: "Book not found", errorCode: 404};
            }
            books.splice(index,1);
            return { message: "Book deleted" };
        }
    },
    Author: {
        books: (author => books.filter(book => book.authorId === author.id)),
    },
    Book: {
        author: (book) => authors.find(author => author.id === book.authorId),
    }
};
