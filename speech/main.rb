require "faraday"
require "json"
require 'base64'


# target = File.read(ARGV[0])
# url = Base64.strict_encode64("./konnichiha1.flac")

gs = "Analysis object" # flac or raw or wav
key = "your API key"
input ={
  "config": {
      "encoding":"FLAC",
      "sample_rate": 44100,
      "language_code": "ja-JP"
  },
  "audio": {
      # "content":url
      "uri":gs
  }
}

res = Faraday.post "https://speech.googleapis.com/v1beta1/speech:asyncrecognize?key=" + key, JSON.generate(input), content_type: "application/json"
puts res.body