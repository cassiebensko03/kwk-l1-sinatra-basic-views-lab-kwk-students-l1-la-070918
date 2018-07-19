class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end


  get "/" do
    erb :index
  end
  post '/' do
  	@the_lane = get_lane_confirmation
  	@the_user = [:user]
  	return erb :results
  	
  end
end
