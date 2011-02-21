require 'prime'

def factors(num)
  return [1] if num == 1
  return [2, factors(num / 2)] if num % 2 == 0

  Prime.instance.each do |prime|
    return [prime, factors(num / prime)] if num % prime == 0
  end
end

nums = (1..20)
factors = {}

nums.each do |num|
  num_factors = factors(num).flatten
  puts "Number-factors: #{num}-#{num_factors}"

  tmp_factors = {}
  num_factors.each do |factor|
    tmp_factors[factor] = 0 unless tmp_factors[factor]
    tmp_factors[factor] += 1
  end

  tmp_factors.each do |key, value|
    if factors[key]
      factors[key] = value if factors[key] < value
    else
      factors[key] = value
    end
  end

end

puts "mcd=#{factors}"

result = 1
factors.each do |factor, power|
  result *= factor**power
end

puts "mcd=#{result}"
