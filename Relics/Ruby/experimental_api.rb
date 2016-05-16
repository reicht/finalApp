@dogs_filtered = []
i=0

dogs.each do |dog|
  i = i+1
  @dogs_filtered << {
    :pf_id => dog.dig("id", "$t"),
    :name => dog.dig("name", "$t"),
    :age => dog.dig("age", "$t"),
    :sex => dog.dig("sex", "$t"),
    :size => dog.dig("size", "$t"),
    :breeds => dog.fetch("breeds"),
    :mix => dog.dig("mix", "$t"),
    :options => dog.fetch("options"),
    :bio => dog.dig("description", "$t"),
    :contact => dog.fetch("contact"),
    :shelter_id => dog.dig("shelterId", "$t"),
    :last_update => dog.dig("lastUpdate", "$t"),
    :sml_pic_urls => {},
    :med_pic_urls => {},
    :lrg_pic_urls => {}
    }

    sml_pics = 0
    med_pics = 0
    lrg_pics = 0

    unless dog.dig("media", "photos", "photo").nil?

      dog.dig("media", "photos", "photo").each do |pic|

        if pic.fetch("@size") == "fpm"
          sml_pics += 1

          @dogs_filtered[i][:sml_pic_urls][:sml_pic + sml_pics] = pic.fetch("$t")

        elsif pic.fetch("@size") == "pn"
          med_pics += 1

          @dogs_filtered[i][:med_pic_urls]["med_pic" + med_pics.to_s] = pic.fetch("$t")

        elsif pic.fetch("@size") == "x"
          lrg_pics += 1

          @dogs_filtered[i][:lrg_pic_urls]["lrg_pic" + lrg_pics.to_s] = pic.fetch("$t")

        end

      end

    end

end
