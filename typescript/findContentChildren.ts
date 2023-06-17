function findContentChildren(g: number[], s: number[]): number {
  g.sort((a, b) => a - b);
  s.sort((a, b) => a - b);

  let i = 0;
  let j = 0;
  let contentChildren = 0;

  while (i < g.length && j < s.length) {
    if (s[j] >= g[i]) {
      contentChildren++;
      i++;
    }
    j++;
  }

  return contentChildren;
}
