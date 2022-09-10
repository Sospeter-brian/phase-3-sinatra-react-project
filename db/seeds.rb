puts "🌱 Seeding spices..."

# Seed your database here
#donors
donor1 = Donor.create(name:"Abel",phone_number:717206899,donation_pledge:"Clothing")
donor2 = Donor.create(name:"Joseph",phone_number:726262895,donation_pledge:"Linens")
donor3 = Donor.create(name:"Eric",phone_number:707499288,donation_pledge:"Food")

#recipients
recipient1 = Recipient.create(name:"Diana Childrens Home",donation_pledge:"Clothing")
recipient2 = Recipient.create(name:"Bahati Orphanage",donation_pledge:"Linens")
recipient3 = Recipient.create(name:"United",donation_pledge:"Linens")

#donation_pledges
pledge1 = DonationPledge.create(items_to_donate:"Clothing",donor_id: donor1.id,recipient_id: recipient1.id)
pledge2 = DonationPledge.create(items_to_donate:"Linens",donor_id: donor2.id,recipient_id: recipient3.id)
pledge3 = DonationPledge.create(items_to_donate:"Food",donor_id: donor3.id,recipient_id: recipient3.id)



puts "✅ Done seeding!"
