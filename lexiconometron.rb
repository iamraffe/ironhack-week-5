class Lexiconomitron
	def eat_t(string)
		string.downcase.delete "t"
	end	

	def shazzam(array_of_words)
		reversed_array = array_of_words.map{|word| eat_t(word.reverse)}
		[reversed_array.first, reversed_array.last]
	end

	def oompa_loompa(array_of_words)
		array_of_words.select{|word| word.size <= 3}.map{|word| eat_t(word)}
	end
end