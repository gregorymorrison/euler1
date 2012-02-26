#!/usr/bin/ruby
# Euler1 in Ruby
def euler1(x)
    (0...x).select{|i| i if i%3==0 or i%5==0}.inject{|retval,j| retval+j}
end
puts euler1(1000)