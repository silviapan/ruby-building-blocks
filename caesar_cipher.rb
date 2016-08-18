# Caesar Cipher
# Takes in an input and shifts the letters according to the key value

def caesar_cipher(input, key)
	output = ""	
	input.each_byte do | char |
		newChar = char + key	
		if char.between?('a'.ord, 'z'.ord)
			newChar -= 26 if newChar > 122
		elsif char.between?('A'.ord, 'Z'.ord)
			newChar -= 26 if newChar > 90
		else 
			newChar = char
		end
	output += newChar.chr 
	end
	output
end

caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"