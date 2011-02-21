fibo_curr = 1
fibo_last = 1
sum = 0

loop do
  sum += fibo_curr if fibo_curr % 2 == 0
  fibo_last, fibo_curr = fibo_curr, fibo_curr + fibo_last
  break unless fibo_curr < 4000000
end

puts sum
