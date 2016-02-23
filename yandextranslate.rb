require 'net/http'
require 'json'
require_relative 'library/Request.rb'
require_relative 'library/Connect.rb'
require_relative 'library/Result.rb'

class Translator	
  
  def initialize()
    @req = Request.new
    @res = Result.new
  end

  def detect(key, text)
    request = @req.detect(key,text)
    test = @res.result(request)
  end

  def translate(key, text, lang)
    request = @req.translate(key, text, lang)
    @res.result(request)
  end

  def get_langs(key, ui)
    request = @req.langs(key,ui)
    @res.result(request)
  end 

end
Key = 'trnsl.1.1.20151227T085528Z.a14efb402b71cae3.d511f476e29f140e71a022b3b48b202b7720ef0e'
test = Translator.new
test.translate(Key, 'кошка', 'en')
#test.get_langs(Key, 'ja')
test.detect(Key, 'dog')