require 'prime'

p_gen = Prime.new
10000.times { p_gen.next }
puts p_gen.next
