# frozen_string_literal: true

require_relative '../environment'
require_relative 'processor'

# Parser calss responsible for opening and ouputing log data
class Parser
  attr_accessor :filename, :data
  def initialize(_filename)
    @filename = 'filename'
    @data = Processor.new(data)
  end

  def parse_file
    path = './fixtures/webserver.log'
    filename = path
    raise 'File not found!' unless File.exist? filename

    data = Hash.new { |k, v| k[v] = [] }
    File.open(filename, 'r') do |file|
      file.each do |line|
        results = line.split(' ')
        data[:pages] << results
      end
    end
    data
  end
end
