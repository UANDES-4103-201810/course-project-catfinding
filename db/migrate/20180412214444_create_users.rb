class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :email
      t.date :birthday
      t.text :description
      t.datetime :laslogin
      t.boolean :isadmin

      t.timestamps
    end
  end
end