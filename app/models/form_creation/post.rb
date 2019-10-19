module FormCreation
  class Post < ApplicationRecord
  	validates :title, presence: true
  	validates :description, presence: true
  	validates :created_by, presence: true

   #Export xls sheet 
  	def self.to_csv(options = {})
    	CSV.generate(options) do |csv|
      	csv << column_names
      	all.each do |post|
	        csv << post.attributes.values_at(*column_names)
  	    end
    	end
  	end
  end
end	