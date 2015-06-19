class WelcomeController < ApplicationController
	def index

	  	# first off we need to define states,
	  	# to power our drop-down select in the form
	  	@states = %w(HI AK CA OR WA ID UT NV AZ NM CO WY MT ND SD NB KS OK TX LA AR MO IA MN WI IL IN MI OH KY TN MS AL GA FL SC NC VA WV DE MD PA NY NJ CT RI MA VT NH ME DC)
	  	# get 'em in alphabetical order
	  	@states.sort!
	  
	  	if  params[:city] != nil

	  		if params[:city].include?(" ")
	  			params[:city].gsub! " ", "_"
	  		end

	      	response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/#{params[:state]}/#{params[:city]}.json")

			@location = response['location']['city']
			@temp_f = response['current_observation']['temp_f']
			@temp_c = response['current_observation'] ['temp_c']
			@weather_icon =response['current_observation']['icon_url']
			@weather_words=response['current_observation']['weather']
			@forecast_url=response['current_observation'] [ 'forecast_url']
			@real_feel=response['current_observation'][ 'feelslike_f']
		end

	end

  def test

  	response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/GA/Atlanta.json")
        # your API key is stored in the variable ENV['wunderground_api_key']
        # hard-code in your location!

        # save data as instance variables:
     @location = response['location']['city']
      @temp_f = response['current_observation']['temp_f']
      @temp_c = response['current_observation']['temp_c']
      @weather_icon = response['current_observation']['icon_url']
      @weather_words = response['current_observation']['weather']
      @forecast_link = response['current_observation']['forecast_url']
      @real_feel = response['current_observation']['feelslike_f']


  end

end
