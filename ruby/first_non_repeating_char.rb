# frozen_string_literal: true

def first_non_repeating_char(string)
  char_count = string.each_char.tally
  string.each_char { |c| return c if char_count[c] == 1 }
  nil
end

p first_non_repeating_char('') # => nil
p first_non_repeating_char('swiss') # => 'w'
p first_non_repeating_char('aabbcc') # => nil
p first_non_repeating_char('lullaby') # => 'u'
