class FriendsController < ApplicationController
  before_action :friend_setup, only: :destroy

  def index # show all 
    @friends = current_user.friends
  end

  def destroy
    current_user.remvove_friend(@friend)
    head :no_content
    # redirect_to posts_path
  end

  private

  def friend_setup
    @friend = current_user.friends.find(params[:id])
  end
end
