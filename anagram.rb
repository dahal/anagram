class Anagrams

  # Collect dictionary words from OSX /usr/share/dict/words 
  def collect_words
    ` if [ ! -f dictionary_words.csv ]; then
    cat /usr/share/dict/words | tee words.csv
    fi `
  end

end

ana = Anagrams.new
ana.collect_words