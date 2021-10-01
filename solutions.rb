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

# Breaking the Records
scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]

def high_score_count(array)
  high_score = array[0]
  low_score = array[0]
  index = 0
  high_count = 0
  low_count = 0
  high_and_low = []

  while index < array.length
    if array[index] > high_score
      high_score = array[index]
      high_count += 1
    elsif array[index] < low_score
      low_score = array[index]
      low_count += 1
    end
    index += 1
  end
  high_and_low << high_count
  high_and_low << low_count
  return high_and_low
end

p high_score_count(scores)
