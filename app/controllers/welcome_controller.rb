class WelcomeController < ApplicationController
  before_action :authenticate_media_house!

  def index
    @media_house = current_media_house
    validate_media_house_url!

  end

  private
    def validate_media_house_url!
      @media_house = current_media_house
      @path =   request.original_url.to_s.split("")[0...-1].join
      if @path == @media_house.url
      else
        redirect_to @media_house.url
      end
    end
end
