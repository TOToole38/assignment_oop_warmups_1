def fibs(how_long)
	fibonacci_array = [0]

	# Check to make sure the length requested is greater than 0 or 1
	if how_long == 0
		print "Please enter a number greater than 0"
	elsif how_long == 1
		print fibonacci_array
	else
		fibonacci_array = [0, 1]
	end
 
	# Add the last two elements in the array together and push that value into the array 
  while fibonacci_array.length < how_long
	 	fibonacci_array << fibonacci_array[-1] + fibonacci_array[-2]
		print fibonacci_array
	 	puts " "
  end
end



# fibs(0)
# fibs(1)
fibs(15)