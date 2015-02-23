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
    p params
    p json_params
    params.merge! json_params
  end

  post '/?' do
    p request
    p params
    params[:a].to_s
  end
end
