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
