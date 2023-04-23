//모듈 추출
const express = require('express');
const morgan = require('morgan');

const app = express();
app.use(express.static('public'));
app.use(morgan('combined'));

// request 이벤트 리스터 설정
app.get('*',(request,response)=>{
    response.send('명령을 확인해 주세요')
});
// 서버 실행
app.listen(53333, ()=>{
    console.log('server running at http://127.0.0.1:53333');
});