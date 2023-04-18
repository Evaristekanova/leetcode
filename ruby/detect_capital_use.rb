# frozen_string_literal: true

# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  return true if word.match(/\A[A-Z]+\z/)

  return true if word.match(/\A[a-z]+\z/)

  return true if word.match(/\A[A-Z][a-z]+\z/)

  false
end
