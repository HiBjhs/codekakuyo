require 'webrick'
config = {
  :Port => 8080,
  :DocumentRoot => '.'
}
server = WEBrick::HTTPServer.new( config )
server.mount_proc "/" do |req, res|
  res.body = <<EOF
<!DOCTYPE html>
<html lang="ja">
<head><meta charset="utf-8"/></head>
<body>
<form action="/calc" method="post">
<p>数値1<input type="text" name="v1"></p>
<p>数値2<input type="text" name="v2"></p>
<input type="submit" value="計算">
</form>
</body>
</html>
EOF
end

server.mount_proc "/calc" do |req, res|
  res.body = <<~EOF
<!DOCTYPE html>
<html lang="ja">
<head><meta charset="utf-8"/></head>
<body>
#{req.query["v1"]} +
#{req.query["v2"]} =
#{req.query["v1"].to_i + req.query["v2"].to_i}
</body>
</html>
EOF
end

trap(:INT) do
server.shutdown
end
server.start
