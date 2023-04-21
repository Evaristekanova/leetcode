# frozen_string_literal: true

# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  count = 0

  (0...flowerbed.size).each do |i|
    if flowerbed[i] == 0 && (i == 0 || (flowerbed[i - 1]).zero?) && (i == flowerbed.size - 1 || (flowerbed[i + 1]).zero?)
      count += 1
      flowerbed[i] = 1
    end

    return true if count >= n
  end

  false
end
