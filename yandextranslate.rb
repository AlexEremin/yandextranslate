require 'net/http'
require 'json'
require_relative "Request.rb"
require_relative "Connect.rb"
require_relative "Result.rb"

class Translator	

  URL = 'https://translate.yandex.net/api/v1.5/tr.json/'

  def initialize()
    @con = Connect.new
    @req = Request.new
    @res = Result.new
  end

  def detect(key, text)
    url = @req.detect(key,text)
    get = @con.connect(url)
    puts(@res.result(get))
  end

  def translat(key, text, lang)
    url = @req.translate(key,text,lang)
    get = @con.connect(url)
    puts(@res.result(get))
  end

  def get_langs(key, ui)
    url = @req.langs(key,ui)
    get = @con.connect(url)
    puts(@res.result(get))
  end 

end