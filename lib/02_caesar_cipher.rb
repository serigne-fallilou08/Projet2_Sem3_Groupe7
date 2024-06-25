def caesar_cipher(input_string, shift)
  result = input_string.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      base = char.match?(/[a-z]/) ? 'a' : 'A'
      shifted_char = (char.ord - base.ord + shift) % 26 + base.ord
      shifted_char.chr
    else
      char
    end
  end

  result.join
end

# Exemple d'utilisation
puts caesar_cipher("What a string!", 5) # Output: "Bmfy f xywnsl!"
