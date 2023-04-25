function judgeCircle(moves: string): boolean {
  let upDown = 0;
  let leftRight = 0;

  for (let i = 0; i < moves.length; i++) {
    switch (moves[i]) {
      case "U":
        upDown++;
        break;
      case "D":
        upDown--;
        break;
      case "L":
        leftRight--;
        break;
      case "R":
        leftRight++;
        break;
    }
  }

  return upDown === 0 && leftRight === 0;
}
