// 모듈 추출
const express = require('express');
// 서버 생성/실행
const app = express();
app.listen(53333, ()=>{
    console.log('server running at http://127.0.0.1:53333');
});
// 미들웨어 추가
app.use(express.urlencoded({
    extended: false
}))
// 변수 선언
let userCounter = 0;
const users = [];
// 라우트
// /user로 GET요청하면 전체 사용자 정보 조회
app.get('/user',(request,response)=>{
    response.send(users);
});

//////////////////////////////////////////////////
//  /user/10 등으로 GET 요청하면 특정 사용자정보를 조회
//////////////////////////////////////////////////
app.get('/user/:id',(request,response)=>{
    // 변수 선언
    const id = request.params.id;
    // data finding
    const filtered = users.filter((user)=>user.id == id);
    // 응답
    if(filtered.length == 1){
        response.send(filtered[0]);
    }else{
        response.status(404).send('데이터가 존재하지 않습니다.');
    }
});

//////////////////////////////////////////////////
//  /user로 POST 요청하면 사용자를 추가
//////////////////////////////////////////////////
app.post('/user',(request, response)=>{
    // 변수 선언
    const body = request.body;
    // 예외 처리
    if(!body.name){
        return response.status(400).send('name을 보내주세요');
    }else if(!body.region){
        return response.status(400).send('region을 보내주세요');
    }
    // 변수를 추출
    const name = body.name;
    const region = body.region;
    // 데이터를 저장합니다.
    const data = {
        id: userCounter++,
        name: name,
        region: region
    };
    users.push(data);
    response.send(data);
});

/////////////////////////////////////////////////////
//  /user/10 등으로 PUT요청하면 특정 사용자 정보를 수집
/////////////////////////////////////////////////////
app.put('/user/:id',(request,response)=>{
    // 데이터 찾기
    const id = request.params.id;
    const user = user.find((user)=>user.id == id);
    if(user){
        // 데이터가 존재
        if(request.body.name){
            user[id].name = request.body.name;
        }
        if(request.body.region){
            user[id].region = request.body.region;
        }
        // 응답
        response.send(user);
    }else{
        //데이터가 존재하지 않으면
        // 응답
        response.status(404).send('데이터가 존재하지 않습니다');
    }
});

////////////////////////////////////////////////////////
//  /user/10 등으로 DELETE 요청하면 특정 사용자 정보를 제거
////////////////////////////////////////////////////////
app.delete('/user/:id',(request,response)=>{
    // 변수 선언
    const id = request.params.id;
    const index = users.findIndex((user)=>user.id==id);
    // 데이터 제거
    if(index != -1){
        users.splice(index, 1);
        response.send('제거함');
    }else{
        response.status(404).send('NO DATA');
    }

});



