const bookModel = require("../models/book.model");

const bookController = {};

bookController.addBook = bookModel.addBook;
bookController.updateCopy = bookModel.updateCopy;
bookController.deleteBook = bookModel.deleteBook;
// bookController.getAllBooks = bookModel.getAllBooks;
bookController.decreaseCopy = bookModel.decreaseCopy;
bookController.getTrendingBook = bookModel.getTrendingBook;
bookController.getBook = (req, res, next) => {
	console.log("Body", req.body, 64654123)
	
	if (req.query.id) {
		bookModel.getBookById(req, res, next);
	} else if (req.query.title) {
		bookModel.getBookByTitle(req, res, next);
	} else if (req.query.authorname) {
		bookModel.getBookByAuthor(req, res, next);
	} else if (req.query.yearofpublication) {
		bookModel.getBookByYear(req, res, next);
	} else {
		console.log("Get All Books")
		bookModel.getAllBooks(req, res, next);
	}
};

module.exports = bookController;
