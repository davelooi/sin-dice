require './lib/sin_dice'

describe SinDice do
  include Rack::Test::Methods
  def app() described_class end

  describe '/' do
    it 'respond with json' do
      get '/'
      expect(last_response).to be_ok
      expect(JSON.parse(last_response.body)).to include('hello' => 'world')
    end
  end
end
