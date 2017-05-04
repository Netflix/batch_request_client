require 'test_helper'

describe BatchRequestClient::BatchUtil do
  before do
    @util = Object.new
    @util.extend(BatchRequestClient::BatchUtil)
  end

  describe 'padded_response' do
    let(:requests) { [{ key: 'value' }] }
    let(:response) { @util.padded_response(requests) }

    it 'returns hash with requests array' do
      assert_instance_of Array, response[:requests]
    end
  end

  describe 'headers' do
    it 'has default headers' do
      assert_equal 'application/json', @util.headers['Content-Type']
    end
  end
end
