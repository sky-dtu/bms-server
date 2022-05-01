const express = require("express");
const router = express.Router();
const bcrypt = require("bcryptjs");
const uuid = require("uuid");
const jwt = require("jsonwebtoken");
const db = require("../../config/db.config");
const userMiddleware = require("../middleware/auth.middleware");

const authController = require("../controllers/auth.controller")

router.post("/sign-up", userMiddleware.validateRegister, authController.signup);
router.post("/login", authController.login);
router.get("/secret-route", userMiddleware.isLoggedIn, authController.secret_route);

module.exports = router;
