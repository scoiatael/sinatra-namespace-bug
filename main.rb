require 'sinatra'
require 'sinatra/namespace'
require 'json'

namespace '/1' do
  before do
    json_params = begin
                    JSON.parse(request.body.read.to_s)
                  rescue
                    {}
                  end
    params.merge! json_params
  end

  post '/?' do
    params[:a].to_s
  end
end
