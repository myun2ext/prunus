class Prunus::Document < Nokogiri::HTML::Document
  require 'prunus/document/body'
  require 'prunus/document/head'
  require 'prunus/body_content'

  attr_reader :html, :body, :head, :body_content

  def initialize
    @html = Nokogiri::XML::Node.new "html", self
    self.root = @html
    @head = Head.new self
    @body = Body.new self
    html.add_child @head
    html.add_child @body
    @body_content = Prunus::BodyContent.new body, self
  end

  def self.new
    parse("<!DOCTYPE html>")
  end
end
