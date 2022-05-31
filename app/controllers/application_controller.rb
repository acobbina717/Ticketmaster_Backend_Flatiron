class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/tickets' do 
    tickets = Ticket.all
    tickets.to_json
  end

  get '/tickets/:id' do
    ticket = Ticket.find(params[:id])
    ticket.to_json
  end

  get '/events' do
    events = Event.all
    events.to_json
  end

  get '/events/:id' do
    event = Event.find(params[:id])
    event.to_json
  end

  post '/events' do 
    event = Event.create(
      name:params[:name],
      location:params[:location],
      image_url:params[:image_url],
      ticket_count:params[:ticket_count]
    )
  end

  delete '/events/:id' do
    event = Event.find(params[:id])
    event.destroy
    event.to_json
  end

  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end

  post '/reviews' do
    review = Review.create(comment:params[:comment],rating:params[:rating])
    review.to_json
  end

  delete '/reviews/:id' do 
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
