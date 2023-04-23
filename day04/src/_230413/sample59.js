// 변수를 선언
const jsObject = [
                {name:'헬로',region:'서울'},
                {name:'월드',region:'부산'}
            ];
// JSON.stringify 메소드로 자바스크립트 객체를 JSON문자열로 변경
const output1 = JSON.stringify(jsObject);
const output2 = JSON.stringify(jsObject, null, 2);
console.log(typeof(output1));
console.log(output1);
console.log(output2);
// JSON.parse() 메소드로 JSON 문자열을 자바스크립트 객체로 변경
const output3 = JSON.parse(output2);
console.log(typeof(output3));
console.log(output3);