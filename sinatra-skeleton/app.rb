require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'erb'

set :database, {adapter: 'sqlite3', database: 'test.db'}

get '/' do
    'Hello World'
end
