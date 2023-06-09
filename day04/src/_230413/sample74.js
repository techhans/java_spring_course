// 호이스팅 때문에 선언이 끌어올려졌지만 초기화 안된 상태에서 참조해서 오류 남.
console.log(text); // (선언 된 상태, 초기화(메모리 공간 확보와 undefined로 초기화) 안되서 참조 불가능 -> 에러남)
let text; // 여기서 초기화 단계가 실행됨
// ReferenceError: Cannot access 'text' before initialization