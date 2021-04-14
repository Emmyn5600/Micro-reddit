class CreatePost2s < ActiveRecord::Migration[6.1]
  def change
    create_table :post2s do |t|
      t.string :title
      t.string :content
      t.references :author, null: false, foreign_key: true
      t.timestamps
    end
  end
end
