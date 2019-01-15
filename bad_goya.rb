require 'rubygems'
require 'cgi'
cgi = CGI.new

# データを受け取った後、HTMLの形式でレスポンス（反応）を返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['bad_goya']

  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>悪いゴーヤの情報です。</p>
      文字列：#{get}
    </body>
  </html>"
}
