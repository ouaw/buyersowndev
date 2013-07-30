class WlocationsController < ApplicationController
  before_filter do
	  params[:wlocation] &&= wlocation_params
  end
  load_and_authorize_resource
  respond_to :html, :json

	def new
		@wlocation = Wlocation.new
		respond_with (@wlocation)    
	end

	def create
		@wlocation = Wlocation.create(wlocation_params)
    respond_with (@wlocation)    
	end

	def wlocation_params
		params.require(:wlocation).permit!
	end

end
