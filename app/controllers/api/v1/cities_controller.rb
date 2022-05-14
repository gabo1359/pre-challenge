# frozen_string_literal: true

class Api::V1::CitiesController < ApplicationController
  def index
    @cities = City.all
    render json: @cities
  end

  def show
    @city = Cities::Show.call(id: params[:id])
    render json: @city
  end

  def create
    @city = Cities::Create.call(set_city_params)
    render json: { data: @city }, status: :created
  end

  def update
    @city = Cities::Update.call(set_city_params.merge(id: params[:id]))
    render json: { data: @city }, status: :created
  end

  def destroy
    Cities::Destroy.call(id: params[:id])
    head :no_content
  end

  private

  def set_city_params
    params.require(:city).permit(:denomination, :population, :land_area, :country_id)
  end
end
