require 'net/http'
require 'json'

class Connect
    
  def connect(url)
    uri = URI(URI.encode(url))
    res = Net::HTTP.post_form(uri, 'q' => 'ruby', 'max' => '50')
  end

end