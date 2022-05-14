# frozen_string_literal: true

class Api::V1::GeographicIconsController < ApplicationController
  before_action :set_geographic_icon, except: [:index, :create, :update]

  def index
    @geographic_icons = GeographicIcon.all
    render json: @geographic_icons
  end

  def show
    render json: @geographic_icon
  end

  def create
    @geographic_icon = GeographicIcons::Create.call(set_geographic_icon_params)
    render json: @geographic_icon
  end

  def update
    @geographic_icon = GeographicIcons::Update.call(set_geographic_icon_params.merge(id: params[:id]))
    render json: @geographic_icon
  end

  def destroy
    @geographic_icon.destroy
    head :no_content
  end

  private

  def set_geographic_icon
    @geographic_icon = GeographicIcon.find(params[:id])
  end

  def set_geographic_icon_params
    params.require(:geographic_icon)
          .permit(:denomination, :height, :history, :date_of_creation, :city_id)
  end
end
