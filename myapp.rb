  require 'sinatra'
  require 'erb'
  require 'rubygems'
  require 'json'


  class MyApp < Sinatra::Base


	get '/' do
		content_type :json
		roulette = rand(38)-1
		roulette = '00' if (roulette == -1)

		{:winning_number => roulette.to_s}.to_json		
	end


  end
