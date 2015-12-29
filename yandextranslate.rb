require 'net/http'
require 'json'
class Translator	

  KEY = 'trnsl.1.1.20151227T085528Z.a14efb402b71cae3.d511f476e29f140e71a022b3b48b202b7720ef0e'
  URL = 'https://translate.yandex.net/api/v1.5/tr.json/'
  
  def  detect(text)
    #request = URL+Translator::get_langs+Translator::KEY + text
    request ="#{URL}detect?key=#{KEY}&text=#{text}"
    uri = URI(URI.encode(request))
    res =Net::HTTP.get(uri)
    JSON.parse(res)
  end

  def translate(text, lang, format='plain', options = 1)
  	request ="#{URL}translate?key=#{KEY}&text=#{text}&lang=#{lang}&format=#{format}&options=#{options} "
    uri = URI(URI.encode(request))
    res =Net::HTTP.get(uri)
   # JSON.parse(res)
  end

  def get_langs(ui)
    request ="#{URL}getLangs?key=#{KEY}&ui=#{ui}"
    uri = URI(URI.encode(request))
    res =Net::HTTP.get(uri)
    JSON.parse(res)	
  end 

end
 
