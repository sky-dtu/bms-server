const express = require("express");
const router = express.Router();
const bcrypt = require("bcryptjs");
const uuid = require("uuid");
const jwt = require("jsonwebtoken");
const db = require("../../config/db.config");
const userMiddleware = require("../middleware/auth.middleware");

const bookModel = {};

bookModel.addBook = (req, res, next) => {
	// Fill all required fields
	if (
		!req.body.isbn ||
		!req.body.title ||
		!req.body.authorname ||
		!req.body.yearofpublication ||
		!req.body.category ||
		!req.body.availablecopies
	) {
		return res.status(406).send({
			msg: "Please fill all required fields to add new book",
		});
	}

	db.query(
		`SELECT * FROM ${
			process.env.TABLEBOOK
		} WHERE LOWER(isbn) = LOWER(${db.escape(req.body.isbn)});`,
		(err, result) => {
			// Book already exists in DB
			if (result.length) {
				return res.status(409).send({
					msg: "This book already exists in database",
				});
			} else {
				db.query(
					`INSERT INTO ${
						process.env.TABLEBOOK
					} (isbn, title, authorname, yearofpublication, category, availablecopies, createdat) VALUES (${db.escape(
						req.body.isbn
					)}, ${db.escape(req.body.title)}, ${db.escape(
						req.body.authorname
					)}, ${db.escape(req.body.yearofpublication)}, ${db.escape(
						req.body.category
					)}, ${db.escape(req.body.availablecopies)}, now())`,
					(err, result) => {
						if (err) {
							// throw err;
							return res.status(400).send({
								msg: err,
							});
						}
						return res.status(201).send({
							msg: "Added !",
							result: result,
						});
					}
				);
			}
		}
	);
};

bookModel.updateCopy = (req, res, next) => {
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} WHERE isbn = ${db.escape(
			req.body.isbn
		)};`,
		(err, result) => {
			// book does not exists
			if (err) {
				// throw err;
				return res.status(400).send({
					msg: err,
				});
			}

			if (!result.length) {
				return res.status(404).send({
					msg: "Book doesn't exists",
				});
			}

			const book = JSON.parse(JSON.stringify(result[0]));
			book.availablecopies =
				Number(result[0].availablecopies) + Number(req.body.copies);

			if (book.availablecopies < 0) {
				return res.status(200).send({
					msg:
						"Cannot update copies because " +
						Math.abs(Number(req.body.copies)) +
						" copies are not available",
					availablecopies: result[0].availablecopies,
				});
			}

			// Update Book Copies
			db.query(
				`UPDATE ${process.env.TABLEBOOK} SET availablecopies = availablecopies + ${req.body.copies} WHERE id = '${result[0].id}'`,
				(err, dbres) => {
					if (err) {
						return res.status(400).send({
							msg: err,
						});
					}

					return res.status(200).send({
						msg: "Updated Copies!",
						book,
					});
				}
			);
		}
	);
};

bookModel.deleteBook = (req, res, next) => {
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} WHERE id = ${db.escape(
			req.params.id
		)};`,
		(err, result) => {
			// book does not exists
			if (err) {
				// throw err;
				return res.status(400).send({
					msg: err,
				});
			}

			if (!result.length) {
				return res.status(404).send({
					msg: "Book doesn't exists",
				});
			}

			const book = JSON.parse(JSON.stringify(result[0]));
			book.availablecopies = 0;

			// Delete a book
			db.query(
				`DELETE FROM ${process.env.TABLEBOOK} WHERE id = '${result[0].id}'`,
				(err, dbres) => {
					if (err) {
						return res.status(400).send({
							msg: err,
						});
					}

					const book = JSON.parse(JSON.stringify(result[0]));
					book.availablecopies =
						Number(result[0].availablecopies) +
						Number(req.body.copies);

					return res.status(200).send({
						msg: "Deleted book!",
						book,
					});
				}
			);
		}
	);
};

