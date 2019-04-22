const express = require('express');
const path = require('path');

const app = express();

// Serve the static files from the React app
app.use(express.static(path.resolve(__dirname, '..', 'build')));

// Handles any requests that don't match the ones above
app.use('*', express.static(path.resolve(__dirname, '..', 'build/index.html')));

const port = process.env.PORT || 8000;
app.listen(port);

console.log(`Server listening on port ${port}`);