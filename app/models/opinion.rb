class Opinion < ActiveRecord::Base
  validates_inclusion_of :agree, in: [true, false]

  scope :agree, -> { where(agree: true) }
  scope :disagree, -> { where(agree: false) }

  belongs_to :user
  belongs_to :content
end
