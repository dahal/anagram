class Anagrams

  # Collect dictionary words from OSX /usr/share/dict/words 
  def collect_words
    ` cat /usr/share/dict/words | tee words.csv `
  end

end

ana = Anagrams.new
ana.collect_words