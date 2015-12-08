class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.text :notes
      t.date :birthday
      t.integer :room_id

      t.timestamps null: false
    end
  end
end
