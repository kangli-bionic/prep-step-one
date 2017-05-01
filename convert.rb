require 'byebug'
text = ""
File.open('text.txt', 'r') do |f|
  text = f.read
end

text.gsub!("#", "//")
text.gsub!(/[aeiou]\)/) {|m| m[0] + ") {"}
text.gsub!("def", "function")
text.gsub!("method", "function")
text.gsub!("puts", "console.log")
text.gsub!(".to_s", "")
text.gsub!("end", "}")

File.open('text2.txt', 'w') {|f| f.write(text)}
