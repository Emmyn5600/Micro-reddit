class Author < ApplicationRecord
  has_many :commentarys, dependent: :destroy
  has_many :post2s, dependent: :destroy
end
