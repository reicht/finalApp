class DogsController < ApplicationController
  def index
    @organization = get_org
  end

  def show
    @dog = get_dog
    @med_pics = []
    @lrg_pics = []

    @dog.dog_pics.where(size: "medium").each do |pic|
      @med_pics << pic.link
    end

    @dog.dog_pics.where(size: "large").each do |pic|
      @lrg_pics << pic.link
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to @dog
    else
      render :new
    end
  end

  def edit
    @dog = get_dog
  end

  def update
    @dog = get_dog

    if @dog.update(dog_params)
      redirect_to @dog
    else
      render :edit
    end
  end

  def destroy
    @dog = get_dog

    if @dog.destroy
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def get_dog
    Dog.find(params.fetch(:id))
  end

  def get_org
    Organization.find(params.fetch(:organization_id))
  end

  def dog_params
    params.require(:dog).permit(:name, :bio, :picture_url, :organization_id, :breed_id)
  end
end
