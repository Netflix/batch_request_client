module BatchRequestClient
  module BatchUtil

    def get_batch_url(uri, mode)
      base_url = "#{uri.scheme}://#{uri.host}:#{uri.port}"
      base_url = "#{uri.scheme}://#{uri.host}" if uri.scheme == 'https'
      batch_url = "#{base_url}/api/v1/batch_sequential"
      batch_url = "#{base_url}/api/v1/batch_parallel" if mode == :parallel
      batch_url
    end

    def create_payload(array_objects, method, url)
      requests = []
      array_objects.each do |item|
        requests << request_signature(item, method, url)
      end
      padded_response(requests).to_json
    end

    def request_signature(item, method, url)
      {
        "method": method,
        "url": "#{url}",
        "body": item
      }
    end

    def padded_response(requests)
      {
        "requests": requests
      }
    end

    def headers
      { 'Content-Type' => 'application/json' }
    end
  end
end
