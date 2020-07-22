class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.boolean :published

      t.timestamps
    end
  end
end
