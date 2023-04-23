function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

function showOk() {
  console.log( "동의하셨습니다." );
}

function showCancel() {
  console.log( "취소 버튼을 누르셨습니다." );
}

ask("동의하십니까?", showOk, showCancel); //showOk , showCancel을 ask함수의 인자로 전달