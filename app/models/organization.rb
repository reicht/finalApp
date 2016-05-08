class Organization < ActiveRecord::Base
  acts_as_mappable
  has_many :watches
  has_many :users, :through => :watches
end
