// 배열을 선언
let array = [52, 273, 32, 64, 72];

// forEach() method
console.log('--- forEach()');
array.forEach((item, index) => {
    console.log(`- ${index}번째 요소는 ${item}입니다.`);
});

// map() 메소드
console.log();
console.log('--- map() 메소드 ---');
let outputA = array.map((item, index) => {
    // 배열의 모든 요소를 제곱해서 새로운 배열을 만듭니다.
    return item * item;
});
console.log(outputA);

// filter() 메소드
console.log();