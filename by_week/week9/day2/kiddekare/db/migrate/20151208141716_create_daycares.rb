class CreateDaycares < ActiveRecord::Migration
  def change
    create_table :daycares do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :logo_url
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
