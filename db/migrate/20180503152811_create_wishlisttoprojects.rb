class CreateWishlisttoprojects < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlisttoprojects do |t|
      t.references :wishlist, foreign_key: true
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
