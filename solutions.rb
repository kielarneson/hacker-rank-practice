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
