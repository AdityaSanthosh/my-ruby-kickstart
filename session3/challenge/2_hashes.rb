# Given an integer, return a hash whose keys are all the odd integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(int)
  res = Hash.new {[]}
  evens_arr = []
  (1..int).each do |i|
    evens_arr << i if i.even?
    res[i] = evens_arr.dup if i.odd?
  end
  res
end