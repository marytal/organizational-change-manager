class User < ActiveRecord::Base
  validates :ip_address, presence: true, uniqueness: true
  has_many :opinions
  has_many :contents
end
