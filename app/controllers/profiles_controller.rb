class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @tweets = @profile.tweets.order("id DESC").limit(20)
  end
end


