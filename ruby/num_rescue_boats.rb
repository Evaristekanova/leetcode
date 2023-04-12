def num_boats(people, limit)
  people.sort!

  num_boats = 0
  left = 0
  right = people.length - 1

  while left <= right
    # If the weights of the heaviest person and the lightest person can fit in a boat without going over the limit
    # then they can be carried together in a boat. Move both pointers inward to the next people.
    if people[left] + people[right] <= limit
      left += 1
      right -= 1
    else
      # Otherwise, the heaviest person cannot be paired with anyone else. They must travel alone in a boat.
      right -= 1
    end

    num_boats += 1
  end

  num_boats
end
