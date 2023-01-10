function isIsomorphic(s: string, t: string): boolean {
  let letterMap: { [key: string]: string } = {};
  let reverseMap: { [key: string]: string } = {};

  for (let i = 0; i < s.length; i++) {
    let charS = s[i];
    let charT = t[i];

    if (letterMap[charS] && letterMap[charS] != charT) {
      return false;
    }

    if (reverseMap[charT] && reverseMap[charT] != charS) {
      return false;
    }

    letterMap[charS] = charT;
    reverseMap[charT] = charS;
  }

  return true;
}
