require 'spec_helper'

describe User do 
	it "#can_follow? unless self" do
		user = create(:user)
		expect(user.can_follow?(user)).to eq(false)
	end	

	it "#can_follow? unless already following" do
		# user 
		# another user
		# make sure follow another user 
		# make sure user can not follow another user
		follower = create(:user)
		followed_user = create(:user)
		follower.follow followed_user
		expect(follower.can_follow?(followed_user)).to eq(false)
	end

	it "#can_follow? everyone else" do
		follower = create(:user)
		unfollowed_user = create(:user)
		expect(follower.can_follow?(unfollowed_user)).to eq(true)
	end
end