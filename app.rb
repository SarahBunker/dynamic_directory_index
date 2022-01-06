require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
  puts "Public Directory"
  @files = Dir.glob("public/*.txt").map{|file| File.basename(file) }.sort
  @files.reverse! if params[:sort] == "desc"
  
  erb :index
end