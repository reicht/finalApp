# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

groups = ["Herding", "Hound", "Non Sporting", "Sporting", "Terrier", "Toy", "Working", "FSS", "Miscellaneous"]

groups.each do |group_name|
  Group.create(name: group_name, description: "PlaceHolder for Group Text")
end

traits = ["Adaptable", "Confident", "Courageous", "Dignified", "Good-Natured", "Loyal", "Playful", "Smart"]

traits.each do |trait_name|
  Trait.create(name: trait_name)
end

Breed.create(name: "Akita", size: "large", intro_year: 1972,
            akc_rank: 47, energy_level: "medium", group_id: 7)
Btrait.create(breed_id: 1, trait_id: 3)
Btrait.create(breed_id: 1, trait_id: 4)
Btrait.create(breed_id: 1, trait_id: 6)

Breed.create(name: "American Staffordshire Terrier", size: "medium", intro_year: 1936,
            akc_rank: 80, energy_level: "medium", group_id: 5)
Btrait.create(breed_id: 1, trait_id: 2)
Btrait.create(breed_id: 1, trait_id: 5)
Btrait.create(breed_id: 1, trait_id: 8)

Breed.create(name: "French Bulldog", size: "small", intro_year: 1898,
            akc_rank: 6, energy_level: "medium", group_id: 3)
Btrait.create(breed_id: 1, trait_id: 1)
Btrait.create(breed_id: 1, trait_id: 7)
Btrait.create(breed_id: 1, trait_id: 8)
