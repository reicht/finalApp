# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'pfapi.rb'

##USERS##

User.create(name: "Jordan", email: "admin@doogle.com", password: "password")
User.create(name: "Guest", email: "guest@doogle.com", password: "password")

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

Organization.create(name: "Austin Pets Alive!", address: "1156 West Cesar Chavez", email: "adopt@austinpetsalive.org", city: "Austin", state: "TX", zip: "78704", pf_id: "TX1218")
Organization.create(name: "Austin Boxer Rescue", address: "PO Box 14421", email: "info@austinboxerrescue.com", city: "Austin", state: "TX", zip: "78752", pf_id: "TX898")
Organization.create(name: "Texas Sweeties Dog Rescue", address: "N/A Contact via Email", email: "sarah@texassweetiesdogrescue.org", city: "Pflugerville", state: "TX", zip: "78691", pf_id: "TX1732")
Organization.create(name: "Pflugerville Pets Alive!", address: "N/A Contact via Email", email: "adopt@pflugervillepetsalive.org", city: "Pflugerville", state: "TX", zip: "78660", pf_id: "TX1837")
Organization.create(name: "Central Texas Dachshund Rescue", address: "FM 1960 Rd. East #71 Humble, Texas 77346", email: "adopt@ctdr.org", city: "Austin", state: "TX", zip: "73301", pf_id: "TX562")
Organization.create(name: "Cuz i Matter Animal Rescue", address: "PO Box 3751", email: "cuzimatteranimalrescue@gmail.com", city: "Pflugerville", state: "TX", zip: "78691", pf_id: "TX2128")
Organization.create(name: "Terrier Rescue of Texas", address: "near IKEA", email: "jsimek21@gmail.com", city: "Round Rock", state: "TX", zip: "78681", pf_id: "TX1431")
Organization.create(name: "Greyhound Pets of America/Central Texas", address: "P.O. BOX 10069", email: "adopt@gpa-centex.org", city: "Austin", state: "TX", zip: "78766", pf_id: "TX192")
Organization.create(name: "Austin Sheltie Rescue Inc", address: "N/A Contact via Email", email: "swig@sbcglobal.net", city: "Austin", state: "TX", zip: "78731", pf_id: "TX1196")
Organization.create(name: "CARE Companion Animal Rescue Effort", address: "N/A Contact via Email", email: "sue3574@yahoo.com", city: "Cedar Park", state: "TX", zip: "78613", pf_id: "TX765")
Organization.create(name: "Catahoula Rescue Inc.", address: "Foster homes", email: "info@catahoularescue.com", city: "Austin", state: "TX", zip: "78751", pf_id: "TX363")
Organization.create(name: "Austin Animal Center", address: "7201 Levander Loop", email: "animal.customerservice@austintexas.gov", city: "Austin", state: "TX", zip: "78702", pf_id: "TX514")
Organization.create(name: "Central Texas SPCA, A No-Kill Animal Shelter", address: "909 S. Bagdad Rd", email: "manager@centraltexasspca.org", city: "Leander", state: "TX", zip: "78641", pf_id: "TX58")
Organization.create(name: "Heart of Texas Lab Rescue, Inc.", address: "Phone: 512-259-5810", email: "Prefer phone contact", city: "Leander", state: "TX", zip: "78641", pf_id: "TX2084")
Organization.create(name: "PAWS of Austin", address: "N/A Contact via Email", email: "pawsofaustin@yahoo.com", city: "Austin", state: "TX", zip: "78729", pf_id: "TX555")


##WATCHES##

Watch.create(user_id: 1, organization_id: 2)
Watch.create(user_id: 2, organization_id: 1)

##DOGS##

Organization.all.each do |org|

  filtered_dogs = get_pups(org.pf_id)

  dogcount = filtered_dogs.count
  dognum = 0

  while dognum < dogcount

    dognum += 1
    dog = "dog" + dognum.to_s
    doog = Dog.create(name: filtered_dogs.dig(dog, :name), organization_id: Organization.where(pf_id: (filtered_dogs.dig(dog, :shelter_id))).ids.first, bio: filtered_dogs.dig(dog, :bio), pf_id: filtered_dogs.dig(dog, :pf_id), last_update: filtered_dogs.dig(dog, :last_update),
              sex: filtered_dogs.dig(dog, :sex), size: filtered_dogs.dig(dog, :size), mix: filtered_dogs.dig(dog, :mix), shelter_id: filtered_dogs.dig(dog, :shelter_id), age: filtered_dogs.dig(dog, :age))


    sml_pic_count = filtered_dogs.dig(dog, :sml_pic_urls).count
    sml_pic_num = 0

    while sml_pic_num < sml_pic_count
      sml_pic_num += 1
      DogPic.create(dog_id: doog.id, size: "small", link: filtered_dogs.dig(dog, :sml_pic_urls, "sml_pic" + sml_pic_num.to_s))
    end

    med_pic_count = filtered_dogs.dig(dog, :med_pic_urls).count
    med_pic_num = 0

    while med_pic_num < med_pic_count
      med_pic_num += 1
      DogPic.create(dog_id: doog.id, size: "medium", link: filtered_dogs.dig(dog, :med_pic_urls, "med_pic" + med_pic_num.to_s))
    end

    lrg_pic_count = filtered_dogs.dig(dog, :lrg_pic_urls).count
    lrg_pic_num = 0

    while lrg_pic_num < lrg_pic_count
      lrg_pic_num += 1
      DogPic.create(dog_id: doog.id, size: "large", link: filtered_dogs.dig(dog, :lrg_pic_urls, "lrg_pic" + lrg_pic_num.to_s))
    end

  end

end
