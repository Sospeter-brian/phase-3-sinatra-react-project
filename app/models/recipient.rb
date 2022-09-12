class Recipient < ActiveRecord::Base
    has_many :donationpledges
    has_many :donors, through: :donationpledges
end