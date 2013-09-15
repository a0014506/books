class User < ActiveRecord::Base
  attr_accessible :comment, :link_id, :name
  #key
  belongs_to:link
end
