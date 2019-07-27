require 'sinatra/base'
require 'sinatra/json'

class SinDice < Sinatra::Base
  get '/' do
    json hello: 'world'
  end
end
