def word_counter(corpus, dictionary)
  word_counts = Hash.new(0)

  corpus.downcase.split.each do |word|
    word_counts[word] += 1 if dictionary.include?(word)
  end

  word_counts
end

# Exemple d'utilisation
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
corpus = "Howdy partner, sit down! How's it going?"
puts word_counter(corpus, dictionary)
# Output: {"down"=>1, "how"=>2, "howdy"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
