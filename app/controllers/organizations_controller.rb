class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
    @user = current_user
  end

  def show
    @organization = get_organization
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)

    if @organization.save
      redirect_to @organization
    else
      render :new
    end
  end

  def edit
    @organization = get_organization
  end

  def update
    @organization = get_organization

    if @organization.update(organization_params)
      redirect_to @organization
    else
      render :edit
    end
  end

  def destroy
    @organization = get_organization

    if @organization.destroy
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def get_organization
    Organization.find(params.fetch(:id))
  end

  def organization_params
    params.require(:organization).permit(:name, :site_url, :description)
  end
end
