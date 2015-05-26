# string = "INSERT INTO words (word, created_at, updated_at, canonical_word) VALUES "

# # seed here
# count = 0
# File.open("../words").each_line do |word|
#     string << "(\'#{word.chomp}\', \'#{Time.now}\', \'#{Time.now}\', \'#{word.chomp.downcase.split("").sort.join}\')"
#     string << ","
#     count += 1
#     p count if count%200 == 0
# end

# string = string[0...-1]

# ActiveRecord::Base.connection.execute(string)

File.open("words").each_line do |word|
  Word.create(word: word)
end

#create object of word
