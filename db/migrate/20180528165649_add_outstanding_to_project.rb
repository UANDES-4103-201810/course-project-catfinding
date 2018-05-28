class AddOutstandingToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :outstanding, :boolean, null: false, default: false
  end
end
