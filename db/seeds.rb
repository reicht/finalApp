# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'pfapi.rb'

##USERS##

User.create(email: "admin@doogle.com", password: "password")
User.create(email: "guest@doogle.com", password: "password")

##GROUPS##

groups = ["Herding", "Hound", "Non Sporting", "Sporting", "Terrier", "Toy", "Working", "FSS", "Miscellaneous"]

groups.each do |group_name|
  Group.create(name: group_name, description: "PlaceHolder for Group Text")
end


##TRAITS##

# traits = ["Adaptable", "Confident", "Courageous", "Dignified", "Good-Natured", "Loyal", "Playful", "Smart"]
traits = ["Affectionate",
          "Alert",
          "Bouncy",
          "Brave",
          "Bright",
          "Calm",
          "Charismatic",
          "Charming",
          "Clever",
          "Confident",
          "Courageous",
          "Curious",
          "Dignified",
          "Eager",
          "Easy-Going",
          "Energetic",
          "Exuberant",
          "Faithful",
          "Fearless",
          "Friendly",
          "Frollicking",
          "Funny",
          "Gentle",
          "Good-Natured",
          "Happy",
          "Hardworking",
          "Independent",
          "Intelligent",
          "Low-Key",
          "Loyal",
          "Mellow",
          "Merry",
          "Obedient",
          "Patient",
          "Peppy",
          "Perky",
          "Playful",
          "Pleasant",
          "Poised",
          "Reserved",
          "Serious-Minded",
          "Silly",
          "Smart",
          "Sociable",
          "Spirited",
          "Strong",
          "Sweet",
          "Sweet-Tempered",
          "Watchful",
          "Work-Oriented",
          "Adaptable"]

traits.each do |trait_name|
  Trait.create(name: trait_name)
end

##BREEDS##NEED BREED TRAIT TOUChUPS  ########


Breed.create(name: "Affenpinscher", size: "small", intro_year: 1936,
            akc_rank: 141, energy_level: 2, group_id: 6)
Btrait.create(breed_id: 1, trait_id: 10)
Btrait.create(breed_id: 1, trait_id: 22)
Btrait.create(breed_id: 1, trait_id: 19)

Breed.create(name: "Afghan Hound", size: "large", intro_year: 1926,
            akc_rank: 104, energy_level: 3, group_id: 2)
Btrait.create(breed_id: 2, trait_id: 27)
Btrait.create(breed_id: 2, trait_id: 47)
Btrait.create(breed_id: 2, trait_id: 42)

Breed.create(name: "Airedale Terrier", size: "medium", intro_year: 1888,
            akc_rank: 54, energy_level: 2, group_id: 5)
Btrait.create(breed_id: 3, trait_id: 9)
Btrait.create(breed_id: 3, trait_id: 20)
Btrait.create(breed_id: 3, trait_id: 11)

Breed.create(name: "Akita", size: "large", intro_year: 1972,
            akc_rank: 47, energy_level: 2, group_id: 7)
Btrait.create(breed_id: 4, trait_id: 11)
Btrait.create(breed_id: 4, trait_id: 13)
Btrait.create(breed_id: 4, trait_id: 30)

Breed.create(name: "Alaskan Malamute", size: "large", intro_year: 1935,
            akc_rank: 55, energy_level: 3, group_id: 7)
Btrait.create(breed_id: 5, trait_id: 1)
Btrait.create(breed_id: 5, trait_id: 30)
Btrait.create(breed_id: 5, trait_id: 37)

Breed.create(name: "American English Coonhound", size: "large", intro_year: 2011,
            akc_rank: 171, energy_level: 3, group_id: 2)
Btrait.create(breed_id: 6, trait_id: 31)
Btrait.create(breed_id: 6, trait_id: 44)
Btrait.create(breed_id: 6, trait_id: 47)

Breed.create(name: "American Eskimo Dog", size: "medium", intro_year: 1994,
            akc_rank: 123, energy_level: 2, group_id: 3)
Btrait.create(breed_id: 7, trait_id: 36)
Btrait.create(breed_id: 7, trait_id: 37)
Btrait.create(breed_id: 7, trait_id: 43)

Breed.create(name: "American Foxhound", size: "large", intro_year: 1886,
            akc_rank: 186, energy_level: 3, group_id: 2)
