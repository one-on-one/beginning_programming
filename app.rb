require 'sinatra'
require 'sinatra/base'
require 'redcarpet'

class Lessons < Sinatra::Base

  latest_week = 5
  is_prod = Sinatra::Base.environment =~ /prod/

  configure do
    set :markdown, :layout_engine => :erb
    set :static, true
  end

  get '/' do
    markdown :index
  end

  get '/not-yet' do
    markdown :not_yet, :layout => :empty
  end

  get '/week/1' do
    if is_prod && latest_week < 1
      redirect '/not-yet'
    else
      markdown :one
    end
  end

  get '/week/2' do
    if is_prod && latest_week < 2
      redirect '/not-yet'
    else
      markdown :two
    end
  end

  get '/week/3' do
    if is_prod && latest_week < 3
      redirect '/not-yet'
    else
      markdown :three
    end
  end

  get '/week/4' do
    if is_prod && latest_week < 4
      redirect '/not-yet'
    else
      markdown :four
    end
  end

  get '/week/5' do
    if is_prod && latest_week < 5
      redirect '/not-yet'
    else
      markdown :five
    end
  end

  get '/week/6' do
    if is_prod && latest_week < 6
      redirect '/not-yet'
    else
      markdown :six
    end
  end

  get '/week/7' do
    if is_prod && latest_week < 7
      redirect '/not-yet'
    else
      markdown :seven
    end
  end

  get '/week/8' do
    if is_prod && latest_week < 8
      redirect '/not-yet'
    else
      markdown :eight
    end
  end

  get '/week/9' do
    if is_prod && latest_week < 9
      redirect '/not-yet'
    else
      markdown :nine
    end
  end

  get '/week/10' do
    if is_prod && latest_week < 10
      redirect '/not-yet'
    else
      markdown :ten
    end
  end

end
