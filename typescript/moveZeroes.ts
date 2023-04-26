function moveZeroes(nums: number[]): void {
  let count = 0;

  for (let i = 0; i < nums.length; i++) {
    if (nums[i] !== 0) {
      let temp = nums[count];
      nums[count] = nums[i];
      nums[i] = temp;
      count++;
    }
  }
}
