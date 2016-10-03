class WeatherApiDemosController < ApplicationController

  def index
    @response = Weather.lookup(12761353, Weather::Units::FAHRENHEIT)
  end

end
