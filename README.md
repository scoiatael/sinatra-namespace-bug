# sinatra-namespace-bug
`RestClient.post 'localhost:9292/1/', { 'a' => 123 }.to_json, 'content-type' => :json`
should return `123`, returns `{}`
