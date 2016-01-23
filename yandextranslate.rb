require 'net/http'
require 'json'
require_relative "Request.rb"
require_relative "Connect.rb"
require_relative "Result.rb"

class Translator	

  URL = 'https://translate.yandex.net/api/v1.5/tr.json/'

  def initialization()
    #@con = Connect.new
    #@req = Request.new
    #@res = Result.new
  end

  def detect(key, text)
    con = Connect.new
    req = Request.new
    res = Result.new
    url = req.detect(key,text)
    get = con.connect(url)
    puts(res.result(get))
  end

  def translat(key, text, lang)
    con = Connect.new
    req = Request.new
    res = Result.new
    url = req.translate(key,text,lang)
    get = con.connect(url)
    puts(res.result(get))
  end

  def get_langs(key, ui)
    con = Connect.new
    req = Request.new
    res = Result.new
    url = req.langs(key,ui)
    get = con.connect(url)
    puts(res.result(get))
  end 

end