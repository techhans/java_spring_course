let double = n => n*2;
console.log(double(3)); // 6


let sayHi = () => console.log("Hi there!");
sayHi();


let sum = (a,b) =>{
    let result = a+b;
    return result;
};
console.log(sum(1,2)); //3

let sum2 = function(a,b){
    let result = a+b;
    return result;
};
console.log(sum2(1,2)); //3