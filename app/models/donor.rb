class Donor < ActiveRecord::Base
    has_many :donationpledges
    has_many :recipients, through: :donationpledges
end 