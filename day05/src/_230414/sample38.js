// 모듈 추출
const express = require('express');
const morgan = require('morgan');
// 서버생성
const app = express();
app.use(express.static('public'));
app.use(morgan('combined'));
app.use(express.urlencoded({extended: false}));
//request 이벤트 리스너 설정
app.get('/',(request, response)=>{
    // HTML 형식 문자열 생성
    let output = '';
    output += '<form method="post">';
    output += '  <input type = "text" name="a" />'
    output += '  <input type = "text" name="b" />'
    output += '  <input type = "submit" />';
    output += '</form>';
    // 응답
    response.send(output);
});
app.post('/',(request,response)=>{
    // 응답
    response.send(request.body);
});
// 서버 실행
app.listen(53333, ()=>{
    console.log('server running at http://127.0.0.1:53333');
});

