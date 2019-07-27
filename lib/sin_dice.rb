require 'sinatra/base'
require 'sinatra/json'

class SinDice < Sinatra::Base
  set :bind, '0.0.0.0'

  get '/' do
    json hello: 'world'
  end
end
