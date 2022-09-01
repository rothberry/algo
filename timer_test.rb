require "pry"

t0 = Time.new.usec
10.times do
  "x "
end

t1 = Time.new.usec
puts ""
puts t1 - t0
