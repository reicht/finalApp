class Organization < ActiveRecord::Base
  has_many :watches
  has_many :users, :through => :watches
end
