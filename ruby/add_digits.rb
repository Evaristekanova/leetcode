# @param {Integer} num
# @return {Integer}
def add_digits(num)
    return 0 if num == 0
    (num - 1) % 9 + 1
end
