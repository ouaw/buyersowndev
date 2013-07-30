class Wish < ActiveRecord::Base
	belongs_to :user
	has_many :wlocations
	has_many :neighborhoods, through: :wlocations
	has_many :wsublocations
	has_many :subneighborhoods, through: :wsublocations
	has_many :wschoolcatchments
	has_many :schools, through: :wschoolcatchments
	has_many :matches
	has_many :properties, through: :matches
end
