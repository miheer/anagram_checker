a = []
File.open('anagram.txt', 'r') do |f1| 
  while line = f1.gets 
    a << line
  end
end

a.map!{|a| a.chomp}
anagrams = a.group_by { |word| word.chars.sort }.values
anagrams.each do |a|
   puts a.join(",")
end


