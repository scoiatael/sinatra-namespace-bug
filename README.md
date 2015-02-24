# sinatra-namespace-bug
```
namespace '/v1' do
  before do
    params[:a] = 123
  end

  get '/?' do
    params[:a].to_s
  end
end
```

`get '/v1/'` should return `"123"`, returns `""`.

It seems `params` are cleared between `before` and `get` hooks are invoked.
