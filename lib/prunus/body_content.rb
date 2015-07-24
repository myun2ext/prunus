require 'prunus/header'
require 'prunus/footer'

class Prunus::BodyContent
  attr_reader :body, :header, :footer

  def initialize(body, document)
    @body = body
    @document = document
    @header = Prunus::Header.new document
    @footer = Prunus::Footer.new document
    body.add_child @header
    body.add_child @footer
  end
end
