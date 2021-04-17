class Author < ApplicationRecord
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
  has_many :commentarys, dependent: :destroy
  has_many :post2s, dependent: :destroy
end
