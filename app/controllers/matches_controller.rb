class MatchesController < ApplicationController

  before_filter do
    params[:match] &&= wish_params
  end
  load_and_authorize_resource

	def index
	end

  def match_params
    params.require(:match).permit!
  end

end
