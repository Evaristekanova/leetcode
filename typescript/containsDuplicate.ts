function containsDuplicate(nums: number[]): boolean {
  const hashset = new Set<number>();

  for (let num of nums) {
    if (hashset.has(num)) {
      return true;
    }

    hashset.add(num);
  }
  return false;
}
