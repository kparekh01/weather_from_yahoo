Rails.application.routes.draw do

  get '/weather' => 'weathers#index'
  get '/blah' => 'weathers#blah'

  get '/weatherdemo' => 'weather_api_demos#index'
end
