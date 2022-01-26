class FriendsController < ApplicationController
  before_action :friend_setup, only: :destroy

  def index
    @friends = current_user.friends
  end

  def destroy

  end

  private

  def friend_setup
    @friend = current_user.friends.find(params[:id])
  end
end
