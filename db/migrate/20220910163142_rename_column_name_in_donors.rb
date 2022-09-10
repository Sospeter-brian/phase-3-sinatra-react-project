class RenameColumnNameInDonors < ActiveRecord::Migration[6.1]
  def change
    rename_column :donors, :donation_pledges ,:donation_pledge
  end
end
