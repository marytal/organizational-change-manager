describe ApplicationController do
  it { is_expected.to use_before_action :log_unregistered_user }
  it { is_expected.to use_before_action :log_registered_user }

  describe '#log_unregistered_user' do
  end

  describe '#log_registered_user' do
    context 'session[:current_registered_user_id] is nil' do
    end

    context 'session has id' do
    end
  end
end
