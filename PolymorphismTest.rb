class GenericParser
  def parse(parser)
    parser.parse
  end
end

class JsonParser
  def parse
    puts 'An instance of the JsonParser class received the parse message'
  end
end

class XmlParser
  def parse
    puts 'An instance of the XmlParser class received the parse message'
  end
end



parser = GenericParser.new

puts 'Using the XmlParser'
parser.parse(XmlParser.new)

puts 'Using the JsonParser'
parser.parse(JsonParser.new)