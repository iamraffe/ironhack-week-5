class StringCalculator
	def add(string)
		# numbers = string.split(',')
		# 
		# 
		numbers = string.split(/(\s*[;,]\s*|[\r\n]+)/);
		numbers.reduce(0){|sum, number| sum+=number.to_i} 		
	end
end