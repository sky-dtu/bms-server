const authModel = require("../models/auth.model");

const authController = {}

authController.signup = authModel.signup;
authController.login = authModel.login;
authController.secret_route = authModel.secret_route;

module.exports = authController;
