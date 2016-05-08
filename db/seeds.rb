# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##USERS##

User.create(email: "admin@doogle.com", password: "password")
User.create(email: "guest@doogle.com", password: "password")

##GROUPS##

groups = ["Herding", "Hound", "Non Sporting", "Sporting", "Terrier", "Toy", "Working", "FSS", "Miscellaneous"]

groups.each do |group_name|
  Group.create(name: group_name, description: "PlaceHolder for Group Text")
end


##TRAITS##

traits = ["Adaptable", "Confident", "Courageous", "Dignified", "Good-Natured", "Loyal", "Playful", "Smart"]

traits.each do |trait_name|
  Trait.create(name: trait_name)
end

##BREEDS##

Breed.create(name: "Akita", size: "large", intro_year: 1972,
            akc_rank: 47, energy_level: "medium", group_id: 7)
Btrait.create(breed_id: 1, trait_id: 3)
Btrait.create(breed_id: 1, trait_id: 4)
Btrait.create(breed_id: 1, trait_id: 6)

Breed.create(name: "American Staffordshire Terrier", size: "medium", intro_year: 1936,
            akc_rank: 80, energy_level: "medium", group_id: 5)
Btrait.create(breed_id: 2, trait_id: 2)
Btrait.create(breed_id: 2, trait_id: 5)
Btrait.create(breed_id: 2, trait_id: 8)

Breed.create(name: "French Bulldog", size: "small", intro_year: 1898,
            akc_rank: 6, energy_level: "medium", group_id: 3)
Btrait.create(breed_id: 3, trait_id: 1)
Btrait.create(breed_id: 3, trait_id: 7)
Btrait.create(breed_id: 3, trait_id: 8)

##ORGANIZATIONS##

Organization.create(name: "Austin Pets Alive", site_url: "www.austinpetsalive.org", description: "An awesome place that savitizes the aminals.")
Organization.create(name: "Shiba Inu Rescue of Texas", site_url: "www.sirtx.org", description: "Amazing Shiba for Amazing people, because the shibes got the goods.")

##WATCHES##

Watch.create(user_id: 1, organization_id: 2)
Watch.create(user_id: 2, organization_id: 1)

##DOGS##

Dog.create(name: "Boscar", organization_id: 2, bio: "Boscar is a sweet little Frenchy who somehow ended up growing up with a litter of Shiba Inu brothers, so now he's fairly sure he is one.",
          picture_url: "https://s.graphiq.com/sites/default/files/465/media/images/t2/French_Bulldog_5204893.jpg", breed_id: 3)

Dog.create(name: "Giuliana", organization_id: 1, bio: "Giuliana's name may be quite a mouthfull but you'll adore this sweet little Pibble puppy.",
          picture_url: "https://fs01.androidpit.info/a/d5/d7/pitbull-pack-5-dog-wallpaper-d5d743-h900.jpg", breed_id: 2)

Dog.create(name: "Shackleford", organization_id: 1, bio: "Although Shackleford was originally meant to be a military dog, a chance gate being left open led him to a whirldwind life as a rodeo clown pup, which is now looking to retire into a nice home.",
          picture_url: "http://www.allaboutdogs.net/wp-content/uploads/2015/04/Happy-Akita-Inu-dog-wallpaper.jpg", breed_id: 1)
