class User < ActiveRecord::Base
  include Clearance::User
  attr_accessor :password_confirmation
  has_many :watches
  has_many :organizations, :through => :watches
end
