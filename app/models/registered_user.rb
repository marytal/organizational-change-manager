class RegisteredUser < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  has_many :tickets
end
