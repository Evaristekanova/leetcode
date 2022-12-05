function removeElement(nums: number[], val: number): number {
  let count: number = 0;

  for (let num of nums) {
    if (num !== val) {
      nums[count++] = num;
    }
  }

  return count;
}
