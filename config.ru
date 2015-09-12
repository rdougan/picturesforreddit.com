use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

run Rack::URLMap.new(
  '/' => Rack::File.new('public/index.html'),
  '/help' => Rack::File.new('public/help.html')
)
