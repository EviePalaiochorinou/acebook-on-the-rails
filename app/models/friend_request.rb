class FriendRequest < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def accept
    user.friends << friend # accept request = create the association
                # append thank's to "has_many :through" setup
    destroy # the request
  end
end
