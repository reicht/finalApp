class Dbreed < ActiveRecord::Base
  belongs_to :dog
  belongs_to :breed
end
