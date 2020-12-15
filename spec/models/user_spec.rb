require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it 'Validation Test' do
    end
    it 'Should save succesfully' do
    end
  end

  let(:subject) do
    described_class.new(
      email: 'abcdef@email.com',
      password: 'password',
      password_confirmation: 'password'
    )
  end

  context 'validations' do
    it 'is valid with valid attribute' do
      expect(subject).to be_valid
    end

    it 'The name of the user should exist' do
      subject.email = ''
      expect(subject).not_to be_valid
    end
  end
end
