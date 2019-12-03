def substrings(str, subs)
	subs_frequency = Hash.new(0)
	words = str.split(" ")
	
	words.each do |word|  
		subs.each do |sub| 
			subs_frequency[sub] += 1 if word.include?(sub)  
		end
	end
	subs_frequency
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
