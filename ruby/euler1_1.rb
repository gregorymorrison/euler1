#!/usr/bin/ruby
#Euler1 in Ruby

def euler1(x)
  (0...x).select{|i| i if i%3==0 or i%5==0}.inject(:+)
end

puts "Euler1 = #{euler1(1000)}"
