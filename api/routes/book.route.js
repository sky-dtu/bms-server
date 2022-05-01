const express = require("express");
const router = express.Router();

const userMiddleware = require("../middleware/auth.middleware");
const bookController = require("../controllers/book.controller")

router.post("/add-book", userMiddleware.isAdmin, bookController.addBook);
router.patch("/update-copy", userMiddleware.isAdmin, bookController.updateCopy);
router.delete("/delete-book/:id", userMiddleware.isAdmin, bookController.deleteBook);
router.get("/get-book", userMiddleware.isLoggedIn, bookController.getBook);
router.patch("/decrease-copy/:id", userMiddleware.isLoggedIn, bookController.decreaseCopy);
router.get("/get/trending-book", userMiddleware.isLoggedIn, bookController.getTrendingBook);

module.exports = router;
