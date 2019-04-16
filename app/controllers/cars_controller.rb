class CarsController < ApplicationController
	before_action :find_car, only: [:show, :edit, :update, :destroy]

	def index
		if params[:category].blank?
			@cars = Car.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@cars = Car.where(category_id: @category_id).order("created_at DESC")
		end
	end

	def show
	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.new(cars_params)

		if @car.save
			redirect_to @car
		else
			render "New"
		end
	end

	def edit
	end

	def update
		if @car.update(cars_params)
			redirect_to @car
		else
			render "Edit"
		end
	end

	def destroy
		@car.destroy
		redirect_to root_path
	end

	private

	def cars_params
		params.require(:car).permit(:title, :description, :owner, :price, :category_id)
	end

	def find_car
		@car = Car.find(params[:id])
	end
end