get '/' do
  erb :index
end

post '/urls' do
  ShortUrl.create(longform: params[:longform])

  erb :confirmation
end
