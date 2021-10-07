# # Sparse Arrays
# strings = ["aba", "baba", "aba", "xzxb"]
# queries = ["aba", "xzxb", "ab"]

# def string_count(strings, queries)
#   index1 = 0
#   index2 = 0
#   count = 0
#   count_array = []

#   while index1 < queries.length
#     while index2 < strings.length
#       if queries[index1] == strings[index2]
#         count += 1
#       end
#       index2 += 1
#     end
#     index1 += 1
#     index2 = 0
#     count_array << count
#     count = 0
#   end
#   return count_array
# end

# p string_count(strings, queries)

# # Breaking the Records
# scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]

# def high_score_count(array)
#   high_score = array[0]
#   low_score = array[0]
#   index = 0
#   high_count = 0
#   low_count = 0
#   high_and_low = []

#   while index < array.length
#     if array[index] > high_score
#       high_score = array[index]
#       high_count += 1
#     elsif array[index] < low_score
#       low_score = array[index]
#       low_count += 1
#     end
#     index += 1
#   end
#   high_and_low << high_count
#   high_and_low << low_count
#   return high_and_low
# end

# p high_score_count(scores)

# # Plus Minus
# numbers = [-4, 3, -9, 0, 4, 1]

# def ratios(array)
#   index = 0
#   positive_count = 0
#   negative_count = 0
#   zero_count = 0

#   while index < array.length
#     if array[index] > 0
#       positive_count += 1
#     elsif array[index] < 0
#       negative_count += 1
#     elsif array[index] == 0
#       zero_count += 1
#     end
#     index += 1
#   end
#   p (positive_count.to_f / array.length)
#   p (negative_count.to_f / array.length).round(6)
#   p (zero_count.to_f / array.length).round(6)
# end

# ratios(numbers)

# Mini-Max Sum
# numbers = [1, 2, 3, 4, 5]
# numbers2 = [7, 69, 2, 221, 8974]

# def min_and_max_sum(array)
#   except_first = array[1] + array[2] + array[3] + array[4]
#   except_second = array[0] + array[2] + array[3] + array[4]
#   except_third = array[0] + array[1] + array[3] + array[4]
#   except_fourth = array[0] + array[1] + array[2] + array[4]
#   except_fifth = array[0] + array[1] + array[2] + array[3]

#   all_sums = [except_first, except_second, except_third, except_fourth, except_fifth]

#   max_sum = all_sums[0]
#   min_sum = all_sums[0]

#   index = 0
#   while index < all_sums.length
#     if all_sums[index] > max_sum
#       max_sum = all_sums[index]
#     elsif all_sums[index] < min_sum
#       min_sum = all_sums[index]
#     end
#     index += 1
#   end
#   print min_sum, max_sum
# end

# min_and_max_sum(numbers)

# Time Conversion
time = "05:05:45PM"
time2 = "09:05:45PM"
time3 = "11:05:45AM"
time4 = "12:05:45PM"

def time_conversion(string)
  if string.slice(-2..-1) == "PM"
    if string.slice(0..1) != "12"
      number_to_change = string.slice(0..1)
      numbers_to_keep = string.slice(2..7)

      changed_number = number_to_change.to_i + 12
      solution = changed_number.to_s + numbers_to_keep
      return solution
    else
      return string.slice(0..7)
    end
  elsif string.slice(-2..-1) == "AM"
    if string.slice(0..1) == "12"
      changed_number = "00"
      numbers_to_keep = string.slice(2..7)

      solution = changed_number + numbers_to_keep
      return solution
    else
      return string.slice(0..7)
    end
  end
end

p time_conversion(time)
p time_conversion(time2)
p time_conversion(time3)
p time_conversion(time4)

# Divisible Sum Pairs

numbers = [1, 3, 2, 6, 1, 2]

def divisibleSumPairs(n, k, ar)
  index1 = 0
  index2 = 1
  count = 0

  while index1 < ar.length
    while index2 < ar.length
      if index1 < index2 && (ar[index1] + ar[index2]) % k == 0
        count += 1
      end
      index2 += 1
    end
    index1 += 1
    index2 = 0
  end
  return count
end

p divisibleSumPairs(6, 3, numbers)

# Lonely Number

numbers = [1, 2, 3, 4, 3, 2, 1]

def unique_number(a)
  # Best solution
  # lonely_number = a.tally.sort_by { |_k, v| v }[0][0]
  # return lonely_number

  # Also works
  counts = Hash.new 0

  a.each do |number|
    counts[number] += 1
  end

  return counts.sort_by { |_k, v| v }[0][0]
end

p unique_number(numbers)

# Grading Students

scores = [73, 67, 38, 33]

def grading_students(grades)
  index = 0
  rounded_grades = []

  while index < grades.length
    if grades[index] < 38
      rounded_grades << grades[index]
    elsif (grades[index] + 1) % 5 == 0
      rounded_grades << grades[index] + 1
    elsif (grades[index] + 2) % 5 == 0
      rounded_grades << grades[index] + 2
    else
      rounded_grades << grades[index]
    end
    index += 1
  end
  return rounded_grades
end

p grading_students(scores)

#

hike = "UDDDUDUUDDDDDUUDUDUDUDUDDDUU"

def counting_valleys(path)
  index1 = 0
  index2 = 1
  count = 0

  while index2 < path.length
    if path[index1] == "D" && path[index2] == "D"
      until path[index2] == "U"
        index2 += 1
      end
      count += 1
      index1 = index2
      index2 = index1 + 1
    elsif path[index1] == "D" && path[index2] == "U"
      index1 += 1
      index2 += 1
    elsif path[index1] == "U" && path[index2] == "D"
      index1 += 1
      index2 += 1
    elsif path[index1] == "U" && path[index2] == "U"
      index1 += 1
      index2 += 1
    end
  end
  return count
