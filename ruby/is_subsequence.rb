# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  i = 0
  j = 0

  while i < s.length && j < t.length
    i += 1 if s[i] == t[j]
    j += 1
  end

  i == s.length
end
