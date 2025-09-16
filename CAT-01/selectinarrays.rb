grades=[80,95,78,20,12]
matches=grades.select do |i|
i>=40
end
p matches 