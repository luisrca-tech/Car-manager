class HomeController < ApplicationController
  def index
    @all_cars = Car.all
   
    @available_cars = Car.where(is_selling: true)

    @car = Car.new
  end
end
