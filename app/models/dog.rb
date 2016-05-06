class Dog < ActiveRecord::Base
  belongs_to :organization, counter_cache: true
  belongs_to :breed
end
