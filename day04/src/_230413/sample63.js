const error = new Error('메시지');
error.name = '마이 에러 이름'
error.message = '에러메시지';
// 예외발생
throw error;