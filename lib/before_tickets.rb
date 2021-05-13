# frozen_string_literal: true

require 'yaml'

# Return quotes and truths about the great Roberto Barros
DATA = YAML.load_file(File.join(__dir__, 'data.yml'))
HIHY = 'Hope I helped you! :)'

def puts_data_splitting_by_newline(data)
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

class Help
  def self.me
    data = DATA['steps'].sample
    puts_data_splitting_by_newline(data)
    HIHY
  end

  def self.search(word)
    found_data = false
    DATA['steps'].each do |row|
      if row.downcase.include?(word.downcase)
        puts_data_splitting_by_newline(row)
        found_data = true
      end
    end
    found_data ? HIHY : 'Sorry, I couldnt find any quote with that word'
  end

  def self.all
    DATA['steps'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end
end

class Extensions
  def self.sublime
    DATA['sublime'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end

  def self.vscode
    DATA['vscode'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end
end

class MagicSteps
  def self.local
    DATA['magic-steps'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end

  def self.heroku
    DATA['magic-steps-heroku'].each do |row|
      puts_data_splitting_by_newline(row)
    end
    HIHY
  end
end