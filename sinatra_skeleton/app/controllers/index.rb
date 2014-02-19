get '/' do
  erb :index
end

post '/urls' do
  @short_url = ShortUrl.create(longform: params[:longform])

  erb :confirmation
end

get '/:shortform' do
  @short_url = ShortUrl.where(shortform: params[:shortform]).first
  redirect "#{@short_url.longform}"
end
