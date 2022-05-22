# frozen_string_literal: true

class Api::V1::CountriesController < ApplicationController
  def index
    @countries = Countries::GetCountries.call(params)
    render json: { data: @countries }
  end

  def show
    @country = Countries::Show.call(id: params[:id])
    render json: { data: @country }
  end

  def create
    @country = Countries::Create.call(set_country_params)
    render json: { data: @country }
  end

  def update
    @country = Countries::Update.call(set_country_params.merge(id: params[:id]))
    render json: { data: @country }
  end

  def destroy
    Countries::Destroy.call(id: params[:id])
    head :no_content
  end

  private

  def set_country_params
    params.require(:country).permit(:denomination, :population, :land_area, :continent_id)
  end
end
