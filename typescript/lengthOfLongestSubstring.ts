function lengthOfLongestSubstring(s: string): number {

  const uniqueChars = new Set<string>();
  let maxLength = 0;
  let left = 0;

  for (let right = 0; right < s.length; right++) {

    while (uniqueChars.has(s[right])) {
      uniqueChars.delete(s[left]);
      left++;
    }

    uniqueChars.add(s[right]);
    maxLength = Math.max(maxLength, right - left + 1);
  }

  return maxLength;
}

