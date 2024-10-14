URL_PATTERN = /(?<scheme>https?):\/\/(?<subdomain>\w+)\.(?<domain>\w+)\.(?<tld>\w+)\/?(?<path>(\w+\/?)*)\??(?<query>(\w+=\w+&?)*)/

def url_parser(url)
  match_data = url.match(URL_PATTERN)

  {
    scheme: match_data[:scheme],
    subdomain: match_data[:subdomain],
    domain: match_data[:domain],
    top_level_domain: match_data[:tld],
    path: match_data[:path].split('/'),
    params: match_data[:query].split('&').map { |e| e.split('=') }.to_h
  }
end