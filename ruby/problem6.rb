require 'optparse'

options = 100
OptionParser.new do |opts|
  opts.banner = "Usage: problem6.rb [-n (how many natural numbers, defaults 100)]"

  opts.on("-n", "--numbers NUMBERS", Integer, "Numbers") do |number|
    options = number
  end
end.parse!

quads_sum = (options * (options + 1) * (2*options +1)) / 6
sum_to_quad = ((options * (options + 1)) / 2) ** 2

puts "Result= #{sum_to_quad - quads_sum}"
