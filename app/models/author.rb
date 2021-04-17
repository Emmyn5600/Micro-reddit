class Author < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 

  has_many :commentarys, dependent: :destroy
  has_many :post2s, dependent: :destroy
end
