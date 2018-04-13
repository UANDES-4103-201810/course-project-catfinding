class Category < ApplicationRecord
  has_many :projects

   #before_create do
    #errors.add ("You can't create a category")
  #end

  before_update do
    errors.add ("You can't update a category")
  end
  before_destroy do
    errors.add ("You can't destroy a category")
  end
end

