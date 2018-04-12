class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :name
      t.integer :amount
      t.text :description
      t.references :project, foreign_key: true

      t.timestamps



    end
  end
end
