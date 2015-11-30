class AddImageToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :image_id, :string
  end
end
