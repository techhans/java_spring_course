// 모듈 추출
const express = require('express');
// 서버 생성
const app = express();
// request 이벤트 리스너 설정
app.get('*',(request, response)=>{
//    response.redirect('https://naver.com');
    response.status(302);
    response.set('Location','https://naver.com');
    response.send();
});
// 서버 실행
app.listen(53333,()=>{
    console.log('server running at http://127.0.0.1:53333');
});