class User < ActiveRecord::Base
  has_secure_password
  has_many :tasks_lists
  validates :email_address, uniqueness: true
  validates :email_address, presence: true
end
