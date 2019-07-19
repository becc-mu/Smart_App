# frozen_string_literal: true

require_relative '../environment'
# require_relative 'processor'

class Parser
  attr_reader :filename, :results
  def initialize(filename)
    @filename = 'filename'
    @results = Hash.new { |k, v| k[v] = [] }
  end

  def parse_file
    path = './fixtures/webserver.log'
    filename = path
    raise 'File not found!' unless File.exists? filename

    File.open(filename, 'r') do |file|
      page = file.each do |line|
      ip = line.split(' ')
        @results[page] << ip
      end
    end
    @results
  end
  def file_path(filename)
    "#{@filename}"
  end
end
