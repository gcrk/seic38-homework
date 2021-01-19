require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'db.sqlite3'
)

# Optional bonus
ActiveRecord::Base.logger = Logger.new(STDERR)

class Instructor < ActiveRecord::Base
  belongs_to :center, :optional => true
end

class Center < ActiveRecord::Base
  has_many :intructors
end



get '/' do
  erb :home
end

get '/centers' do
  @centers = Center.all
  erb :centers_index
end
get '/pry' do
  @instructors = Instructor.all
  @centers = Center.all
  erb :pry
  binding.pry
end
#
# get '/diving/add' do
#   erb :diving_add
# end
#
# post '/diving' do
#   query = "INSERT INTO diving_center (name, country, city, map, website) VALUES ('#{params[:name]}', '#{params[:country]}', '#{params[:city]}', '#{params[:map]}', '#{params[:website]}')"
#   query_database query
#   redirect to "/diving"
# end
#
get '/center/:id' do
  @center = Center.find params[:id]
  erb :centers_show
end
#
# get '/diving/:id/edit' do
#   @diving_center = query_database "SELECT * FROM diving_center WHERE id=#{params[:id]}"
#   @diving_center = @diving_center.first
#   erb :diving_edit
# end
#
# post '/diving/:id' do
#   query = "UPDATE diving_center SET name='#{params[:name]}', country='#{params[:country]}', city='#{params[:city]}', map='#{params[:map]}', website='#{params[:website]}' WHERE id=#{params[:id]}"
#   query_database query
#   redirect to "/diving/#{params[:id]}"
# end
#
# get '/diving/:id/delete' do
#   query = "DELETE FROM diving_center WHERE id=#{params[:id]}"
#   query_database query
#   redirect to "/diving"
# end
#
# def query_database(sql_statement)
#   puts sql_statement
#   db = SQLite3::Database.new 'diving_db.sqlite3'
#   db.results_as_hash = true
#   results = db.execute sql_statement
#   db.close
#   results
# end
