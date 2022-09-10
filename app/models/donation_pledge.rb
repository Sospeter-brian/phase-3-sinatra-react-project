class DonationPledge < ActiveRecord::Base
    belongs_to :donor_id
    belongs_to :recipient_id
end