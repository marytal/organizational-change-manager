class Content < ActiveRecord::Base
  validates :status, :content, presence: true
  validates_inclusion_of :suggestion, in: [true, false]
  has_many :opinions
  belongs_to :ticket
  belongs_to :user

  scope :comments, -> { where(suggestion: false) }
  scope :suggestions, -> { where(suggestion: true) }

  scope :positive_comments, -> { where(suggestion: false, status: I18n.t(:positive))}
  scope :negative_comments, -> { where(suggestion: false, status: I18n.t(:negative))}
  scope :neutral_comments, -> { where(suggestion: false, status: I18n.t(:neutral))}

end
