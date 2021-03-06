class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    appearance = Appearance.create(appearance_params)
    redirect_to episodes_path
  end

private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
