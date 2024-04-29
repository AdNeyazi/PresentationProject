# app/services/weather_service.rb
class WeatherService
  include HTTParty
  base_uri 'https://api.openweathermap.org/data/2.5'

  def self.fetch_weather(search_weather_for)
    response = get("/weather?q=#{search_weather_for}&appid=#{ENV['OPENWEATHERMAP_API_KEY']}&units=metric")

    if response.success?
      parsed_response = JSON.parse(response.body)

      {
        name: parsed_response['name'],
        coord: parsed_response['coord'],
        temp: parsed_response['main']['temp'],
        cod: parsed_response['cod']
      }
    else
      nil
    end
  end
end