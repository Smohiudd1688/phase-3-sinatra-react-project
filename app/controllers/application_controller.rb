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

  delete '/shows/:id' do
    show = Show.find(params[:id])
    show.destroy
    show.to_json
  end 

  get "/shows/:id/reviews" do
    show = Show.find(params[:id])
    reviews = show.reviews 
    reviews.to_json
  end

  post "/shows/:id/reviews" do
    review = Review.create(
      rating: params[:rating],
      review: params[:review],
      name: params[:name],
      show_id: params[:id]
    )
    review.to_json
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id]);
    review.destroy
    review.to_json
  end


end
