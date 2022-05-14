# frozen_string_literal: true

class GeographicIcons::Update < BaseService
    attr_reader :params, :id
  
    def initialize(args)
      @params = args.except(:id)
      @id = args[:id]
    end
  
    def call
      geographic_icon = GeographicIcon.find(id)
      if geographic_icon.update(params)
        geographic_icon
      else
        geographic_icon.errors
      end
    end
  end
  