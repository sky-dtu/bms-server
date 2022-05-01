const express = require("express");
const router = express.Router();
const bcrypt = require("bcryptjs");
const uuid = require("uuid");
const jwt = require("jsonwebtoken");
const db = require("../../config/db.config");
const userMiddleware = require("../middleware/auth.middleware");

const authModel = {};

authModel.signup = (req, res, next) => {
	db.query(
		`SELECT * FROM ${
			process.env.TABLEUSER
		} WHERE LOWER(username) = LOWER(${db.escape(req.body.username)});`,
		(err, result) => {
			if (result.length) {
				return res.status(409).send({
					msg: "This username is already in use!",
				});
			} else {
				// username is available
				bcrypt.hash(req.body.password, 10, (err, hash) => {
					if (err) {
						return res.status(500).send({
							msg: err,
						});
					} else {
						// has hashed pw => add to database
						db.query(
							`INSERT INTO ${
								process.env.TABLEUSER
							} (id, type, username, password, registered) VALUES ('${uuid.v4()}', ${db.escape(
								req.body.type
							)}, ${db.escape(req.body.username)}, ${db.escape(
								hash
							)}, now())`,
							(err, result) => {
								if (err) {
									throw err;
									return res.status(400).send({
										msg: err,
									});
								}
								return res.status(201).send({
									msg: "Registered!",
								});
							}
						);
					}
				});
			}
		}
	);
};

authModel.login = (req, res, next) => {
	db.query(
		`SELECT * FROM ${process.env.TABLEUSER} WHERE username = ${db.escape(
			req.body.username
		)};`,
		(err, result) => {
			// user does not exists
			if (err) {
				throw err;
				return res.status(400).send({
					msg: err,
				});
			}
			if (!result.length) {
				return res.status(401).send({
					msg: "Username or password is incorrect!",
				});
			}
			// check password
			bcrypt.compare(
				req.body.password,
				result[0]["password"],
				(bErr, bResult) => {
					// wrong password
					if (bErr) {
						// throw bErr;
						return res.status(401).send({
							msg: "Username or password is incorrect!",
						});
					}
					if (bResult) {
						const token = jwt.sign(
							{
								username: result[0].username,
								userId: result[0].id,
								type: result[0].type,
							},
							"SECRETKEY",
							{
								expiresIn: "7d",
							}
						);
						db.query(
							`UPDATE ${process.env.TABLEUSER} SET last_login = now() WHERE id = '${result[0].id}'`
						);
						return res.status(200).send({
							msg: "Logged in!",
							token,
							user: result[0],
						});
					}
					return res.status(401).send({
						msg: "Username or password is incorrect!",
					});
				}
			);
		}
	);
};

authModel.secret_route = (req, res, next) => {
	console.log(req.userData);
	res.send("This is the secret content. Only logged in users can see that!");
};

module.exports = authModel;
