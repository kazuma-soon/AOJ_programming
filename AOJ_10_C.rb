n = gets.to_i
s = gets.split.map(&:to_f)
a = 0
m = s.sum / n

s.each do |t|
    a += ((t - m)**2) 
end
a = (a/n)**0.5

puts a