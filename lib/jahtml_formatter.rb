require 'erb'
require 'rspec/core/formatters/html_formatter'
require 'jahtml_printer'
require 'iso_example_group_methods'
require 'iso_example_methods'
require 'rspec/core'


RSPEC_3_COMPAT = if defined?(RSpec::Core::Version)
                   rspec_version = RSpec::Core::Version::STRING.split('.').map { |e| e.to_i }
                   rspec_version[0]>=3 || (rspec_version[0]>=2 && rspec_version[1]>=99)
                 else
                   false
                 end

class JahtmlFormatter < RSpec::Core::Formatters::HtmlFormatter
  def initialize(output)
    super(output)
    @printer = JahtmlPrinter.new(output)
  end
end

if RSPEC_3_COMPAT
  RSpec.configure do |config|
    config.include IsoExampleGroupMethods
    config.before do |example|
      example.extend IsoExampleMethods
    end
  end
else
  RSpec.configure do |config|
    config.include IsoExampleGroupMethods
    config.before do
      example.extend IsoExampleMethods
    end
  end
end