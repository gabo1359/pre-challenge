# frozen_string_literal: true

class Api::V1::ContinentsController < ApplicationController
  def index
    @continents = Continent.all
    render json: { data: @continents }
  end

  def show
    @continent = Continents::Show.call(id: params[:id])
    render json: { data: @continent }
  end

  def create
    @continent = Continents::Create.call(set_continent_params)
    render json: { data: @continent }
  end

  def update
    @continent = Continents::Update.call(set_continent_params.merge(id: params[:id]))
    render json: { data: @continent }
  end

  def destroy
    Continents::Destroy.call(id: params[:id])
    head :no_content
  end

  private

  def set_continent_params
    params.require(:continent).permit(:denomination, :image)
  end
end
