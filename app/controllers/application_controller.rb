require './config/environment'
require './app/models/tweet'

class ApplicationController <
	Sinatra::Base

configure do 
	set :public_folder, 'public'
	set :views, 'app/views'
	end

	get '/' do 
		"Welcome to Fwitter"
		
		@tweets = Tweet.all_messages


		erb :tweets

	end

	post '/tweet' do
		# puts params
		# binding.pry
		new_tweet = Tweet.new(params[:user], params[:message])
		redirect ('/')
	end	


end