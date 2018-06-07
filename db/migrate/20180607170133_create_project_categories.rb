class CreateProjectCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :project_categories do |t|
      t.references :project, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
