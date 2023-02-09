function isIsomorphic(s: string, t: string): boolean {
  if (s.length !== t.length) return false;

  let sMap = {};
  let tMap = {};

  for (let i = 0; i < s.length; i++) {
    let sChar = s[i];
    let tChar = t[i];

    if (!sMap[sChar]) {
      sMap[sChar] = tChar;
    } else if (sMap[sChar] !== tChar) {
      return false;
    }

    if (!tMap[tChar]) {
      tMap[tChar] = sChar;
    } else if (tMap[tChar] !== sChar) {
      return false;
    }
  }

  return true;
}
