class PropertiesController < ApplicationController

  before_filter do
    params[:property] &&= property_params
  end
	load_and_authorize_resource
	respond_to :html, :json

	def index
		if current_user.role == 'admin'
			@properties = Property.all
		else
			@properties = current_user.properties.all
		end
    respond_with (@properties)
	end

	def show
    respond_with (@properties)
	end

	def new
    @property = Property.new
    respond_with (@property)    
	end

	def create
    @property = current_user.properties.create(property_params)
    respond_with (@property)    
	end

	def edit
    respond_with (@property)    
	end

	def update
		@property.update_attributes(params[:property])
    respond_with (@property)    
	end

	def destroy
		@property.destroy
    respond_with (@property)    
	end

	def property_params
    # params.require(:wish).permit(:address_unit_number_1, :address_street_number_1, :address_street_name_1, :address_street_type_1, :address_postal_code_1, :address_city_1, :address_province_1, :address_country_1, :neighborhood_id, :subneighborhood_id, :property_type, :bedrooms, :bathrooms, :total_floor_area, :lot_size, :price)
		params.require(:property).permit!
	end

end
