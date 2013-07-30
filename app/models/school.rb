class School < ActiveRecord::Base
	has_many :wschoolcatchments
	has_many :wishes, through: :wschoolcatchments

	def self.select
  	School.order("name").map { |s| [s.description, s.id] }
	end

end
