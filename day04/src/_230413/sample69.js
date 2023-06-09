// 예제 1
// y만 호이스팅 대상

x = 1; // x 초기화. x를 선언하지 않은 경우 선언. 그러나 명령문에 var가 없으므로 호이스팅이 발생하지 않음
console.log(x + " " + y); // '1 undefined'
// JavaScript는 선언만 호이스팅하므로, 윗줄의 y는 undefined
var y = 2; // y를 선언하고 초기화