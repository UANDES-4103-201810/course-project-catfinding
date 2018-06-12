class RemoveMarkdownFromProject < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :markdown, :string
  end
end
