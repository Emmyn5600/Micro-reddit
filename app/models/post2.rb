class Post2 < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :author
  has_many :commentaries, dependent: :destroy
end
