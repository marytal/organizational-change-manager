describe Ticket do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to belong_to :registered_user }
  it { is_expected.to have_many :contents }
end
