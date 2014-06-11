require 'rack/contrib/not_found'
require 'rack/contrib/try_static'
require 'rack/rewrite'

use Rack::Deflater

# redirect (permanently) old urls from press and such
use Rack::Rewrite do
  r301 '/index.php', '/'
  r301 '/products.php', '/fulcrum'
  r301 '/our-company/news', 'http://blog.federatedsample.com'
  r301 '/our-company/leadership', '/about'
  r301 '/careers.php', '/careers'
  r301 '/blog.html', 'http://blog.federatedsample.com'
  r301 '/our-technology', '/fulcrum'
  r301 '/our-company', '/about'
  r301 '/bidbetter', 'http://info.federatedsample.com/bid-manager-demo'
end

use Rack::TryStatic,
  root: "_site",
  urls: %w[/],
  try: ['.html', 'index.html', '/index.html'],
  header_rules: [
    [["txt"],   {'Content-Type' => 'text/plain; charset=utf-8'}],
    [["xml"],   {'Content-Type' => 'application/xml'}],
    [["html"],  {'Content-Type' => 'text/html; charset=utf-8', 'Cache-Control' => 'public, max-age=0'}],
    [["css"],   {'Content-Type' => 'text/css'}],
    [["js"],    {'Content-Type' => 'text/javascript'}],
    [["png"],   {'Content-Type' => 'image/png'}],
    [["jpg"],   {'Content-Type' => 'image/jpg'}],
    [["woff"],  {'Content-Type' => 'application/font-woff'}],
    [["eot"],   {'Content-Type' => 'application/vnd.ms-fontobject'}],
    [["ttf"],   {'Content-Type' => 'application/x-font-ttf'}],
    [["svg"],   {'Content-Type' => 'image/svg+xml'}],
    [["pdf"],   {'Content-Type' => 'application/pdf'}],
    ["/assets", {'Cache-Control' => 'public, max-age=31536000'}]
  ]

run Rack::NotFound.new('_site/404.html')
