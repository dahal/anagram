class Anagrams

  # Collect dictionary words from OSX /usr/share/dict/words 
  def collect_words
    ` if [ ! -f dictionary_words.csv ]; then
    cat /usr/share/dict/words | tee words.csv
    fi `
  end

  def collect!
    # Create an empty hash to collect all the anagram pairs.
    anagrams={}
    # Iterate through the words to check and collect words
    File.foreach('words.csv') do |word|
      word = word.chomp.downcase.split('').sort.join
      anagrams[word] ||=[]
      anagrams[word] << word 
    end
    # Get just the values
    anagrams.values
  end

end

anagram = Anagrams.new
anagram.collect_words
p anagram.collect!