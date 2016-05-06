class Dog < ActiveRecord::Base
  belongs_to :organization
  belongs_to :breed
end
