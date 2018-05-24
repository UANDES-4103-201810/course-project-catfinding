class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
      t.boolean :isadmin, null: false, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
