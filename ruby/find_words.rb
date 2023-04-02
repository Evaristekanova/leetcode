# frozen_string_literal: true

# @param {String[]} words
# @return {String[]}
def find_words(words)
  rows = %w[qwertyuiop asdfghjkl zxcvbnm]
  result = []

  words.each do |word|
    next unless word.downcase.chars.all? { |c| rows[0].include?(c) } ||
                word.downcase.chars.all? { |c| rows[1].include?(c) } ||
                word.downcase.chars.all? { |c| rows[2].include?(c) }

    result << word
  end

  result
end
