# frozen_string_literal: true

class Post2 < ApplicationRecord
  belongs_to :author
  has_many :commentaries, dependent: :destroy
end
