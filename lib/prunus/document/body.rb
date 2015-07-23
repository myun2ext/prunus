class Prunus::Document::Body < Nokogiri::XML::Node
  def initialize
    super "body"
  end
end
