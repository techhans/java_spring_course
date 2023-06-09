foo1(); // 함수 선언문에서는 호이스팅 일어난다.
foo2(); // 함수 표현식이라서 호이스팅 안된다.
function foo1() {
  console.log('Hello');
}
var foo2 = function() {
  console.log('world');
}