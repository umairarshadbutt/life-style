class Post < ApplicationRecord
  belongs_to :user

  delegate :username, to: :user
end
