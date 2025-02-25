class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #get donors
    
  get "/donors/:id" do 
   donor = Donor.find(params[:id])
    donor.to_json
  end

get "/donors" do 
  donors = Donor.all
  donors.to_json
end

#get donation_pledges
   
get "/donationpledges/:id" do
  pledge = Donationpledge.find(params[:id])
  pledge.to_json
end

get "/donationpledges" do 
  pledges = Donationpledge.all
  pledges.to_json
end

#get recipients

get "/recipients/:id" do 
  recipient = Recipient.find(params[:id])
  recipient.to_json
end

get "/recipients" do 
  recipients = Recipient.all 
  recipients.to_json
end
#post
post '/donors' do
  donor = Donor.create(
name: params[:name],
phone_number: params[:phone_number]
  )
  donor.to_json
end

post '/donation_pledges' do
  pledge = Donationpledge.create(
    items_to_donate: params[:items_to_donate],
    donor_id: params[:donor_id],
    recipient_id: params[:recipient_id]
  )
  pledge.to_json
end
post '/recipients' do
  recipient = Recipient.create(
name: params[:name]
  )
  recipient.to_json
end
#delete

delete '/donors/:id' do
  delete_donor = Donor.find(params[:id])
  delete_donor.destroy
  delete_donor.to_json
end

delete '/donationpledges/:id' do
  pledge = Donationpledge.find(params[:id])
  pledge.destroy
  pledge.to_json
end

delete '/recipients/:id' do
  recipient = Recipient.find(params[:id])
  recipient.destroy
  recipient.to_json
end
end
