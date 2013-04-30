class TextShout < ActiveRecord::Base
  attr_accessible :body
  # has_one :shout, as: :content REFLEXIVE ASSOCIATION - don't really need this unless you are OCD - increases the size of your interface as well
end
