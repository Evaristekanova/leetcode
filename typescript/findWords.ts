function findWords(words: string[]): string[] {
  const rows: string[] = ["qwertyuiop", "asdfghjkl", "zxcvbnm"];
  const result: string[] = [];

  words.forEach((word) => {
    const lowercaseWord = word.toLowerCase();
    const isInRow =
      lowercaseWord.split("").every((c) => rows[0].includes(c)) ||
      lowercaseWord.split("").every((c) => rows[1].includes(c)) ||
      lowercaseWord.split("").every((c) => rows[2].includes(c));

    if (isInRow) {
      result.push(word);
    }
  });

  return result;
}
