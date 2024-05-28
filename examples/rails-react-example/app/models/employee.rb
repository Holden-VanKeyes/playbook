class Employee < ApplicationRecord
  require 'rest-client'
  has_many :tickets

  def self.get_sunset(id)
    employee = Employee.find(id)
    location_info = fetch_location_info(employee.city, employee.state)
    parsed_location = JSON.parse(location_info.body)
    lat = parsed_location['latt']
    lon = parsed_location['longt']

    sunset_info = fetch_sunset_info(lat, lon)
    parsed_sunset = JSON.parse(sunset_info.body)

    sunrise_str = parsed_sunset['results']['sunrise']
    sunset_str = parsed_sunset['results']['sunset']
    timezone = parsed_sunset['results']['timezone']

    percentage_passed = calculate_percentage_passed(sunrise_str, sunset_str, timezone)

    { sunrise_str:, sunset_str:, timezone:, percentage_passed: }
  end

  def self.get_avatar_url(id)
    employee = Employee.find(id)
    employee.avatar_url
  end

  def self.fetch_location_info(city, place)
    RestClient.get("https://geocode.xyz/#{city}-#{place}?json=1")
  end

  def self.fetch_sunset_info(lat, lon)
    RestClient.get("https://api.sunrisesunset.io/json?lat=#{lat}&lng=#{lon}")
  end

  def self.calculate_percentage_passed(sunrise_str, sunset_str, timezone)
    sunrise_datetime = DateTime.parse(sunrise_str).hour
    sunset_datetime = DateTime.parse(sunset_str).hour
    total_duration = (sunset_datetime - sunrise_datetime)
    current_time = Time.now.in_time_zone(timezone).hour
    time_passed = (current_time - sunrise_datetime)
    ((time_passed.to_f / total_duration) * 100).round(2)
  end
end
