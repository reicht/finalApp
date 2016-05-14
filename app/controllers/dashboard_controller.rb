class DashboardController < ApplicationController
  def home
    @watched_orgs = current_user.organizations
    @recent_dogs = Dog.last(3)
    @watched_recent_dogs = Dog.last(3)
  end

  def contact
  end

  def purpose
  end

  def dog_list
  end

end
