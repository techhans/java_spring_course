//error.error.error();
function callThreeTimes(callback){
    if(typeof(callback) == "function"){  // callback이 함수형일때만 실행
        for(let i=0;i<3;i++){
            callback();
        }
    }
}
// 정상실행
callThreeTimes(
    function(){console.log('헬로월드');}
    );
// 예외발생 되나 예외처리
callThreeTimes();    