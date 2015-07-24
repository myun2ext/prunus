class Prunus::Document::Head < Nokogiri::XML::Node
  def initialize(name, document)
    @title = Nokogiri::XML::Node.new "title", document
    add_child @title
  end

  def self.new(document)
    super("head", document)
  end

  def title=(s)
    @title.content = s
  end
end
