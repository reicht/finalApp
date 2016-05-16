class UsersController < Clearance::UsersController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Account Created."
    else
      flash.now[:notice] = "Failed to Create Account."
    end
    redirect_to :root
  end

  def update
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
