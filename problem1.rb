sum = 0
(1..999).each do |num|
  sum += num if num % 3 == 0 || num % 5 == 0
end
puts sum
