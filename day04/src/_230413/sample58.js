let array1 = [
        {name:'사과',price:1000},
        {name:'토마토',price:800},
        {name:'오렌지',price:1200}
    ];

// 객체 내부의 숫자로 정렬하고 출력
array1.sort((item1, item2)=>{
    return item1.price - item2.price;
});
console.log(array1);
// 객체 내부의 문자열로 정렬하고 출력
array1.sort((item1,item2)=>{
    if(item1.name < item2.name){
        return -1;
    }else if(item1.name > item2.name){
        return 1;
    }else{
        return 0;
    }
});
console.log(array1);
