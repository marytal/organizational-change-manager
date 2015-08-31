describe TicketsController do
  let(:registered_user) { create :registered_user }
  let(:user) { create :user }
  let(:ticket) { create :ticket }

  before(:each) do
    allow(controller).to receive :log_unregistered_user
  end

  describe '#create' do
    let(:ticket_attributes) do
      { name: 'name', description: 'this is a ticket', closed: false, registered_user_id: registered_user.id }
    end

    context 'registered user logged in' do

      before(:each) do
        controller.instance_variable_set(:@registered_user, registered_user)
        post :create, ticket: ticket_attributes
      end

      it 'will create a ticket' do
        ticket = Ticket.where(name: 'name').first
        expect(ticket.description).to eql 'this is a ticket'
      end

    end

    context 'no registered user' do

      before(:each) do
        post :create, ticket: ticket_attributes
      end

      it { is_expected.to redirect_to root_path }
    end
  end

  describe '#show' do
    before(:each) do
      get :show, id: ticket
    end

    it 'will set 3 instance variables' do
    end
  end

end
