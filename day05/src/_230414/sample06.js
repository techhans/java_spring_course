process.on('exit', (code) => {

    console.log('프로세스가 종료');
    console.log(`exit 이벤트 매개 변수: ${code}`);

}); 

process.on('uncaughtException',(error) => {
    console.log('예외가 발생');
    console.log(`uncaughtException 이벤트 매개 변수: ${error}`);
});
// 예외를 강제 발생
error.error.error();