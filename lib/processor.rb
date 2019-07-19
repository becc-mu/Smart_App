# frozen_string_literal: true

class Processor
  attr_reader :results
  def initialize(results)
    @results = results
  end

  def process_data(results)
    total_views_count = results.each_with_object({})
  end
end
