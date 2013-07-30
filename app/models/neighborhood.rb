class Neighborhood < ActiveRecord::Base
	
	has_many :subneighborhoods

	has_many :wlocations
	has_many :wishes, through: :wlocations

	has_many :properties
	
	def self.select
  	Neighborhood.order("description").map { |s| [s.description, s.id] }
	end

end
