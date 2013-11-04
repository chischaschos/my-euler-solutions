def special_pythagorean_triplet a, b
  c = Math.sqrt a**2 + b**2
  a < b && b < c && a + b + c == 1000 && c
end

loop do
  x = rand 1000
  y = rand 1000
  if c = special_pythagorean_triplet(x, y)
    puts "#{x}, #{y}, #{c}"
    break
  end
end
