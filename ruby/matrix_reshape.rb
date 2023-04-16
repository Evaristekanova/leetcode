# frozen_string_literal: true

# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  m = mat.length
  n = mat[0].length

  return mat if m * n != r * c

  reshaped = Array.new(r) { Array.new(c) }

  (0...r).each do |i|
    (0...c).each do |j|
      k = i * c + j
      reshaped[i][j] = mat[k / n][k % n]
    end
  end

  reshaped
end
