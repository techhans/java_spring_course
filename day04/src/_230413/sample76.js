// 변수 선언을 var 키워드로 아래에서 했기 때문에 선언이 끌어올려져서 오류 안남. (호이스팅됨) - 땡
text = 'Hanamon!'; // 선언 없으면 var로 선언한 것과 동일해짐. (O)
console.log(text); // 그래서 선언 없어도 콘솔 출력됨.  (O)
var text;