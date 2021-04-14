class Post2 < ApplicationRecord
  belongs_to :author
  has_many :commentarys, dependent: :destroy
end
