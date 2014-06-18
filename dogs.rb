require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end

def name_lengths(dogs)
  names = []
  dogs.each do |lengths|
    names << lengths.length
  end
  names
end

def reverse_dog_names(dogs)
  reversed_names = []
  dogs.each do |name|
    name2 = name.reverse
    reversed_names.push(name2)
  end
  reversed_names
end


def first_three_dogs_with_each(dogs)
  first_three_dogs = []
  dogs.each do |name|
    if name == dogs[0] || name == dogs[1] || name == dogs[2]
      first_three_dogs.push(name)
    end
  end
  first_three_dogs
end

def first_three_dogs_without_each(dogs)
  dogs[0..2] #slicing an array
end

def reverse_case_dog_names(dogs)
  reversed_case = []
  dogs.each do |name|
    name2 = name.swapcase
    reversed_case.push(name2.to_s)
  end
  reversed_case
end


def sum_of_all_dog_name_lengths(dogs)
  name_length = 0
  dogs.each do |name|
    name2 = name.length
    name_length = name_length.to_i + name2
  end
  return name_length.to_i
end

def dogs_with_long_names(dogs)

end

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
dogs2 =["Fido", "Harleigh"]


puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("how_many_dogs", how_many_dogs(dogs2) == 2)

check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

