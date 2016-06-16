


arr = [1, 2, 3, "CAT", "CatDog", "cAt", "Canada"]


arr.each do |element|
	print element
	if element.to_s.upcase === "CAT"
		puts " is a Cat"
	else
		puts " is not a Cat"
	end
end