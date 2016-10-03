class WeathersController < ApplicationController

  def index
    @temperature = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nyc%2C%20nyc%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body['query']['results']['channel']['item']['condition']['temp']
    @forecast = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nyc%2C%20nyc%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body['query']['results']['channel']['item']['forecast']
    @title = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nyc%2C%20nyc%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body['query']['results']['channel']['title']
  end

  def blah
    @temperature = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22' + params[:city] + '%2C%20' + params[:state] + '%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body['query']['results']['channel']['item']['condition']['temp']
    @forecast = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22' + params[:city] + '%2C%20' + params[:state] + '%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body['query']['results']['channel']['item']['forecast']
    @title = Unirest.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22' + params[:city] + '%2C%20' + params[:state] + '%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys').body['query']['results']['channel']['title']
    render 'index.html.erb'
  end
end
