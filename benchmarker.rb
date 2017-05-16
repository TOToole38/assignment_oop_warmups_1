def my_benchmark(number_of_times)
	start_time = Time.now

	number_of_times.times do 
		yield
	end

	end_time = Time.now
	print "It took #{end_time - start_time} seconds to run the given block"
end


my_benchmark(100000){puts "Let's see how long this takes!"}