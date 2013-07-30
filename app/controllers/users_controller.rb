class UsersController < ApplicationController

	load_and_authorize_resource
	respond_to :html, :json

end
