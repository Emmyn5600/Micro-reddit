# frozen_string_literal: true

class Autor < ApplicationRecord
  has_many :posts
end
