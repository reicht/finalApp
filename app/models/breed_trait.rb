class BreedTrait < ActiveRecord::Base
  belongs_to :breed
  belongs_to :trait
end
