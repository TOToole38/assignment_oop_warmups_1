# To iterate through an array or hash without actually modifying any of those items. 

class Array 
	def my_each 
		index_counter = 0 
		while index_counter < self.size
			yield(self[index_counter])
			index_counter += 1 
		end
		self
	end
end

# [1, 2, 3].my_each{|i| puts "Here is the #{i} value"}

# Returns a new array with the results of running block once for every element in enum.
# (1..4).map { |i| i*i }      #=> [1, 4, 9, 16]

class Array 
	def my_map 
		new_array = []
		index_counter = 0 

		while index_counter < self.size
			new_array.push(yield(self[index_counter]))
			index_counter += 1 
		end

		print new_array
	end
end

# [1,2,5].my_map{|i| i**2}





class Array 
	def my_select
		true_array = []
		index_counter = 0 
		while index_counter < self.size
			if yield(self[index_counter]) 
				true_array << self[index_counter]
			end
			index_counter += 1 
		end
		print true_array
	end
end

# [1,2,4,5,7,10,14,20,21].my_select{|item| item.even?}
# [1,2,4,5,7,10,14,20,21].my_select{|item| item == 14}


# Passes each element of the collection to the given block. The method returns true if the block never returns false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } which will cause all? to return true when none of the collection members are false or nil.

# %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
# %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
# [nil, true, 99].all?                              #=> false
class Array 
	def my_all?
		group_outcome = true
		index_counter = 0 
		
		while index_counter < self.size
			if yield(self[index_counter]) == false
				group_outcome = false
			end
		end

		print group_outcome
	end
end

["ant", "bear", "cat"].my_all?{|word| word.length >= 3 }
