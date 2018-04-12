class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.date :birthday
      t.text :description
      t.datetime :lastlogin
      attr_protected :is_admin
      attr_protected :datetime
      t.address :string

      t.timestamps
    end
  end
end