end

p counting_valleys(hike)

# Word count
words = [1, 2, 3, 4, 5, 4, 3, 2, 1, 9, 23, 4, 5, 12, 3, 100]

word_counts = Hash.new 0

words.each do |word|
  word_counts[word] += 1
end

p word_counts

#
string = "cheesecake"
split_string = string.split(//)

# Creates a new hash with each key's initial value set to ...
letter_count = Hash.new "a"

split_string.each do |letter|
  letter_count[letter] += "a"
end

p letter_count.sort_by { |_k, v| v }

# Do Array.new and understand how that works

# Sales by Match
numbers = [10, 20, 20, 10, 10, 30, 50, 10, 20]
numbers2 = [1, 3, 5, 6, 5, 7, 8, 1, 9, 3, 4, 3, 0, 3]

def count_pairs(array)
  count = Hash.new 0

  array.each do |number|
    count[number] += 1
  end

  total = count.select { |_k, v| v >= 2 }.map { |_k, v| v }.reduce(:+)

  if total % 2 == 0
    return total / 2
  else
    return (total / 2.0).floor
  end
end

p count_pairs(numbers)
p count_pairs(numbers2)

# Camel Case 4
input1 = "S;M;plasticCup()"
input2 = "S;C;LargeSoftwareBook"
input3 = "S;C;MassiveCreampuff"
input4 = "S;M;plasticRedSoloCup()"

def camel_case(string)
  if string[0] == "S"
    if string[2] == "M"
      relevant_letters = string.split(//).slice(4..-3)
    elsif string[2] == "C"
      relevant_letters = string.split(//).slice(4..)
    elsif string[2] == "V"
    end
  elsif string[0] == "C"
    if string[2] == "M"
    elsif string[2] == "C"
    elsif string[2] == "V"
    end
  end
end

def split_letter_transformation(relevant_letters)
  relevant_index = []
  index = 0
  while index < relevant_letters.length
    if /[A-Z]/.match(relevant_letters[index]) && index != 0
      relevant_index << index
    end
    index += 1
  end

  index = relevant_index.length - 1
  relevant_index.length.times do
    relevant_letters.insert(relevant_index[index], " ")
    index -= 1
  end

  output = relevant_letters.join.downcase
end

p split_letter_transformation(camel_case(input1))
p split_letter_transformation(camel_case(input2))
p split_letter_transformation(camel_case(input3))
p split_letter_transformation(camel_case(input4))

# Counting Sort
string = "63 54 17 78 43 70 32 97 16 94 74 18 60 61 35 83 13 56 75 52 70 12 24 37 17 0 16 64 34 81 82 24 69 2 30 61 83 37 97 16 70 53 0 61 12 17 97 67 33 30 49 70 11 40 67 94 84 60 35 58 19 81 16 14 68 46 42 81 75 87 13 84 33 34 14 96 7 59 17 98 79 47 71 75 8 27 73 66 64 12 29 35 80 78 80 6 5 24 49 82"
string2 = "63 25 73 1 98 73 56 84 86 57 16 83 8 25 81 56 9 53 98 67 99 12 83 89 80 91 39 86 76 85 74 39 25 90 59 10 94 32 44 3 89 30 27 79 46 96 27 32 18 21 92 69 81 40 40 34 68 78 24 87 42 69 23 41 78 22 6 90 99 89 50 30 20 1 43 3 70 95 33 46 44 9 69 48 33 60 65 16 82 67 61 32 21 79 75 75 13 87 70 33"

def string_to_number(string)
  split_string = string.split(" ")
  string_length = split_string.length + 1
  numbers = []
  split_string.each do |number|
    numbers << number.to_i
  end
  return numbers
end

numbers = string_to_number(string)
numbers2 = string_to_number(string2)

def counting_sort(arr)
  zeroes_array = []

  100.times do
    zeroes_array << 0
  end

  index = 0
  while index < arr.length
    zeroes_array[arr[index]] += 1
    index += 1
  end
  return zeroes_array
end

p counting_sort(numbers)
p counting_sort(numbers2)
p counting_sort([1, 1, 1, 2, 3])

# Panagrams
string = "We promptly judged antique ivory buckles for the next prize"
string2 = "We promptly judged antique ivory buckles for the prize"

def pangram(string)
  if string.downcase.split(//).
    select { |letter| letter != " " }.sort.uniq.join == "abcdefghijklmnopqrstuvwxyz"
    return "pangram"
  else
    return "not pangram"
  end
end

p pangram(string)
p pangram(string2)

# Diagonal Difference
numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [9, 8, 9],
]

def diagonal_difference(array)
  index = 0
  sum1 = 0
  sum2 = 0

  while index < array.length
    sum1 += array[index][index]
    sum2 += array[index][(array.length - 1) - index]
    index += 1
  end
  return (sum1 - sum2).abs
end

p diagonal_difference(numbers)

# Strong Password
password2 = "#aA3"

def strong_password(string)
  split_string = string.split("")
  cases = { lowercase_letter: 1, uppercase_letter: 1, special_character: 1, digit: 1 }

  index = 0
  count = 0

  while index < split_string.length
    if /\d/.match(split_string[index])
      cases.delete(:digit)
    elsif /[a-z]/.match(split_string[index])
      cases.delete(:lowercase_letter)
    elsif /[A-Z]/.match(split_string[index])
      cases.delete(:uppercase_letter)
    elsif /\W/.match(split_string[index])
      cases.delete(:special_character)
    end
    index += 1
  end

  if string.length + cases.length < 6
    return 6 - string.length
  else
    return cases.length
  end
end

strong_password(password2)
