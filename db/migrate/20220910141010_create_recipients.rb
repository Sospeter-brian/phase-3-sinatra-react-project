class CreateRecipients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :donationpledge
    end
  end
end
