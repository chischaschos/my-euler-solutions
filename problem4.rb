require 'set'

def palindrome?(num)
  num.to_s.reverse == num.to_s
end

def combinations_from(range1, range2)
  nums = SortedSet.new
  for counter1 in range1 do
    for counter2 in range2 do
      nums << counter1 * counter2 if palindrome?(counter1 * counter2)
    end
  end
  nums.max
end

range = 2..999

p combinations_from(range, range)


