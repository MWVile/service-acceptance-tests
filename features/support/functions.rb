# frozen_string_literal: true

def http_get_response_code(check_url)
  url = URI.parse(check_url)
  print "Making GET request for #{url}"
  req = Net::HTTP.new(url.host, url.port)
  url.path = '/' if url.path == ''
  req.use_ssl = true if url.scheme == 'https'
  req.verify_mode = OpenSSL::SSL::VERIFY_NONE if url.scheme == 'https'
  res = req.request_get(url.path)
  res.code
end
