const express = require('express')
const app = express()
app.get('/', async (req, res, next) => {
    res.status(200).send('Hello World!')
})
app.listen(3000, () => console.log('Listening on port 3000'))
