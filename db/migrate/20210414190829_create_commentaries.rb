class CreateCommentaries < ActiveRecord::Migration[6.1]
  def change
    create_table :commentaries do |t|
      t.string :content
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
