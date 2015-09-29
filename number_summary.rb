# @author Jake Bennett <jake08bennett@hotmail.com>
# @author Jake Maldonado <>
class NumberSummary
	
	class << self

		def max(array)
			array.max
		end

		def min(array)
			array.min
		end

		def mean(array)
			sum = 0.0 
			for i in 1..array.length
				sum += array[i-1].to_f
			end
			(sum / array.length).round(1)
		end

		def median(array)
			a = array.sort
			if a.length % 2 == 0
				(a[a.length / 2].to_f + a[(a.length / 2) - 1].to_f) / 2
			else
				a[a.length / 2].to_f
			end
		end

		def mode(array)
			max = 0
			array_uni = array.sort.uniq
			array_count = []
			array_final = []
			(0...array_uni.length).each do |n|
				array_count.push(0)
			end
			(0...array.length).each do |n|
				(0...array_uni.length).each do |x|
					if array_uni[x] == array[n]
						array_count[x] += 1
					end
				end
			end
			max = array_count.max
			(0...array_count.length).each do |n|
				if array_count[n] == max
					array_final.push(array_uni[n])
				end
			end
			array_final
		end

		def q1(a)
			array = a.sort
			if array.length % 2 == 0
				new_arr = array[0..(array.length/2) - 1]
				if new_arr.length % 2 == 0
					(new_arr[new_arr.length / 2].to_f + new_arr[(new_arr.length / 2) - 1].to_f) / 2
				else
					new_arr[((new_arr.length + 1) / 2) - 1]
				end
			else
				new_arr = array[0..((array.length + 1) / 2) - 2]
				if new_arr.length % 2 == 0
					(new_arr[new_arr.length / 2].to_f + new_arr[(new_arr.length / 2) - 1].to_f) / 2
				else
					new_arr[((new_arr.length + 1) / 2) - 1]
				end
			end
		end

		def q3(a)
			array = a.sort
			if array.length % 2 == 0
				new_arr = array[(array.length/2)..array.length]
				if new_arr.length % 2 == 0
					(new_arr[new_arr.length / 2].to_f + new_arr[(new_arr.length / 2) - 1].to_f) / 2
				else
					new_arr[((new_arr.length + 1) / 2) - 1]
				end
			else
				new_arr = array[((array.length + 1)/2)..array.length]
				if new_arr.length % 2 == 0
					(new_arr[new_arr.length / 2].to_f + new_arr[(new_arr.length / 2) - 1].to_f) / 2
				else
					new_arr[((new_arr.length + 1) / 2) - 1]
				end
			end
		end

	

		def summarize(file)
			file = File.open(file, "r")
			data = file.read

			a = data.split(",")
			
			puts "Number Summary:"
			puts "min: " + min(a).to_s
			puts "max: " + max(a).to_s
			puts "mean: " + mean(a).to_s
			puts "median: " + median(a).to_s
			puts "q1: " + q1(a).to_s
			puts "q3: " + q3(a).to_s
			puts "mode: " + mode(a).to_s
			puts "sigma: " + sigma(a).to_s
			Math.sqrt(newSum / array.length)
		end

	end
end