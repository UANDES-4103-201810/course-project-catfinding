class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :name, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.text :description, null: false, default: ""
      t.date :etd, null: false, default: (20500505)
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
