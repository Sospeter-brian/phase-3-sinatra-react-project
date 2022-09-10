class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #get donors
    
  get "/donors/:id" do 
    donor = Donor.find(params[:id])
    donor.to_json
  end

get "/donors" do 
  donor = Donor.all
  donor.to_json
end

end
