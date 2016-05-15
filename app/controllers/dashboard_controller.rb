class DashboardController < ApplicationController
  def home
    @watched_orgs = current_user.organizations
    @recent_dogs = Dog.all.order(last_update: "ASC").last(3)
    @watched_recent_dogs = current_user.dogs.order(last_update: "ASC").last(3)
  end

  def contact
  end

  def purpose
  end

  def dogs
    @dogs = Dog.all.order(id: "DESC")
  end

end
