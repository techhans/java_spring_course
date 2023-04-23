let now = new Date();
let before = new Date('April 15, 2013');
// 시간 간격
let interval = now.getTime() - before.getTime();
interval = Math.floor(interval / (1000 * 60 * 60 *24));
// 출력
console.log(`${before} 날짜 이후 ${interval}일 지났습니다`);
// Mon Apr 15 2013 00:00:00 GMT+0900 (대한민국 표준시) 날짜 이후 3652일 지났습니다