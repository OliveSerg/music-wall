# Homepage (Root path)
# get '/' do
#   erb :index
# end

get '/tracks' do
  @tracks = Tracks.all
  erb :'tacks/index'
end
