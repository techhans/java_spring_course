// 모듈 추출
const request = require('request');
// request 모듈 사용
const url = 'https://www.naver.com';
request(url, (error, response, body) => {
    console.log(body);
});