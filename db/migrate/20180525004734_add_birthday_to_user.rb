class AddBirthdayToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthday, :date, null: false, default: Date.new(1996, 9, 3)

  end
end
