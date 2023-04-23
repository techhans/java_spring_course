//error.error.error();
function callThreeTimes(callback){
    for(let i=0;i<3;i++){
        callback();
    }
}
// 정상실행
callThreeTimes(
    function(){console.log('헬로월드');}
    );
// 예외발생
callThreeTimes();    