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


[1, 2, 3].my_each{|i| puts "Here is the #{i} value"}
