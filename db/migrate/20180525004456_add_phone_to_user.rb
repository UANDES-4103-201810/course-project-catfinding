class AddPhoneToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string, null: false, default: ""
  end
end
