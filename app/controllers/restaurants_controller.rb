class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurants = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurants = Restaurant.create(rest_params)
		redirect_to restaurant_path(@restaurants)
	end

	def edit
		@restaurants = Restaurant.find(params[:id])
	end

	def update
		@restaurants = Restaurant.find(params[:id])
		@restaurants.update(rest_params)
		redirect_to restaurant_path(@restaurants)
	end

	def destroy
		@restaurants = Restaurant.find(params[:id])
		@restaurants.destroy
		redirect_to restaurants_path
	end

	private
	def rest_params
		params.require(:restaurant).permit(:name, :location, :user_id, :food_id)
	end
end
