# frozen_string_literal: true

# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!
  i = 0
  j = 0

  content_children = 0

  while i < g.length && j < s.length
    if s[j] >= g[i]
      content_children += 1
      i += 1
    end
    j += 1
  end

  content_children
end
