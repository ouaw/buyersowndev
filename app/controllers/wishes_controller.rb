class WishesController < ApplicationController

  before_filter do
    params[:wish] &&= wish_params
  end
  load_and_authorize_resource
  # load_and_authorize_resource except: [:create]
	respond_to :html, :json

	def index
		if current_user.role == 'admin'
			@wishes = Wish.all
			# @wishes = Wish.order(sort_column + ' ' + sort_direction)
		else
			@wishes = current_user.wishes.all
			# @wishes = current_user.wishes.order(sort_column + ' ' + sort_direction)
		end

		respond_with (@wishes)
	end

	def show
    respond_with (@wish)    
	end

	def new
    @wish = Wish.new
    respond_with (@wish)    
	end

	def create
    @wish = current_user.wishes.create(wish_params)
    # respond_with (@wish)    
    respond_with (@wish)    
	end

	def edit
    respond_with (@wish)    
	end

	def update
    # respond_with (@wish)    
    @wish.update_attributes(params[:wish])
    respond_with (@wish)        
	end

	def destroy
    @wish.destroy
    respond_with (@wish)    
	end

	# def sort_direction
 #  	%w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
	# end

	# private

	# def sort_column
 #  	Wish.column_names.include?(params[:sort]) ? params[:sort] : "description"
	# end

  def wish_params
    # params.require(:wish).permit(:school_id, :description, :neighborhood, :sub_neighborhood, :property_type, :minimum_bedrooms, :minimum_bathrooms, :minimum_total_floor_area, :minimum_lot_size, :maximum_price, :work_address_unit_number_1, :work_address_street_number_1, :work_address_street_name_1, :work_address_street_type_1, :work_address_postal_code_1, :work_address_city_1, :work_address_province_1, :work_address_country_1, :max_distance_to_work_address_1, :work_address_preferred_transportation_method_1, :max_duration_to_work_1, :work_address_unit_number_2, :work_address_street_number_2, :work_address_street_name_2, :work_address_street_type_2, :work_address_postal_code_2, :work_address_city_2, :work_address_province_2, :work_address_country_2, :max_distance_to_work_address_2, :work_address_preferred_transportation_method_2, :max_duration_to_work_2, :flexible_neighborhood, :flexible_property_type, :flexible_minimum_bedrooms, :flexible_minimum_bathrooms, :flexible_minimum_total_floor_area, :flexible_minimum_lot_size, :flexible_maximum_price, :flexible_school, :flexible_work_address, :weight_neighborhood, :weight_property_type, :weight_minimum_bedrooms, :weight_minimum_bathrooms, :weight_minimum_total_floor_area, :weight_minimum_lot_size, :weight_maximum_price, :weight_school, :weight_work_address, :sort_column, :sort_direction)
    # params.require(:wish).permit(:school_id, :description, :neighborhood, :sub_neighborhood, :property_type, :minimum_bedrooms, :minimum_bathrooms, :minimum_total_floor_area, :minimum_lot_size, :maximum_price, :work_address_unit_number_1, :work_address_street_number_1, :work_address_street_name_1, :work_address_street_type_1, :work_address_postal_code_1, :work_address_city_1, :work_address_province_1, :work_address_country_1, :max_distance_to_work_address_1, :work_address_preferred_transportation_method_1, :max_duration_to_work_1, :work_address_unit_number_2, :work_address_street_number_2, :work_address_street_name_2, :work_address_street_type_2, :work_address_postal_code_2, :work_address_city_2, :work_address_province_2, :work_address_country_2, :max_distance_to_work_address_2, :work_address_preferred_transportation_method_2, :max_duration_to_work_2, :flexible_neighborhood, :flexible_property_type, :flexible_minimum_bedrooms, :flexible_minimum_bathrooms, :flexible_minimum_total_floor_area, :flexible_minimum_lot_size, :flexible_maximum_price, :flexible_school, :flexible_work_address, :weight_neighborhood, :weight_property_type, :weight_minimum_bedrooms, :weight_minimum_bathrooms, :weight_minimum_total_floor_area, :weight_minimum_lot_size, :weight_maximum_price, :weight_school, :weight_work_address, :neighborhood_ids, :subneighborhood_ids, :school_ids)
    params.require(:wish).permit!
  end

end
