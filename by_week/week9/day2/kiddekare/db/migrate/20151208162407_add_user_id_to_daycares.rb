class AddUserIdToDaycares < ActiveRecord::Migration
  def change
    add_column :daycares, :user_id, :integer
  end
end
