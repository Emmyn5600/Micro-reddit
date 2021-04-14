class AddAutorsCommentsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :autor, null: false, foreign_key: true
    add_reference :posts, :comment, null: false, foreign_key: true
  end
end
