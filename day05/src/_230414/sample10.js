const fs = require('fs');

const file = fs.readFile('textfile.txt', (error, file) =>{

    console.log(file);
    console.log(file.toString());

});
