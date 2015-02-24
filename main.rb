require 'sinatra'
require 'sinatra/namespace'

namespace '/v1' do
  before do
    params[:a] = 123
  end

  get '/?' do
    params[:a].to_s
  end
end
