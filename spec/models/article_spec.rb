require 'rails_helper'

RSpec.describe Article, type: :model do
  describe Article do
    let(:user_umair) do
      User.create(email: 'umair6622@gmail.com',
                  password: 'password', password_confirmation: 'password')
    end
    let(:subject) do
      described_class.new(
        title: 'Resume',
        body: 'Resume article body',
        user_id: user_umair.id,
        image: nil
      )
    end

    context 'validations' do
      it 'Content cannot be less than 10' do
        subject.body = 'text'
        expect(subject).not_to be_valid
      end
    end
    context 'validates title' do
      it '' do
      end
    end
  end
end
