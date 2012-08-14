require 'sinatra'
require 'sinatra/base'

class Lessons < Sinatra::Base

  configure do
    set :markdown, :layout_engine => :erb
    set :static, true
  end

  get '/' do
    markdown :index
  end

  get '/week/1' do
    markdown :one
  end

  get '/week/2' do
    markdown :two
  end

  get '/week/3' do
    markdown :three
  end

end
