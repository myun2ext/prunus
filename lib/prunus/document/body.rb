class Prunus::Document::Body < Nokogiri::XML::Node
  def initialize(name, document)
  end

  def self.new(document)
    super("body", document)
  end
end
