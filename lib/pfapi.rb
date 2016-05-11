


def get_token

  @petfinder_api_secret = ENV['PETFINDER_API_SECRET']

  sig = Digest::MD5.hexdigest( ENV['PETFINDER_API_SECRET'] + 'key=8a3be99af0e925900fb9b7fe8550ae07&format=json')
  response = HTTParty.get('http://api.petfinder.com/auth.getToken?key=8a3be99af0e925900fb9b7fe8550ae07&format=json&sig='+sig)

  @token = JSON.parse(response.body).fetch("petfinder").fetch("auth").fetch("token").fetch("$t")

end

def get_test_pups
  # WAS AUSTIN PETS ALIVE, CHANGED TO AUSTIN BOXER RESCUE FOR CONVENIENCE

  @petfinder_api_secret = ENV['PETFINDER_API_SECRET']

  if @token.nil?
    get_token
  end

  sig = Digest::MD5.hexdigest( @petfinder_api_secret + 'key=8a3be99af0e925900fb9b7fe8550ae07&id=TX898&format=json&token=' + @token)
  response = HTTParty.get('http://api.petfinder.com/shelter.getPets?key=8a3be99af0e925900fb9b7fe8550ae07&id=TX898&format=json&token=' + @token + '&sig=' + sig)

  pets = JSON.parse(response.body).fetch("petfinder").fetch("pets")

  dogs = []

  pets.fetch("pet").each do |pet|
    if pet.fetch("animal").fetch("$t") == "Dog"
      dogs << pet
    end
  end

  @dogs_filtered = {}
  i=0

  dogs.each do |dog|
    i = i+1
    @dogs_filtered["dog" + i.to_s] = {
      :pfid => dog.dig("id", "$t"),
      :name => dog.dig("name", "$t"),
      :age => dog.dig("age", "$t"),
      :sex => dog.dig("sex", "$t"),
      :size => dog.dig("size", "$t"),
      :breeds => dog.fetch("breeds"),
      :mix => dog.dig("mix", "$t"),
      :options => dog.fetch("options"),
      :description => dog.dig("description", "$t"),
      :sml_pic_urls => {},
      :med_pic_urls => {},
      :lrg_pic_urls => {}
      }

      sml_pics = 0
      med_pics = 0
      lrg_pics = 0

      dog.dig("media", "photos", "photo").each do |pic|

        if pic.fetch("@size") == "fpm"
          sml_pics += 1

          @dogs_filtered["dog" + i.to_s][:sml_pic_urls]["sml_pic" + sml_pics.to_s] = pic.fetch("$t")

        elsif pic.fetch("@size") == "pn"
          med_pics += 1

          @dogs_filtered["dog" + i.to_s][:med_pic_urls]["sml_pic" + med_pics.to_s] = pic.fetch("$t")

        elsif pic.fetch("@size") == "x"
          lrg_pics += 1

          @dogs_filtered["dog" + i.to_s][:lrg_pic_urls]["lrg_pic" + lrg_pics.to_s] = pic.fetch("$t")

        end

      end

  end

  binding.pry

end
