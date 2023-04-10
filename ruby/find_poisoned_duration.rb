# frozen_string_literal: true

# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
  poisoned_duration = 0
  previous_attack_time = -1

  time_series.each do |current_attack_time|
    poisoned_duration += [current_attack_time - previous_attack_time, duration].min if previous_attack_time >= 0
    previous_attack_time = current_attack_time
  end

  poisoned_duration += duration if previous_attack_time >= 0

  poisoned_duration
end
