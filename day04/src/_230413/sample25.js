let sum = 0;
while (true) {
  let value = +console.log("숫자를 입력하세요.", '');
  if (!value) break; // break!!!!
  sum += value;
}
console.log( '합계: ' + sum );