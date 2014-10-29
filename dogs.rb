require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end

def name_lengths(dogs)
    dogs.map{ |n| n.length }
end

def reverse_dog_names(dogs)
  dogs.map{ |n| n.reverse}

end

def first_three_dogs_with_each(dogs)
    dogs.select{ |dog| dogs.index(dog) <= 2 }
end

def first_three_dogs_without_each(dogs)
    dogs[0..2]
end

def reverse_case_dog_names(dogs)
    dogs.map { |n| n.swapcase}
end

def sum_of_all_dog_name_lengths(dogs)
    dogs.map{|n| n.length}.inject(:+)
end

def dogs_with_long_names(dogs)
    dogs.map{|n| n.length >=  6 }
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])
