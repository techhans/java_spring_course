function callTenTimes(callback){
    // 10 회 반복
    for(let i=0;i<10;i++){
        callback();
    }
}
callTenTimes(function(){
        console.log('function call');
});