bookModel.getAllBooks = (req, res, next) => {
	// console.log(req.body, req.query);
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} ORDER BY createdat DESC LIMIT ${
			req.query.limit || 50
		} OFFSET ${req.query.offset || 0} ;`,
		(err, result) => {
			// book does not exists
			if (err) {
				// throw err;
				return res.status(400).send({
					msg: err,
				});
			}

			// if (!result.length) {
			// return res.status(404).send({
			// 	msg: "Book doesn't exists",
			// });

			// return res.status(404).send([]);
			// }

			const books = JSON.parse(JSON.stringify(result));
			return res.status(200).send(books);
		}
	);
};

bookModel.getBookById = (req, res, next) => {
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} WHERE id = ${db.escape(
			req.body.id
		)};`,
		(err, result) => {
			// book does not exists
			if (err) {
				// throw err;
				return res.status(400).send({
					msg: err,
				});
			}

			// if (!result.length) {
			// 	return res.status(404).send({
			// 		msg: "Book doesn't exists",
			// 	});
			// }

			const book = JSON.parse(JSON.stringify(result[0]));
			return res.status(200).send(book);
		}
	);
};

bookModel.getBookByTitle = (req, res, next) => {
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} 
		WHERE title LIKE '%${req.query.title}%';`,
		(err, result) => {
			// book does not exists
			if (err) {
				// throw err;
				return res.status(400).send({
					msg: err,
				});
			}

			// if (!result.length) {
			// 	return res.status(404).send({
			// 		msg: "Book doesn't exists",
			// 	});
			// }

			const books = JSON.parse(JSON.stringify(result));
			// book.availablecopies = 0;

			return res.status(200).send(books);
		}
	);
};

bookModel.getBookByAuthor = (req, res, next) => {
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} 
		WHERE authorname LIKE '%${req.query.authorname}%';`,
		(err, result) => {
			// book does not exists
			if (err) {
				// throw err;
				return res.status(400).send({
					msg: err,
				});
			}

			// if (!result.length) {
			// 	return res.status(404).send({
			// 		msg: "Book doesn't exists",
			// 	});
			// }

			const book = JSON.parse(JSON.stringify(result));

			return res.status(200).send(book);
		}
	);
};

bookModel.getBookByYear = (req, res, next) => {
	// console.log(req.query.yearofpublication);
	db.query(
		`SELECT * FROM ${
			process.env.TABLEBOOK
		} WHERE yearofpublication >= ${db.escape(
			req.query.yearofpublication
		)} ORDER BY yearofpublication ASC LIMIT ${
			req.query.limit || "50"
		} OFFSET ${req.query.offset || "0"};`,
		(err, result) => {
			// book does not exists
			if (err) {
				return res.status(400).send({
					msg: err,
				});
			}

			const books = JSON.parse(JSON.stringify(result));
			return res.status(200).send(books);
		}
	);
};

bookModel.decreaseCopy = (req, res, next) => {
	// console.log(4464, req.body.id);
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} WHERE id = ${db.escape(
			req.body.id
		)};`,
		(err, result) => {
			// book does not exists
			if (err) {
				// throw err;
				return res.status(400).send({
					msg: err,
				});
			}

			if (!result.length) {
				return res.status(404).send({
					msg: "Book doesn't exists",
				});
			}

			const book = JSON.parse(JSON.stringify(result[0]));
			book.availablecopies =
				Number(result[0].availablecopies) - Number(req.body.copies);

			if (book.availablecopies < 0) {
				return res.status(409).send({
					msg:
						"Cannot update copies because " +
						Math.abs(Number(req.body.copies)) +
						" copies are not available",
					availablecopies: result[0].availablecopies,
				});
			}

			// Decrease Book Copy
			db.query(
				`UPDATE ${process.env.TABLEBOOK} SET availablecopies = availablecopies - ${req.body.copies}, lastbought=now() WHERE id = '${result[0].id}'`,
				(err, dbres) => {
					if (err) {
						return res.status(400).send({
							msg: err,
						});
					}

					return res.status(200).send({
						msg: "Book issued. Decreased number of copies!",
						book,
					});
				}
			);
		}
	);
};

bookModel.getTrendingBook = (req, res, next) => {
	db.query(
		`SELECT * FROM ${process.env.TABLEBOOK} ORDER BY lastbought DESC LIMIT 10;`,
		(err, result) => {
			// book does not exists
			if (err) {
				return res.status(400).send({
					msg: err,
				});
			}

			const book = JSON.parse(JSON.stringify(result));

			return res.status(200).send(book);
		}
	);
};

module.exports = bookModel;
