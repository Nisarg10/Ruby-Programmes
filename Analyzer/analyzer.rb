text=''
line_count = 0

File.open("text.txt").each do |line|
	line_count += 1
	text << line
end

total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, '').length
word_count = text.split.length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length

p "#{line_count} lines"
p "#{total_characters} characters"
p "#{total_characters_nospaces} characters excluding spaces"
p "#{word_count} words"
p "#{paragraph_count} paragraphs"
p "#{sentence_count} sentences"
p "#{sentence_count / paragraph_count} sentences per paragraph (average)"
p "#{word_count / sentence_count} words per sentence (average)"