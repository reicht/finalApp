class Dog < ActiveRecord::Base
  belongs_to :organization, counter_cache: true
  has_many :breeds, :through => :dbreeds
  has_many :dog_pics
  has_many :specs, :through => :dspecs
end
