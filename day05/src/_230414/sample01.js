let now = new Date();
let before = new Date('December 18, 2022');

let interval = now.getTime() - before.getTime();
interval = Math.floor(interval / (1000*60*60*24));

console.log(`해당 시점에서 ${interval}일 지났습니다.`);