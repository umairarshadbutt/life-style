class Post < ApplicationRecord
    # validates :title, :body, presence; true
    belongs_to :user

    delegate :username, to: :user
end
