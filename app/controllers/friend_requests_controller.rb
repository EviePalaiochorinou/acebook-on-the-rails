class FriendRequestsController < ApplicationController
  before_action :friend_request_setup, except: [:index, :create]

  def create # send a friend request to another user
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

  def index # view incoming and outcoming requests
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_request
  end

  def update # accept friend requests
    @friend_request.accept
    # redirect_to posts_path
    head :no_content
  end

  def destroy
    @friend_request.destroy
    head :no_content
    # redirect_to posts_path
  end

  private
  def friend_request_setup
    @friend_request = FriendRequest.find(params[:id])
  end
end
