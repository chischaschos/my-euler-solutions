require 'prime'

num = 600851475143

Prime.instance.each do |prime|
  puts prime if num % prime == 0 
  break if prime > num || prime > Math.sqrt(num)
end

