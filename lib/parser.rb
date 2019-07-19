# frozen_string_literal: true

require 'processor'
require_relative '../environment'

class Parser
  attr_reader :filename, :results
  def initialize(filename)
    @filename = 'filename'
    @results = Processor.new(results)
  end

  def parse_file
    filename = './fixtures/webserver.log'

     # @results = results
    # file = ''
    raise 'File not found!' unless File.exist?(filename)

    File.open(filename, 'r') do |file|
      file.each do |line|
      page_views = line.split(' ')
      results.process_data(page_views)
      end
    end
  end
end
