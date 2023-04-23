// 모듈 추출
const fs = require('fs');
    // 파일을 읽는다
fs.readFile('textfile3.txt', (error, file) => {
    // 예외 처리
    if(error){
    // 예외 발생
        console.log('파일 읽을 시 문제 발생');
        console.log(error);
    }else{
        console.log(file);
        console.log(file.toString());
    }
});


