function twoSum(nums: number[], target: number): number[] {
  let compliments: { [key: number]: number } = {};

  for (let i = 0; i < nums.length; i++) {
    let complimentIndex = compliments[nums[i]];

    if (complimentIndex != null) {
      return [complimentIndex, i];
    }

    compliments[target - nums[i]] = i;
  }

  return nums;
}
