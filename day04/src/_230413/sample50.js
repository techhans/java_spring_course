// let number = 357;
// number.method = function(){
//     return 'method create';
// };
// console.log(number.method());  //TypeError: number.method is not a function


let number = 357;
Number.prototype.method = function(){
    return 'method create';
};
console.log(number.method()); // method create