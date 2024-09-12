const jwt = require('jsonwebtoken');

function authenticateToken(req, res, next) {

    const token = req.headers['authorization']?.split(' ')[1];

    // bearer token
    // bearer jklasdfkljsdafçlnçksdfj

    // após o split:

    // ['bearer'], [skldafjsklafjdkjsafd]

    if (!token) {
        return res.status(401).json({
            msg: 'Acesso negado!'
        });
    };

    // Headers payload, SECRET

    jwt.verify(token, process.env.SECRET, (err, user) => {

        if (err) {
            return res.status(403).json({
                msg: 'Acesso negado'
            })
        };

        req.user = user;

        next();
    });

};

module.exports = authenticateToken;