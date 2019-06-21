require 'processor'
require_relative '../environment'

class Parser
  attr_reader :filename, :results
  def Initialize(filename, results)
    @filename = 'filename'
    @results = Processor.new(results)
  end
  def parse_file(filename, results)
     filename = RESOURCE_DIR
     @results = results.new
     file = ''
    raise 'File not found!' unless File.exist?(filename)

    File.open(filename, 'r')do |file|
      @results = file.each do |line|
         # puts line
      end
    end
  end
end
