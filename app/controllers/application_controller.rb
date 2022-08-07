class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/shows" do
    shows = Show.all 
    shows.to_json
  end

  post '/shows' do
    show = Show.create(
      title: params[:title],
      image: params[:image],
      num_of_seasons: params[:num_of_seasons]
    )
    show.to_json
  end

end
