class Prunus::Document::Head < Nokogiri::XML::Node
  def initialize(name, document)
  end

  def self.new(document)
    super("head", document)
  end
end
