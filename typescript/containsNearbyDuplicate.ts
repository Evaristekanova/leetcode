function containsNearbyDuplicate(nums: number[], k: number): boolean {
  const seen: { [key: number]: number } = {};

  for (let i = 0; i < nums.length; i++) {
    const num = nums[i];

    if (seen[num] !== undefined && (i - seen[num]) <= k) {
      return true;
    }

    seen[num] = i;
  }

  return false;
}
