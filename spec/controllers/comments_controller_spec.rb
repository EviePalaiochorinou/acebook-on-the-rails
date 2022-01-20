require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "GET /new " do
   xit "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      #need to sign up first
      post :create, params: { post: { message: "Hello, world!", user_id: @user.id } }
      @post = Post.find_by(message: "Hello, world!")
      post :create, params: { comment: { message: "Test comment"}, post_id: @post.id }
      #expect(response).to redirect_to(posts_url)
      expect(post: "/posts/#{@post.id}/comments").to route_to("comments#create")
    end

    it "creates a comment" do
      post :create, params: { post: { message: "Hello, world!", user_id: 1 } }
      @post = Post.find_by(message: "Hello, world!")
      post :create, params: { comment: { message: "Test comment"}, post_id: @post.id }
      expect(@post.comments).toEqual(message: "Test comment")
    end
  end

  describe "DELETE /" do
    xit "method delete,route /post/:id to destroy action" do
      post :create, params: { post: { message: "We're on rails!" } }
      @post = Post.find_by(message: "We're on rails!")
      expect(delete: "/posts/#{@post.id}").to route_to("posts#destroy", "id"=>"#{@post.id}")
    end
  end
end
