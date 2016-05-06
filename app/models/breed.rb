class Breed < ActiveRecord::Base
  has_many :breed_traits
  has_many :traits, :through => :breed_traits
  belongs_to :group
end
