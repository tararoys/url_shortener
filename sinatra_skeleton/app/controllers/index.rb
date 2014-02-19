get '/' do
  erb :index
end

post '/urls' do
  @short_url = ShortUrl.create(longform: params[:longform])
  erb :confirmation
end

get '/:shortform' do
  @short_url = ShortUrl.where(shortform: params[:shortform]).first
  @short_url.click_counter += 1
  @short_url.save
  redirect "#{@short_url.longform}"
end
