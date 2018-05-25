class AddBirthdayToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthday, :date, null: false, default: (19940316)
  end
end
