class WishlistProject < ApplicationRecord
  belongs_to :wishlist
  belongs_to :project
end
