require 'numbers_in_words'
require 'pry'

def numbers
	puts "What is the number you want magic."
	number = gets.to_i
	@new_num = NumbersInWords.in_words(number).length
  puts "#{number} is #{NumbersInWords.in_words(@new_num)}"
  if @new_num == 4
  	puts "done"
  else
  	again
  end
end
def again
	again_num = NumbersInWords.in_words(@new_num).length
  puts "#{@new_num} is #{NumbersInWords.in_words(again_num)}"
	if again_num == 4
  	puts "done"
  else
  	@new_num = NumbersInWords.in_words(again_num).length
  	again
  end
end
numbers