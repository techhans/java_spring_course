// 모듈 추출
const express = require('express');
// 서버 생성
const app = express();
//  request 이벤트 리스너를 설정
app.get('/page/:id',(request,response)=>{
    //토큰 얻기
    const id = request.params.id;
    // 응답
    console.log(id);
    response.send(`<h1>id:${id} Page</h1>`)
});
app.listen(53333, ()=>{
     console.log('server running at http://127.0.0.1:53333');
});
