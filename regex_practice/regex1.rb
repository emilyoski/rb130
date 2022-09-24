def url?(url)
  url.match?(/^(http:\/\/|https:\/\/)\S+$/)
end

p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false

# def url?(text)
#   !!text.match(/\Ahttps?:\/\/\S+\z/)
# end

# def url?(text)
#   text.match?(/\Ahttps?:\/\/\S+\z/)
# end