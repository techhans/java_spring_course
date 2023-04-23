function sum(min, max){
    let output = 0;
    for(let i=min; i<=max;i++){
        output += i;
    }
    return output;
}
console.log(sum(1,100));  // 5050