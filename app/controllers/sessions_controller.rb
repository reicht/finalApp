class SessionsController < Clearance::SessionsController

  def create
  end

  def destroy
  end

  def new
  end

  private

  def url_after_destroy
    redirect_url
  end

end
