//모듈 추출
const express = require('express');
//서버 생성
const app = express();
app.use(express.static('public'));
// request 이벤트 리스터 설정
app.get('*',(request,response)=>{
    response.send(404);
    response.send('해당경로에 Nothing');
});
//서버 실행
app.listen(53333,()=>{
    console.log('server running at http://127.0.0.1:53333');
})