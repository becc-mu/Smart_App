# frozen_string_literal: true

# Responsible for sorting and storing of log data
class Processor
  # attr_accessor :data
  def initialize(data)
    @data = {}
  end

  def update_data(data)
    @data = data.each_with_object({}) { |item, accum| accum[item] = accum[item].to_i + 1 }
  end
end
