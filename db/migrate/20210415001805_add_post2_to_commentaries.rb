# frozen_string_literal: true

class AddPost2ToCommentaries < ActiveRecord::Migration[6.1]
  def change
    add_reference :commentaries, :post2, null: false, foreign_key: true
  end
end
