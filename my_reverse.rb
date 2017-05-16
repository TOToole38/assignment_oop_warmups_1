def my_reverse(some_string)
	letter_array = some_string.split('')
	rev_letter_array = []

	while letter_array.length > 0
		rev_letter_array << letter_array[-1] 
		letter_array.pop
	end

	rev_letter_array.join 
end

print my_reverse("What do you want reversed?")