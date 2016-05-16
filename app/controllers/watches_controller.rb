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

  def destroy
    @watch = Watch.where(user_id: current_user.id, organization_id: params[:watch][:organization_id]).first

    if @watch.destroy
      flash[:notice] = "No longer watching."
    else
      flash.now[:notice] = "Unable to untrack, try again."
    end
  end

  private
  def watch_params
    params.require(:watch).permit(:organization_id, :user_id)
  end
end
