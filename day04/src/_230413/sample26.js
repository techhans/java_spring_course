for (let i = 0; i < 10; i++) {
    // 조건이 참이라면 남아있는 본문은 실행X.
    if (i % 2 == 0) continue;
      console.log(i); // 1, 3, 5, 7, 9가 차례대로 출력됨
}