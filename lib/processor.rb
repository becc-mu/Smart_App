# frozen_string_literal: true

# Responsible for sorting and storing of log data
class Processor
  attr_accessor :data
  def initialize
    @data = {}
  end

  def total_views_count(data)
    update_data(data)
  end

  def update_data(data)
    @data = data.sort { |a, b| a[1] == b[1] ? a[0] <=> b[0] : b[1] <=> a[1] }.reverse
    @data
  end
end
