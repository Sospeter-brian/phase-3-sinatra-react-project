class RenameColumnNameInRecipients < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipients, :donation_pledges ,:donation_pledge
  end
end
