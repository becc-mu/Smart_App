# frozen_string_literal: true

# Responsible for sorting and storing of log data
class Processor
  attr_accessor :results
  def initialize(results)
    @results = results
  end

  def total_views_count
    update_data(results)
  end

  def update_data(results)
    results.group_by(&:itself).transform_values(&:count)
  end
end
