class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title, null: false, default: ""
      t.text :description, null: false, default: ""
      t.integer :goalamount, null: false, default: 0
      t.integer :currentamount, null: false, default: 0
      t.boolean :approved, null: false, default: false
      t.date :deadline, null: false, default: Date.new(2020, 10, 10)
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
