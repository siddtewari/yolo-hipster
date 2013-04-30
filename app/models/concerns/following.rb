module Concerns
	module Following
		extend ActiveSupport::Concern

	included do 

		has_many :followed_user_relationships, foreign_key: :follower_id, class_name: "FollowingRelationship"
	  has_many :followed_users, through: :followed_user_relationships

	  has_many :follower_relationships, foreign_key: :followed_user_id, class_name: "FollowingRelationship"
	  has_many :follower, through: :follower_relationships

	end

	  def can_follow? user
	    self_and_followed_user_ids.exclude?(user.id)
	  end

	  def follow user
	  	followed_users << user
	  end

	  def self_and_followed_user_ids
	    [id] + followed_user_ids
	  end
	end
end
