class Link < ActiveRecord::Base
  attr_accessible :traffic
  #key
  has_many :shop
  has_many :user
end
