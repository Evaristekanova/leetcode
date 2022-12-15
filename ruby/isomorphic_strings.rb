# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}

def is_isomorphic(s, t)
  # approach: use two hash map to store map and
  # reverse map while scanning both lists

  letter_map = {}
  reverse_map = {}

  s.chars.each_with_index do |char_s, i|
    char_t = t[i]

    return false if letter_map[char_s] && letter_map[char_s] != char_t
    return false if reverse_map[char_t] && reverse_map[char_t] != char_s

    letter_map[char_s] = char_t
    reverse_map[char_t] = char_s
  end

  true
end
