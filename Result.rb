require 'net/http'
require 'json'
class Result

	def result(res)
		JSON.parse(res.body)
	end
end