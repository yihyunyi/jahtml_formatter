require 'erb'
require 'rspec/core/formatters/html_formatter'
require 'jahtml_printer'

class JahtmlFormatter < RSpec::Core::Formatters::HtmlFormatter
  def initialize(output)
    super(output)
    @printer = JahtmlPrinter.new(output)
  end
end
