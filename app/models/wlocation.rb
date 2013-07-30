class Wlocation < ActiveRecord::Base
	belongs_to :wish
	belongs_to :neighborhood
end
