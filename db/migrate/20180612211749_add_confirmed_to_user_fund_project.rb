class AddConfirmedToUserFundProject < ActiveRecord::Migration[5.2]
  def change
    add_column :user_fund_projects, :confirmed, :boolean, default: false
  end
end
