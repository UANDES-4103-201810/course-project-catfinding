class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :tittle
      t.text :markdown
      t.text :description
      t.integer :goalamount
      t.integer :currentamount
      t.boolean :approved
      t.boolean :pendingapproval
      t.date :deadline
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
