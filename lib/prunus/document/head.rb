class Prunus::Document::Head < Nokogiri::XML::Node
  def initialize
    super "head"
  end
end
