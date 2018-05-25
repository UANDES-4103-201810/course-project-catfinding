class AddDescriptionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :description, :text, null: false, default: ""
  end
end
