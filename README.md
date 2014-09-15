anagram
=======

Details
---
An anagram of a word is another word with the same letters, but in different order.
For example, tab has one anagram: bat. The word parsley has three: players, replays, sparely.
The word orange has none.
Your code should read in a file of words, with one word per line, and generate output (to stdout) that contains all the combinations of words that are anagrams. Details:
  ● Each line in the output should contain all the words from the input that are anagrams of each other.
  ● No sets of anagrams should be repeated.
  ● If a word has no anagrams, do not print it.
  ● Assume all characters are lowercase.
For example, when run with input of all words in the English language (as found in /usr/share/dict/words), your program might include the following in its output:
kinship pinkish
enlist inlets listen silent boaster boaters borates fresher refresh
And so on.
