# frozen_string_literal: true

class Api::V1::GeographicIconsController < ApplicationController
  def index
    @geographic_icons = GeographicIcon.all
    render json: { data: @geographic_icons }
  end

  def show
    @geographic_icon = GeographicIcons::Show.call(id: params[:id])
    render json: { data: @geographic_icon }
  end

  def create
    @geographic_icon = GeographicIcons::Create.call(set_geographic_icon_params)
    render json: { data: @geographic_icon }, status: :created
  end

  def update
    @geographic_icon = GeographicIcons::Update.call(set_geographic_icon_params.merge(id: params[:id]))
    render json: { data: @geographic_icon }, status: :created
  end

  def destroy
    GeographicIcons::Destroy.call(id: params[:id])
    head :no_content
  end

  private

  def set_geographic_icon_params
    params.require(:geographic_icon)
          .permit(:denomination, :height, :history, :date_of_creation, :city_id)
  end
end
