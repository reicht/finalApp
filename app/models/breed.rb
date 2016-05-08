class Breed < ActiveRecord::Base
  has_many :btraits
  has_many :traits, :through => :btraits
  has_many :dogs
  belongs_to :group
end
