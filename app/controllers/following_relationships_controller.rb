class FollowingRelationshipsController < ApplicationController
	def create
		unfollowed_user = User.find(params[:user_id])
		# current_user.followed_users << unfollowed_user - not preferable - will become clearer when you write more tests etc
		current_user.follow unfollowed_user
		redirect_to unfollowed_user
	end
end
