# Weather forecaster app with Ruby on Rails 


## Scope

1. Use Ruby On Rails. 

2. Accept an address as input. 

3. Retrieve forecast data for the given address. This should include, at minimum, the current temperature. Bonus points: retrieve high/low and/or extended forecast.

4. Display the requested forecast details to the user.

5. Cache the forecast details for 30 minutes for all subsequent requests by zip codes. Display indicator in result is pulled from cache.


This app was developed on an Ubuntu 22.04 virtual machine.

## How This Works:

There are many ways we could get forecast data. For this exercise I will go by these steps:

* Convert the address to a latitude and longitude, by using the geocoder gem and the LocationIQ API available [here](https://my.locationiq.com/)

* Send the latitude and longitude to the OpenWeatherMap API available [here](https://openweathermap.com)

* Update weather information/show cached



## Set up Ruby, Rails
https://gorails.com/setup/ubuntu/22.04


### Install Rails

Install Ruby on Rails:

```sh
% gem install rails
```


### Install Google Chrome

Install Google Chrome for Ruby on Rails system tests:
https://www.xda-developers.com/how-install-chrome-ubuntu/


## Set up the app
```sh
% rails db:setup
```
```sh
% bundle install
```

Run Tests:

```sh
% bin/rails test:all
```



### Set LocationIQ API credentials

Edit Rails credentials:

```sh
EDITOR="code --wait"  bin/rails credentials:edit
```

Add your LocationIQ credentials by replacing these fake credentials with your real credentials:

```ruby
location_iq_api_key: your_api_key_here
```

## OpenWeather API

Sign up at <https://openweathermap.org>

* The process creates your API key.

Example:

* OpenWeather API key: 70a6c8131f03fe7a745b6b713ed9ebfd



### Set OpenWeather API credentials

Edit Rails credentials:

```sh
EDITOR="code --wait"  bin/rails credentials:edit
```

Add your OpenWeather credentials by replacing these fake credentials with your real credentials:

```ruby
openweather_api_key: 70a6c8131f03fe7a745b6b713ed9ebfd
```



### Enable the cache

Enable the Rails development cache, so a developer can see that the forecasts are cached as expected.


```sh
bin/rails dev:cache
```


## Using the app:

```sh
% bin/rails test
% bin/rails test:system
% bin/rails server -d
```






