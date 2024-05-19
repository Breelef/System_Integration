import db from "../database/data";

const Author = {
    books: (parent: any, args: any, context: any, info: any) => {
        const booksByAuthor = db.books.filter((book) => book.authorId === Number(parent.id));
        return booksByAuthor
    }
};

export default Author;