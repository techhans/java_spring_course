text = 'Hello'; // 선언 없으면 var로 선언한 것과 동일해짐 (X)
let text; // 여기서 var 선언을 let으로 변경해준 것임. (X)
console.log(text) // let 키워드로는 선언이 끌어올려지지 않기 때문에 undefined를 리턴함. (X)