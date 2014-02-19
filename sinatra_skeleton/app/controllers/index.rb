get '/' do
  erb :index
end

post '/urls' do
  @short_url = ShortUrl.create(longform: params[:longform])

  erb :confirmation
end
