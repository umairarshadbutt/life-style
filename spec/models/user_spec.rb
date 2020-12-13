require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do

    context 'associations' do
      it { should have_many(:articles) }
    end
  end
end
