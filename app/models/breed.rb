class Breed < ActiveRecord::Base
  has_many :btraits
  has_many :traits, :through => :btraits
  belongs_to :group
end
