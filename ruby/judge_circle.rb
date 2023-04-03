# frozen_string_literal: true

# @param {String} moves
# @return {Boolean}

def judge_circle(moves)
  up_down = 0
  left_right = 0

  moves.each_char do |move|
    case move
    when 'U'
      up_down += 1
    when 'D'
      up_down -= 1
    when 'L'
      left_right -= 1
    when 'R'
      left_right += 1
    end
  end

  up_down == 0 && left_right == 0
end
