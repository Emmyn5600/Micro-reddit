# frozen_string_literal: true

class Commentary < ApplicationRecord
  belongs_to :author
  belongs_to :post2s
end
