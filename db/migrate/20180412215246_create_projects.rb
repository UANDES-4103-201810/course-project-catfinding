class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :tittle, null: false, default: ""
      t.text :markdown, null: false, default: ""
      t.text :description, null: false, default: ""
      t.integer :goalamount, null: false, default: ""
      t.integer :currentamount, null: false, default: ""
      t.boolean :approved, null: false, default: ""
      t.boolean :pendingapproval, null: false, default: ""
      t.date :deadline, null: false, default: ""
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
