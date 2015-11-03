class AddPictureToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :picture, :string
  end
end
