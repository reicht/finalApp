class Organization < ActiveRecord::Base
  has_many :watches, dependent: :destroy
  has_many :users, :through => :watches
  has_many :dogs, dependent: :destroy
end
