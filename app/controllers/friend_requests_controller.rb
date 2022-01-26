class FriendRequestsController < ApplicationController
  before_action :friend_request_setup, except: [:index, :create]

  def create
    friend = User.find(params[:friend_id])
    @friend_request = current-user.friend_requests.new(friend: :friend)

    if @friend_request.save
      # flash[:success] = "friend request sent"
      # redirect_to posts_path
      render :show, status: :created, locations: @friend_request
    else
      render json: @friend_request.error, status: :unprocessable_entity
    end
  end

  private
  def friend_request_setup
    @friend_request = FriendRequest.find(params[:id])
  end
end
