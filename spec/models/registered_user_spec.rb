describe RegisteredUser do
  it { is_expected.to have_many :tickets }
  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_uniqueness_of :username }
end
