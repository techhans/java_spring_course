const fs = require('fs');
const async = require('async');

// 병렬적으로 파일을 읽는다
async.parallel([
    (callback) => { fs.readFileSystem('a.txt',callback); },
    (callback) => { fs.readFileSystem('b.txt',callback); },
    (callback) => { fs.readFileSystem('c.txt',callback); },
], (error, result)=>{
    // 출력
    console.log(results);
});




console.log(a,b,c);
