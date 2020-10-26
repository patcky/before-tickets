# frozen_string_literal: true

require 'yaml'

# Return quotes and truths about the great Roberto Barros
class Help
  DATA = YAML.load_file(File.join(__dir__, 'data.yml'))

  # Take no arguments. Return a random.
  def self.me
    DATA['steps'].sample
  end
end
