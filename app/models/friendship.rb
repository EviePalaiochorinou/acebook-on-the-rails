class Friendship < ApplicationRecord
  after_create :create_inverse_relationship 
  after_create :destroy_inverse_relationship

  belongs_to :user
  belongs_to :friend, class_name: "User"

  validates :user, presence: true
  validates :friend, presence: true, uniqueness: { scope: :user }

  validate :not_self

  private

  def not_self
    errors.add("you can't befriend yourself, sorry") if user == friend # current_user == friend
  end

  def create_inverse_relationship
    friend.friendships.create(friend: user)
  end

  def destroy_inverse_relationship
    friendship = friend.friendships.find_by(friend: user)
    friendship.destroy if friendship
  end
end
