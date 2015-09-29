require_relative 'number_summary'

# a = (1..7).map { |i| i }
# print a, "\n"

file = File.open("data.csv", "r")
data = file.read

a = data.split(",")

print "Mode is " + NumberSummary.mode(a).to_s, "\n"

print "Min is " + NumberSummary.min(a).to_s, "\n"

print "Max is " + NumberSummary.max(a).to_s, "\n"

#puts NumberSummary.summarize('data.csv')

puts "q1 is " + NumberSummary.q1(a).to_s

puts "q3 is " + NumberSummary.q3(a).to_s

puts "median is " + NumberSummary.median(a).to_s

puts "mean is " + NumberSummary.mean(a).to_s

puts "sigma is " + NumberSummary.sigma(a).to_s

# 1,2,3,4,5,6,7