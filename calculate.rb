require_relative 'number_summary'

array = []

file = File.open("data.csv", 'r')
file.each_line do |line|
	array = line.split(',')
end

b = array.collect do |value| 
  value.to_f 
end


print NumberSummary.max(b), "\n"

print NumberSummary.min(b), "\n"

print NumberSummary.mean(b), "\n"

print NumberSummary.median(b), "\n"