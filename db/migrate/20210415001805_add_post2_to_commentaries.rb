class AddPost2ToCommentaries < ActiveRecord::Migration[6.1]
  def change
    add_reference :commentaries, :post2s, null: false, foreign_key: true
  end
end