Btrait.create(breed_id: 8, trait_id: 15)
Btrait.create(breed_id: 8, trait_id: 27)
Btrait.create(breed_id: 8, trait_id: 48)

Breed.create(name: "American Staffordshire Terrier", size: "medium", intro_year: 1936,
            akc_rank: 80, energy_level: 2, group_id: 5)
Btrait.create(breed_id: 9, trait_id: 10)
Btrait.create(breed_id: 9, trait_id: 24)
Btrait.create(breed_id: 9, trait_id: 43)

Breed.create(name: "American Water Spaniel", size: "medium", intro_year: 1940,
            akc_rank: 162, energy_level: 2, group_id: 4)
Btrait.create(breed_id: 10, trait_id: 8)
Btrait.create(breed_id: 10, trait_id: 14)
Btrait.create(breed_id: 10, trait_id: 25)

Breed.create(name: "Anatolian Shepard Dog", size: "large", intro_year: 1996,
            akc_rank: 96, energy_level: 2, group_id: 7)
Btrait.create(breed_id: 11, trait_id: 27)
Btrait.create(breed_id: 11, trait_id: 30)
Btrait.create(breed_id: 11, trait_id: 40)

Breed.create(name: "Australian Cattle Dog", size: "medium", intro_year: 1980,
            akc_rank: 58, energy_level: 3, group_id: 1)
Btrait.create(breed_id: 12, trait_id: 2)
Btrait.create(breed_id: 12, trait_id: 12)
Btrait.create(breed_id: 12, trait_id: 38)

Breed.create(name: "Australian Shepherd", size: "medium", intro_year: 1991,
            akc_rank: 17, energy_level: 3, group_id: 1)
Btrait.create(breed_id: 13, trait_id: 17)
Btrait.create(breed_id: 13, trait_id: 43)
Btrait.create(breed_id: 13, trait_id: 50)

Breed.create(name: "Australian Terrier", size: "small", intro_year: 1960,
            akc_rank: 130, energy_level: 3, group_id: 5)
Btrait.create(breed_id: 14, trait_id: 1)
Btrait.create(breed_id: 14, trait_id: 11)
Btrait.create(breed_id: 14, trait_id: 45)

Breed.create(name: "Boxer", size: "medium", intro_year: 1904,
            akc_rank: 10, energy_level: 3, group_id: 7)
Btrait.create(breed_id: 15, trait_id: 5)
Btrait.create(breed_id: 15, trait_id: 22)
Btrait.create(breed_id: 15, trait_id: 3)

##ORGANIZATIONS##

Organization.create(name: "Austin Boxer Rescue", site_url: "www.austinboxerrescue.com", description: "Home of the rescued Boxers.")
Organization.create(name: "Shiba Inu Rescue of Texas", site_url: "www.sirtx.org", description: "Amazing Shiba for Amazing people, because the shibes got the goods.")

##WATCHES##

Watch.create(user_id: 1, organization_id: 2)
Watch.create(user_id: 2, organization_id: 1)

##DOGS##

get_test_pups

Dog.create(name: @filtered_dogs['dog1'][:name], bio: @filtered_dogs['dog1'][:description], picture_url: @filtered_dogs['dog1'][:med_pic_urls]['med_pic2'], breed_id: 15)

# Dog.create(name: "Boscar", organization_id: 2, bio: "Boscar is a sweet little Frenchy who somehow ended up growing up with a litter of Shiba Inu brothers, so now he's fairly sure he is one.",
#           picture_url: "https://s.graphiq.com/sites/default/files/465/media/images/t2/French_Bulldog_5204893.jpg", breed_id: 3)

# Dog.create(name: "Giuliana", organization_id: 1, bio: "Giuliana's name may be quite a mouthfull but you'll adore this sweet little Pibble puppy.",
#           picture_url: "https://fs01.androidpit.info/a/d5/d7/pitbull-pack-5-dog-wallpaper-d5d743-h900.jpg", breed_id: 2)
#
Dog.create(name: "Shackleford", organization_id: 1, bio: "Although Shackleford was originally meant to be a military dog, a chance gate being left open led him to a whirldwind life as a rodeo clown pup, which is now looking to retire into a nice home.",
          picture_url: "http://www.allaboutdogs.net/wp-content/uploads/2015/04/Happy-Akita-Inu-dog-wallpaper.jpg", breed_id: 1)
