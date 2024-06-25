require_relative '../lib/03_word_counter'

describe 'word_counter' do
  it 'counts occurrences of words in the corpus' do
    dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    corpus = "Howdy partner, sit down! How's it going?"
    expect(word_counter(corpus, dictionary)).to eq(
      "down" => 1,
      "how" => 2,
      "howdy" => 1,
      "go" => 1,
      "going" => 1,
      "it" => 2,
      "i" => 3,
      "own" => 1,
      "part" => 1,
      "partner" => 1,
      "sit" => 1
    )
  end

  it 'handles different dictionaries and corpora' do
    dictionary = ["apple", "banana", "cherry"]
    corpus = "Apple banana, cherry apple!"
    expect(word_counter(corpus, dictionary)).to eq(
      "apple" => 2,
      "banana" => 1,
      "cherry" => 1
    )
  end
end
