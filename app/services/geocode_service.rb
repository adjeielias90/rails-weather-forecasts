require 'ostruct'

class GeocodeService 
  def self.call(address)
    response = Geocoder.search(address)
    raise IOError, "Geocoder error" if response.nil? || response.empty?

    data = response.first.data
    raise IOError, "Geocoder data error" unless data
    raise IOError, "Geocoder latitude is missing" unless data["lat"]
    raise IOError, "Geocoder longitude is missing" unless data["lon"]
    raise IOError, "Geocoder address is missing" unless data["address"]

    address_info = data["address"]
    raise IOError, "Geocoder country code is missing" unless address_info["country_code"]
    raise IOError, "Geocoder postal code is missing" unless address_info["postcode"]

    OpenStruct.new(
      latitude: data["lat"].to_f,
      longitude: data["lon"].to_f,
      country_code: address_info["country_code"],
      postal_code: address_info["postcode"]
    )
  end
end
