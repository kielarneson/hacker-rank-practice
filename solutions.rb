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
# time = "07:05:45PM"
# time2 = "07:05:45AM"
# time3 = "11:25:15AM"
# time4 = "10:55:55PM"
# time5 = "12:55:55AM"
# time6 = "01:55:55PM"
# time7 = "02:55:55AM"

# def time_conversion(s)
#   if s.slice(-2..-1) == "AM" && s.slice(0..1) == "12"
#     split_string = s.split(":")
#     converted_time = "00:#{split_string[1]}:#{split_string[2].to_i}"
#   elsif s.slice(-2..-1) == "PM" && s.slice(0..1) == "12"
#     split_string = s.split(":")
#     converted_time = "12:#{split_string[1]}:#{split_string[2].to_i}"
#   elsif s.slice(-2..-1) == "PM" && s.slice(0..1) != "12"
#     split_string = s.split(":")
#     converted_time = "#{split_string[0].to_i + 12}:#{split_string[1]}:#{split_string[2].to_i}"
#   elsif s.slice(-2..-1) == "AM"
#     split_string = s.split(":")
#     converted_time = "#{split_string[0]}:#{split_string[1]}:#{split_string[2].to_i}"
#   end
#   return converted_time
# end

# p time_conversion(time)
# p time_conversion(time2)
# p time_conversion(time3)
# p time_conversion(time4)
# p time_conversion(time5)
# p time_conversion(time6)
# p time_conversion(time7)

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
# input2 = "S;C;LargeSoftwareBook"
# input3 = "S;C;MassiveCreampie"
input4 = "S;M;plasticRedSoloCup()"

def camel_case(string)
  if string[0] == "S"
    if string[2] == "M"
      relevant_index = []
      relevant_letters = string.split(//).slice(4..-3)

      index = 0
      while index < relevant_letters.length
        if /[[:upper:]]/.match(relevant_letters[index])
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
  end
  return output
end

p camel_case(input1)
# p camel_case(input2)
# p camel_case(input3)
p camel_case(input4)
