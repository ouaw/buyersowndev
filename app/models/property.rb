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

	def insert_matches
    # Find the wishes that has not been matched already
    @matched_wish_ids = Match.where(property_id: id).pluck(:wish_id)
    if @matched_wish_ids == []
      @wishes_to_be_matched = Wish.all
    else
      @wishes_to_be_matched = Wish.all - Wish.where(id: @matched_wish_ids)
    end
    # for each wish not been matched with the property, calculate the score
    # and insert into matches table
		@wishes_to_be_matched.each do |wish|  
      score = calc_score(id, wish.id)
      match = Match.new
      match.property_id = id
      match.wish_id = wish.id
      match.score = score
      match.created_at = Time.now
      match.updated_at = match.created_at
      match.save
		end
		# return @matched_wish_ids
    return Match.where(property_id: id).order("score DESC")
	end

  def calc_score(property_id, wish_id)
    return rand(0..100)
  end	
end
