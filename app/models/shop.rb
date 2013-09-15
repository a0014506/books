class Shop < ActiveRecord::Base
  attr_accessible :link_id, :name, :offer
  #key
  belongs_to:link
end
