describe User do
  it { is_expected.to validate_presence_of :ip_address }
  it { is_expected.to validate_uniqueness_of :ip_address }
  it { is_expected.to have_many :opinions }
  it { is_expected.to have_many :contents }
end
