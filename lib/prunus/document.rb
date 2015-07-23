class Prunus::Document < Nokogiri::HTML::Document
  require 'prunus/document/body'
  require 'prunus/document/head'

  attr_reader :html, :body, :head

  def initialize
    super

    @html = Nokogiri::XML::Node.new "html", self
    self.root = @html
    @head = Head.new self
    @body = Body.new self
    html.add_child @head
    html.add_child @body
  end
end
