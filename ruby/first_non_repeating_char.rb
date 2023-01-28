# frozen_string_literal: true

def first_non_repeating_char(string)
  tally = string.chars.tally
  string.each_char { |c| return c if tally[c] == 1 }

  'No non-repeating characters'
end

p first_non_repeating_char('swiss') # => 'w'
p first_non_repeating_char('apple') # => 'a'
p first_non_repeating_char('') # => 'No non-repeating characters'
p first_non_repeating_char('mama') # => 'No non-repeating characters'
