function findKthLargest(nums: number[], k: number): number {
  nums.sort((low, high) => high - low);
  return nums[k - 1];
}
