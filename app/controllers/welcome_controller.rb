class WelcomeController < ApplicationController
  before_action :authenticate_media_house!
  def index
    @media_house = current_media_house
  end
end
