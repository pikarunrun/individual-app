class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :text, :text, presence: true
end
