require 'sinatra'

class StaticSite < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/thanks.html' do
    send_file('public/thanks.html')
  end
end
