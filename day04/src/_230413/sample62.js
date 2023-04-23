try{
    const array = new Array(-2000); // 강제예외발생
}catch(exception){
    console.log(`예외발생:${exception.name}`);
    console.log(`예외발생:${exception.message}`);    
}finally{
    console.log('finally 구문 실행');
}