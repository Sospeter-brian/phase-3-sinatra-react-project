class Recipients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :donation_pledges
    end
  end
end
