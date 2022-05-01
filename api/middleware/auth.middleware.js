const jwt = require("jsonwebtoken");
module.exports = {
	validateRegister: (req, res, next) => {
		// username min length 3
		if (!req.body.username || req.body.username.length < 3) {
			return res.status(400).send({
				msg: "Please enter a username with min. 3 chars",
			});
		}
		// password min 6 chars
		if (!req.body.password || req.body.password.length < 6) {
			return res.status(400).send({
				msg: "Please enter a password with min. 6 chars",
			});
		}
		// password (repeat) does not match
		if (
			!req.body.password_repeat ||
			req.body.password != req.body.password_repeat
		) {
			return res.status(400).send({
				msg: "Both passwords must match",
			});
		}
		next();
	},

	isLoggedIn: (req, res, next) => {
		try {
			const token = req.headers.authorization.split(" ")[1];
			// console.log(token)
			const decoded = jwt.verify(token, "SECRETKEY");
			req.userData = decoded;
			// console.log(decoded)
			next();
		} catch (err) {
			return res.status(401).send({
				msg: "Your session is not valid!",
			});
		}
	},

	isAdmin: (req, res, next) => {
		try {
			const token = req.headers.authorization.split(" ")[1];
			const decoded = jwt.verify(token, "SECRETKEY");
			req.userData = decoded;

			// console.log(decoded)

			if (decoded.type != "admin") {
				return res.status(401).send({
					msg: "You must be admin to make these changes",
				});
			}

			next();
		} catch (err) {
			return res.status(401).send({
				msg: "You must be admin to make these changes",
			});
		}
	},
};
