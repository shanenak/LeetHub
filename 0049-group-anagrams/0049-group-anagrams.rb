# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  strs.sort.group_by { |s| s.chars.sort }.values
end

# sort.
# .values