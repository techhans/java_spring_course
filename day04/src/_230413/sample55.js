let date = new Date();
console.log(date);   // 2023-04-15T01:06:49.739Z
// 시간 더하기
date.setFullYear(date.getFullYear() + 2);
date.setMonth(date.getMonth()+6);
date.setDate(date.getDate() + 5);
console.log(date);    //2025-10-20T01:06:49.739Z