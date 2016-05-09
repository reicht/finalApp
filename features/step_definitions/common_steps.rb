Given(/^I have an existing account$/) do
  User.create(email: "admin@doogle.com", password: "password")
end

Given(/^I have test data$/) do
  org = Organization.create(name: "Austin Pets Alive", site_url: "www.austinpetsalive.org", description: "An awesome place that savitizes the aminals.")
  group = Group.create(name: "Non Sporting", description: "Placeholder")
  breed = Breed.create(name: "French Bulldog", size: "small", intro_year: 1898,
              akc_rank: 6, energy_level: 2, group_id: group.id)
  Dog.create(name: "Boscar", organization_id: org.id, bio: "Boscar is a sweet little Frenchy who somehow ended up growing up with a litter of Shiba Inu brothers, so now he's fairly sure he is one.",
            picture_url: "https://s.graphiq.com/sites/default/files/465/media/images/t2/French_Bulldog_5204893.jpg", breed_id: breed.id)
end

Given(/^Boscar exists$/) do
  Dog.create(name: "Boscar", organization_id: 2, bio: "Boscar is a sweet little Frenchy who somehow ended up growing up with a litter of Shiba Inu brothers, so now he's fairly sure he is one.",
            picture_url: "https://s.graphiq.com/sites/default/files/465/media/images/t2/French_Bulldog_5204893.jpg", breed_id: 3)
end

When(/^I go to the sign in path$/) do
  visit('/sign_in')
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in(field, with: content)
end

When(/^I press "([^"]*)"$/) do |name|
  click_button(name)
end

When(/^I click "([^"]*)"$/) do |name|
  click_link(name)
end

Then(/^I should see "([^"]*)"$/) do |text|
  assert page.has_content?(text)
end
