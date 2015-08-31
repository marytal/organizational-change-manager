class Ticket < ActiveRecord::Base
  validates :name, :description, presence: true
  validates_inclusion_of :closed, in: [true, false]
  belongs_to :registered_user
  has_many :contents
end
