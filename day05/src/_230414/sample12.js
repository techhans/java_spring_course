// 모듈을 추출
const fs = require('fs');
// 파일을 쓴다
fs.writeFileSync('output.txt','(파일을 쓴다)Hello World!!');
console.log('파일 쓰기 완료');
