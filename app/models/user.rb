class User < ActiveRecord::Base
  include Clearance::User
  include Concerns::Following

  has_many :shouts

  def timeline
  	Timeline.new(self_and_followed_user_ids)
  end
  
end
