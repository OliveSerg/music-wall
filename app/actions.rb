# Homepage (Root path)
# get '/' do
#   erb :index
# end

get '/tracks' do
  @tracks = Tracks.all
  erb :'tracks/index'
end

get '/tracks/new' do
  @tracks = Tracks.all
  erb :'tracks/new'
end

post '/tracks' do
  @track = Tracks.new(
    song_title: params[:song_title],
    author: params[:author],
    url: params[:url]
  )
  if @track.save
    redirect '/tracks'
  else
    erb :'tracks/new'
  end
end
