class Prunus::Header < Nokogiri::XML::Node
  def initialize(name, document)
  end

  def self.new(document)
    super("header", document)
  end
end
