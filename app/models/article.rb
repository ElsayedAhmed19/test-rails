class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximumn: 10}

  validates :description, presence: true, length: {minimum: 10, maximum: 20}
end
