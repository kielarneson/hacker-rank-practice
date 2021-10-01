# Sparse Arrays
strings = ["aba", "baba", "aba", "xzxb"]
queries = ["aba", "xzxb", "ab"]

def string_count(strings, queries)
  index1 = 0
  index2 = 0
  count = 0
  count_array = []

  while index1 < queries.length
    while index2 < strings.length
      if queries[index1] == strings[index2]
        count += 1
      end
      index2 += 1
    end
    index1 += 1
    index2 = 0
    count_array << count
    count = 0
  end
  return count_array
end

p string_count(strings, queries)
