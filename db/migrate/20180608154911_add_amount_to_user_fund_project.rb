class AddAmountToUserFundProject < ActiveRecord::Migration[5.2]
  def change
    add_column :user_fund_projects, :amount, :integer, default: 0
  end
end
