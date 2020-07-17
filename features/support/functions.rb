def curl_http_url_return_http_code(check_url)
  url = URI.parse(check_url)
  req = Net::HTTP.new(url.host, url.port)
  if url.path == ""
    url.path = "/"
  end
  req.use_ssl = true
  res = req.request_head(url.path)
  return res.code
end
