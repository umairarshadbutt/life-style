class Tag < ApplicationRecord
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :articles, through: :taggings

end
