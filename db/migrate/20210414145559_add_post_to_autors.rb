class AddPostToAutors < ActiveRecord::Migration[6.1]
  def change
    add_reference :autors, :post, null: false, foreign_key: true
  end
end
