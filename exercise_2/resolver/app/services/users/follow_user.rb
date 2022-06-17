class FollowUser
  def initialize(orther_user_id)
    @orther_user_id = orther_user_id
  end

  def create_follow_user
    Follow.find_or_create_by(follower: @current_user.id, followee: @orther_user_id)
  end

  def unfollow_user
    follow = Follow.find(follower: @current_user.id, followee: @orther_user_id)
    follow.destroy if follow.present?
  end

  def view_my_following
    @current_user.followees
  end

  def view_my_followers
    @current_user.followers
  end
end
