def caesar_cipher (string, leap)
  return "Invalid arguments" unless string.is_a?(String) && leap.is_a?(Integer)
  leap %= 26

  string.split("").map {|char| encode(char, leap)}.join
end

def encode (char, leap)
  bound = nil
  if char.between?('a','z')
    bound = 'z'
  elsif char.between?('A', 'Z')
    bound ='Z'
  end
  
  if bound
    shift_chars(char, leap, bound)
  else
    char
  end
end

def shift_chars(char, shift, upper)
  char_encoded_int = char.ord + shift
	char_encoded_int -= 26 if char_encoded_int > upper.ord
	char_encoded_int.chr
end

if $PROGRAM_NAME == __FILE__
	puts caesar_cipher("What a string!", 5)
	puts caesar_cipher("abcdefghijklmnopqrstuvwxyz", 263)
	puts caesar_cipher("WhaT, As...", -2)
	puts caesar_cipher("Some Message", "Bad")
end
