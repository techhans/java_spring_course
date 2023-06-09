// 호이스팅 때문에 선언이 끌어올려져서 오류 안남.
console.log(text); // (선언 + 초기화 된 상태)
text = 'Hanamon!'; // (선언 + 초기화 + 할당 된 상태)
var text;
console.log(text);