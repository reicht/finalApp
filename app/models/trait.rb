class Trait < ActiveRecord::Base
  has_many :btraits
  has_many :breeds, :through => :btraits
end
