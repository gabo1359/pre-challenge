# frozen_string_literal: true

class ApplicationController < ActionController::API
  include RackSessionFixController
  before_action :authenticate_user!
end
