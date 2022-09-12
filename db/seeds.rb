puts "🌱 Seeding spices..."

# Seed your database here
#donors
donor1 = Donor.create(name:"Abel", phone_number:717206899, donationpledge:"Clothing")
donor2 = Donor.create(name:"Joseph",phone_number:726262895, donationpledge:"Linens")
donor3 = Donor.create(name:"Eric",phone_number:707499288, donationpledge:"Food")
donor4 = Donor.create(name:"Patrick",phone_number:707409297, donationpledge:"Food")
#recipients
recipient1 = Recipient.create(name:"Diana Childrens Home",donationpledge:"Clothing")
recipient2 = Recipient.create(name:"Bahati Orphanage",donationpledge:"Linens")
recipient3 = Recipient.create(name:"United",donationpledge:"Food")

#donation_pledges
pledge1 = Donationpledge.create(items_to_donate:"Clothing",donor_id: donor1.id,recipient_id: recipient1.id)
pledge2 = Donationpledge.create(items_to_donate:"Linens",donor_id: donor2.id,recipient_id: recipient3.id)
pledge3 = Donationpledge.create(items_to_donate:"Food",donor_id: donor3.id,recipient_id: recipient3.id)
pledge4 = Donationpledge.create(items_to_donate:"Food",donor_id: donor4.id,recipient_id: recipient3.id)



puts "✅ Done seeding!"
