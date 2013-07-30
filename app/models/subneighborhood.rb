class Subneighborhood < ActiveRecord::Base
	belongs_to :neighborhood
	has_many :wsublocations
	has_many :wishes, through: :wsublocations
	has_many :properties

end
