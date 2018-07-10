require "faraday"
require "json"
require 'base64'

iam = ARGV[0]
key = "your API key"

res = Faraday.get "https://speech.googleapis.com/v1beta1/operations/"+ iam +"?key=" + key

puts res.body
