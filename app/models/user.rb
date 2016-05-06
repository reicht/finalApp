class User <   include Clearance::User
  has_many :watches
  has_many :organizations, :through => :watches

ActiveRecord::Base
  include Clearance::User
end
