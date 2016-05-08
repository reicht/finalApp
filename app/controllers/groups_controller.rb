class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = get_group
  end

  private
  def get_group
    Group.find(params.fetch(:id))
  end
end
