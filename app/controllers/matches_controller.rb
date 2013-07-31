class MatchesController < ApplicationController

  before_filter do
    params[:match] &&= wish_params
  end
  load_and_authorize_resource
  respond_to :html, :json

	def index
		@property = Property.find(params[:property_id])
	  @matches = @property.insert_matches
	  respond_with(@matches)
	end

  def match_params
    params.require(:match).permit!
  end


end
