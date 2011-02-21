result = (1..999).reduce(0) do |sum, element|
  sum += element if element % 3 == 0 || element % 5 == 0
  sum
end
puts result
