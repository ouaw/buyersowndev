class Property < ActiveRecord::Base
	belongs_to :user
	has_many :matches
	belongs_to :neighborhood
	belongs_to :subneighborhood
	has_many :pschoolcatchments
	has_many :schools, through: :pschoolcatchments
	has_many :matches
	has_many :wishes, through: :matches

	has_attached_file :photo, styles: {:small => "300x300>", :thumbnail => "150x150"},
													default_url: ActionController::Base.helpers.asset_path('default_small.jpg')
													# ,	url: "/assets/properties/:id/:style/:basename.:extension"
													# ,	path: ":rails_root/public/assets/properties/:id/:style/:basename.:extension"

	
end
