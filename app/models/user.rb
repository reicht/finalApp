class User < ActiveRecord::Base
  include Clearance::User
  attr_accessor :password_confirmation
  acts_as_mappable
  has_many :watches, dependent: :destroy
  has_many :organizations, :through => :watches
end
