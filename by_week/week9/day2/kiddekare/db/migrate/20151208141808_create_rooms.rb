class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :daycare_id
      t.string :number
      t.text :caregivers, array: true, default: []

      t.timestamps null: false
    end
  end
end
