require 'prime'

primes = []
Prime.each do |p|
  p < 2_000_000 ? primes << p : break
end
puts primes.reduce :+
