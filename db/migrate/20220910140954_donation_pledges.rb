class DonationPledges < ActiveRecord::Migration[6.1]
  def change
    create_table :donation_pledges do |t|
      t.string :items_to_donate
      t.integer :donor_id
      t.integer :recipient_id
    end
  end
end
