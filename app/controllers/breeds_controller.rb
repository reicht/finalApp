class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
  end

  def show
    @breed = get_breed
  end

  def new
    @breed = Breed.new
  end

  def create
    @breed = Breed.new(breed_params)

    if @breed.save
      redirect_to @breed
    else
      render :new
    end
  end

  def edit
    @breed = get_breed
  end

  def update
    @breed = get_breed

    if @breed.update(breed_params)
      redirect_to @breed
    else
      render :edit
    end
  end

  def destroy
    @breed = get_breed

    if @breed.destroy
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def get_breed
    Breed.find(params.fetch(:id))
  end

  def breed_params
    params.require(:breed).permit(:name, :size, :intro_year, :akc_rank, :energy_level, :group_id)
  end
end
