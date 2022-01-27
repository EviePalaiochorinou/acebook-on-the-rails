module LikesHelper

  def likes_count(post)
    likes = post.likes.count
    unless likes == 0 then
    likes < 2 ? "#{likes} Like" : "#{likes} Likes"
    end
  end

  def liked_by_users(post)
    likes = post.likes.count
    unless likes == 0 then
      if last_liker(post) == current_user.name
        case likes
        when 1
          current_user.name
        when 2
          name = second_to_last_liker(post)
          "You and #{name}"
        when 3
          name = second_to_last_liker(post) 
          "You, #{name} and 1 other"
        when 4..100
          name = second_to_last_liker(post)
          "You, #{name} and #{likes - 2} others"
        end
      else
        case likes
        when 1
          last_liker(post)
        when 2
          name = last_liker(post)
          "#{name} and 1 other"
        when 3..100 
          name = last_liker(post)
          "#{name} and #{likes - 1} others"
        end
      end
    end
  end
        
  def last_liker(post)
    post.likes[-1].user.name
  end

  def second_to_last_liker(post)
    post.likes[-2].user.name
  end
end
