describe ContentsController do
  let(:content) { create :content }
  let(:user) { create :user }
  let(:ticket) { create :ticket }

  describe '#create' do
    let(:content_attributes) do
      {content: "this is content", status: "positive", suggestion: false, ticket_id: ticket.id, user_id: user.id }
    end

    before(:each) do
      post :create, content: content_attributes
    end

    it "will create content" do
        _content = Content.where(content: 'this is content').first
        expect(_content.status).to eql "positive"
        expect(user.contents.first).to eql _content
    end

    it { is_expected.to redirect_to ticket_path ticket }
  end
end
