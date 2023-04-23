//모듈 추출
const express = require('express');
//서버 생성
const app = express();

//request 이벤트 리스너를 설정
app.get('*', (request,response)=>{
    response.status(404);
    response.set('method','ABCDE');
    response.set({
        'method1': 'hello',
        'method2': 'world'
    });
    response.send('여기는 본문위치 입니다');
});
// 서버 실행
app.listen(53333,()=>{
    console.log('server running at http://127.0.0.1:53333');
});