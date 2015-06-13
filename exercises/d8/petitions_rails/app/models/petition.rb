class Petition < ActiveRecord::Base

	def self.get_petitions
    	response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json"
    	parsed_response = JSON.parse(response)
    	petitions = parsed_response["results"]
   		petitions
	end

	def self.get_one_petition(petition_id)
    	response = RestClient.get "https://api.whitehouse.gov/v1/petitions/#{petition_id}.json"
    	parsed_response = JSON.parse(response)
    	petition = parsed_response["results"][0]
    	petition
	end
end
