def caesar(str, num)
	str_encrypt = []
	str.each_char do |x|
		if x == " "
			str_encrypt << x
		else
			val = x.ord + num%26
			val -= 26 if ('A'..'Z').include?(x) && val > 90
			val -= 26 if ('a'..'z').include?(x) && val > 122
			str_encrypt << val.chr
		end
	end
	str_encrypt.join()
end

puts "Enter the message to Encrypt..!"
str_to_encrypt = gets.chomp
puts "Enter a random number as key to encryption."
offset = gets.chomp.to_i
puts caesar(str_to_encrypt, offset)