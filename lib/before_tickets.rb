# frozen_string_literal: true

require 'yaml'

# Return quotes and truths about the great Roberto Barros
class Help
  DATA = YAML.load_file(File.join(__dir__, 'data.yml'))
  HIHY = 'Hope I helped you! :)'

  def self.puts_data_splitting_by_newline(data)
    puts
    if data.include? '/n'
      data.split('/n').each do |line|
        puts line
      end
    else
      puts data
    end
    puts
  end

  def self.me
    data = DATA['steps'].sample
    puts_data_splitting_by_newline(data)
    HIHY
  end

  def self.specific_quote(word)
    found_data = false
    DATA['steps'].each do |row|
      if row.downcase.include?(word.downcase)
        puts_data_splitting_by_newline(row)
        found_data = true
      end
    end
    found_data ? HIHY : 'Sorry, I couldnt find any quote with that word'
  end

  def self.all_quotes
    DATA['steps'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end

  def self.sublime_extensions
    DATA['sublime'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end

  def self.vscode_extensions
    DATA['vscode'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end
end
