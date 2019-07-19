# frozen_string_literal: true

require_relative '../environment'
# require_relative 'processor'
class Parser
  attr_accessor :filename, :results
  def initialize(_filename)
    @filename = 'filename'
    @results = Processor.new(results)
  end

  def parse_file
    path = './fixtures/webserver.log'
    filename = path
    raise 'File not found!' unless File.exist? filename

    data = Hash.new { |k, v| k[v] = [] }
    File.open(filename, 'r') do |file|
      file.each do |line|
        ip = line.split(' ')
        data[:pages] << ip
        # puts "#{ip}"
        @results.update_data(data)
      end
    end
    @results
  end

  def file_path(_filename)
    @filename.to_s
  end
end
