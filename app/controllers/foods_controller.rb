class FoodsController < ApplicationController
	def index
		@foods = Food.all
	end

	def show
		@foods = Food.find(params[:id])
	end

	def new
		@foods = Food.new
	end

	def create
		@foods = Food.create(food_params)
		redirect_to food_path(@foods)
	end

	def edit
		@foods = Food.find(params[:id])
	end

	def update
		@foods = Food.find(params[:id])
		@foods.update(food_params)
		redirect_to food_path(@foods)
	end


	def destroy
		@foods = Food.find(params[:id])
		@foods.destroy
		redirect_to foods_path
	end

	private
	def food_params
		params.require(:food).permit(:name)
	end
end
