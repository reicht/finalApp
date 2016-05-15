class WatchesController < ApplicationController
  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user
    if @watch.save
      flash[:notice] = "Organization Watched."
    else
      flash.now[:notice] = "Unable to watch, try again."
    end
  end

  private
  def watch_params
    params.require(:watch).permit(:organization_id, :user_id)
  end
end
