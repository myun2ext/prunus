class Prunus::Footer < Nokogiri::XML::Node
  def initialize(name, document)
  end

  def self.new(document)
    super("footer", document)
  end
end
