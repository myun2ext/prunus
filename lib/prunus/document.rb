class Prunus::Document < Nokogiri::HTML::Document
  require 'prunus/document/body'
  require 'prunus/document/head'

  attr_reader :html, :body, :head

  def initialize
    super

    @html = Node.new "html"
    add_child @html
    @head = Head.new
    @body = Body.new
    html.add_child @head
    html.add_child @body
  end
end
