require 'batch_request_client/version'
require 'batch_request_client/batch_util'

require 'uri'
require 'rest-client'
require 'json'

module BatchRequestClient
  extend BatchUtil

  def self.create(array_objects, url, mode = nil)
    uri = URI.parse(url)
    batch_url = get_batch_url(uri, mode)
    payload = create_payload(array_objects, 'POST', uri.path)
    response = RestClient.post(batch_url, payload, headers)
    JSON.parse(response)['responses']['response']
  end

  def update
    raise NotImplementedError
  end

  def delete
    raise NotImplementedError
  end
end
