require_relative '../url_parser'

describe '#url_parser' do
  it 'returns a hash with the extracted URL parts when given "http://www.lewagon.com/"' do
    actual = url_parser("http://www.lewagon.com/")
    expect(actual).to match({
      scheme: "http",
      subdomain: "www",
      domain: "lewagon",
      top_level_domain: "com",
      path: [],
      params: {}
    })
  end

  it 'returns a hash with the extracted URL parts when given "https://www.rubular.jp"' do
    actual = url_parser("http://www.rubular.jp/")
    expect(actual).to match({
      scheme: "http",
      subdomain: "www",
      domain: "rubular",
      top_level_domain: "jp",
      path: [],
      params: {}
    })
  end

  it 'returns a hash with the extracted URL parts when given "https://www.lewagon.com/courses/apply"' do
    actual = url_parser("https://www.lewagon.com/courses/apply")
    expect(actual).to match({
      scheme: "https",
      subdomain: "www",
      domain: "lewagon",
      top_level_domain: "com",
      path: ["courses", "apply"],
      params: {}
    })
  end

  it 'returns a hash with the extracted URL parts when given "https://www.lewagon.com/berlin?search=currywurst"' do
    actual = url_parser("https://www.lewagon.com/berlin?search=currywurst")
    expect(actual).to match({
      scheme: "https",
      subdomain: "www",
      domain: "lewagon",
      top_level_domain: "com",
      path: ["berlin"],
      params: { "search" => "currywurst" }
    })
  end

  it 'returns a hash with the extracted URL parts when given "https://www.lewagon.com/london?bootcamp=web&season=autumn"' do
    actual = url_parser("https://www.lewagon.com/london?bootcamp=web&season=autumn")
    expect(actual).to match({
      scheme: "https",
      subdomain: "www",
      domain: "lewagon",
      top_level_domain: "com",
      path: ["london"],
      params: { "bootcamp" => "web", "season" => "autumn" }
    })
  end
end