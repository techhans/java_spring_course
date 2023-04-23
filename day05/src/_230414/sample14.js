// 모듈 추출
const fs = require('fs');
// 예외 처리
try{
    // 파일을 읽고 출력
    const file = fs.readFileSync('none.txt');
    console.log(file);
    console.log(file.toString());
}catch(exception){
    // 예외 발생
    console.log('피일을 읽을 때 에러 발생');
    console.log(exception);
}