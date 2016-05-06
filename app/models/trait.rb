class Trait < ActiveRecord::Base
  has_many :breed_traits
  has_many :breeds, :through => :breed_traits
end
