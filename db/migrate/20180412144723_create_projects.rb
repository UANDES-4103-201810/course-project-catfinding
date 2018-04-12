class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :category
      t.datetime :deadline
      t.integer :currentamount
      t.integer :goalamount
      t.string :tittle
      t.text :description
      t.string :video

      t.timestamps
    end
  end
end
