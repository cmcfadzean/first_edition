class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.references :book, foreign_key: true
      t.string :title
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end
end
