function maxProduct(nums: number[]): number {
  let max = nums[0];
  let min = nums[0];
  let largest = nums[0];

  for (let i = 1; i < nums.length; i++) {
    const current = nums[i];

    const tempMax = Math.max(current, current * max, current * min);
    const tempMin = Math.min(current, current * max, current * min);

    largest = Math.max(largest, tempMax);

    max = tempMax;
    min = tempMin;
  }

  return largest;
}
