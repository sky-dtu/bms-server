const express = require("express");
const router = express.Router();
const userMiddleware = require("../middleware/auth.middleware");

const authController = require("../controllers/auth.controller")

router.post("/sign-up", userMiddleware.validateRegister, authController.signup);
router.post("/login", authController.login);
router.get("/secret-route", userMiddleware.isLoggedIn, authController.secret_route);

module.exports = router;
