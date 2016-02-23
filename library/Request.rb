require 'net/http'
require 'json'
require_relative 'Connect.rb'

URL = 'https://translate.yandex.net/api/v1.5/tr.json/'

class Request

  def initialize()
    @con = Connect.new
  end
  	
  def translate(key, text, lang, format='plain', options = 1)
    request ="#{URL}translate?key=#{key}&text=#{text}&lang=#{lang}&format=#{format}&options=#{options}"
    @con.connect(request)
  end

  def detect(key, text)
    request ="#{URL}detect?key=#{key}&text=#{text}"
    @con.connect(request)
  end

  def langs(key, ui)
  	request ="#{URL}getLangs?key=#{key}&ui=#{ui}"
  	@con.connect(request)
  end

end