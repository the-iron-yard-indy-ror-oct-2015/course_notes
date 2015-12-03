class CreateLegoSets < ActiveRecord::Migration
  def change
    create_table :lego_sets do |t|
      t.string :name
      t.integer :cost
      t.date :date_procured

      t.timestamps null: false
    end
  end
end
