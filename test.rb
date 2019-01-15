require 'webrick'

server = WEBrick::HTTPServer.new({
  DocumentRoot:   'https://shin-ruby-shin5446.c9users.io',
  BindAddress:    "0.0.0.0",
  Port:           8080,
  CGIInterpreter: '/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby'
})

server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
# 下記がトップページです。
server.mount('//', WEBrick::HTTPServlet::FileHandler, 'goya.html')

server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')

server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')

server.mount('/everyone.cgi', WEBrick::HTTPServlet::CGIHandler, 'everyone.rb')

server.mount('/bad_goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'bad_goya.rb')

server.start