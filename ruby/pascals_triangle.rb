# frozen_string_literal: true

# @param {Integer} num_rows
# @return {Integer[][]}

def generate(num_rows)
  return [] if num_rows.zero?
  return [[1]] if num_rows == 1

  result = [[1], [1, 1]]

  (2...num_rows).each do |i|
    result << [1] + (1...i).map { |j| result[i - 1][j - 1] + result[i - 1][j] } + [1]
  end

  result
end
