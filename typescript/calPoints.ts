function calPoints(operations: string[]): number {
  const scores: number[] = [];

  for (const operation of operations) {
    if (operation === "+") {
      const score = scores[scores.length - 1] + scores[scores.length - 2];
      scores.push(score);
    } else if (operation === "D") {
      const score = 2 * scores[scores.length - 1];
      scores.push(score);
    } else if (operation === "C") {
      scores.pop();
    } else {
      const score = parseInt(operation, 10);
      scores.push(score);
    }
  }

  return scores.reduce((sum, score) => sum + score, 0);
}
