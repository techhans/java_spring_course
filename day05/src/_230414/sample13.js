// 모듈을 추출
const fs = require('fs');
// 파일을 쓴다
fs.writeFile('output2.txt','(파일을 쓴다2)Hello World!!', (error) => {
    console.log('파일 쓰기2 완료');
});

