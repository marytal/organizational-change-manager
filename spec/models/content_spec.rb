describe Content do
  it { is_expected.to validate_presence_of :status }
  it { is_expected.to validate_presence_of :content }
  it { is_expected.to have_many :opinions }
  it { is_expected.to belong_to :ticket }
  it { is_expected.to belong_to :user }

end
