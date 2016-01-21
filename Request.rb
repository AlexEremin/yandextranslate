require 'net/http'
require 'json'
require_relative "Connect"

URL = 'https://translate.yandex.net/api/v1.5/tr.json/'

class Request
  	
  def translate(key, text, lang, format='plain', options = 1)
    request ="#{URL}translate?key=#{key}&text=#{text}&lang=#{lang}&format=#{format}&options=#{options} "
    res = Connect.new
    puts(res.connect(request))
  end

  def detect(key, text)
    request ="#{URL}detect?key=#{key}&text=#{text}"
    res = Connect.new
    puts(res.connect(request))
  end

  def langs(key, ui)
  	request ="#{URL}getLangs?key=#{key}&ui=#{ui}"
  	res = Connect.new
    puts(res.connect(request))
  end

end
Key = 'trnsl.1.1.20151227T085528Z.a14efb402b71cae3.d511f476e29f140e71a022b3b48b202b7720ef0e'
xyi = Request.new
xyi.translate(Key, 'кошка', 'ja')
#xyi.langs(Key, 'ja')
xyi.detect(Key, 'dog')