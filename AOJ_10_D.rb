n = gets.to_i
x = gets.split.map(&:to_f)
y = gets.split.map(&:to_f)

p1 = 0
s1 = 0
t1 = 0
n.times do 
    p1 += (x[s1] - y[t1]).abs
    s1 += 1
    t1 += 1
end

p2 = 0
s2 = 0
t2 = 0
n.times do 
    p2 += (x[s2] - y[t2])**2
    s2 += 1
    t2 += 1
end

p3 = 0
s3 = 0
t3 = 0
n.times do 
    p3 += (x[s3] - y[t3]).abs**3
    s3 += 1
    t3 += 1
end

arr = []
s_ = 0
t_ = 0
n.times do 
    arr << (x[s_] - y[t_]).abs
    s_ += 1
    t_ += 1
end

puts sprintf("%.6f", p1)
puts sprintf("%.6f", p2**0.5)
puts sprintf("%.6f", p3**(1/3.0))
puts sprintf("%.6f", arr.max)