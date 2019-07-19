# frozen_string_literal: true

require_relative '../environment'
require_relative 'processor'

class Parser
  attr_reader :filename, :results
  def initialize(filename)
    @filename = 'filename'
    @results = Processor.new(results)
  end

  def parse_file
    path = './fixtures/webserver.log'
    filename = path
      @results = results
     raise 'File not found!' unless File.exists? filename
    File.open(filename, 'r') do |file|
      file.each do |line|
        page, ip = line.split(' ')
      puts "#{page}"
       results.process_data(page, ip)
      end
    end
    results
  end

  def file_path(filename)
    "#{@filename}"
  end
end
