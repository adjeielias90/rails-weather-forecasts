Geocoder.configure(
  lookup: :location_iq,
  api_key: Rails.application.credentials.location_iq_api_key,
  use_https: true,
  timeout: 5,
  units: :km,
  language: :en
)
