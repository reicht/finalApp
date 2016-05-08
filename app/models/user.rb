class User <   include Clearance::User
  acts_as_mappable
  has_many :watches
  has_many :organizations, :through => :watches

ActiveRecord::Base
  include Clearance::User
end
