class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :site_id
      t.string :title
      t.text :body
      t.string :author_name

      t.timestamps null: false
    end
  end
end
