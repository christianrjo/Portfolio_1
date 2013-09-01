require 'sinatra'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

# get '/notes' do

# 	erb :read_note
# end
post '/notes' do
	@notes = Note.create(title: params[:title], content: params[:content])
	@content = @notes.content
	@title = @notes.title
	@id = @notes.id

erb :read_note
	#if form is empty, how to force user to go back to index
# redirect '/notes'
end

get	'/notes' do
	erb :read_note
end

post '/update' do

redirect '/notes'
end



