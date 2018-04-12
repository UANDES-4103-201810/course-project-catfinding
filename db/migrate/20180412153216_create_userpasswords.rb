class CreateUserpasswords < ActiveRecord::Migration[5.2]
  def change
    create_table :userpasswords do |t|
      t.string :password

      t.timestamps
    end
  end
end
