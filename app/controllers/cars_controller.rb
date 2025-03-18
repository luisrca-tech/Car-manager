class CarsController < ApplicationController
  def new
    @car = Car.new(is_selling: false)
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to root_path, notice: 'Carro cadastrado com sucesso!'
    else
      flash.now[:alert] = 'Erro ao cadastrar o carro:'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :color, :is_selling)
  end
end
