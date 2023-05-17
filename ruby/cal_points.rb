# frozen_string_literal: true

# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  stack = []

  operations.each do |operation|
    case operation
    when 'C'
      stack.pop
    when 'D'
      stack.push(stack[-1] * 2)
    when '+'
      stack.push(stack[-1] + stack[-2])
    else
      stack.push(operation.to_i)
    end
  end

  stack.sum
end
