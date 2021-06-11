RSpec.describe PokeFacade, type: :facade do
  subject(:facade) { described_class.new }

  before do
    WebMock.stub_request(:get, /pokeapi.co/).to_return(body: '{}', status: 200)
    allow(service).to receive(:facade_result).and_return(body)
  end
  describe  do

  end
end
