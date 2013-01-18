class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @tweets = @profile.tweets.order("id DESC").limit(20)
    @following = Following.where(from_id: @profile.id)
  end

  def index
    @profiles = User.all
  end


  def follow
    @profile = User.find(params[:id])
    if current_user == @profile
      redirect_to profile_path(@profile)
      return
    end
    if current_user.already_follow? @profile
      redirect_to profile_path(@profile)
      return
    end
    @following = Following.new
    @following.from_id = current_user.id
    @following.to_id = @profile.id
    @following.save
    redirect_to profile_path(@profile)
  end
end 


