# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  result = []

  (1..n).each do |i|
    if i % 3 == 0 && i % 5 == 0
      result << "FizzBuzz"
    elsif i % 3 == 0
      result << "Fizz"
    elsif i % 5 == 0
      result << "Buzz"
    else
      result << i.to_s
    end
  end

  result
end
