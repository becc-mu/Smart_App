# frozen_string_literal: true

# frozen_string_literal: true.

require 'processor'
describe Processor do
  subject(:processor) { described_class.new }
  let(:results) { double log_data }
  let(:data) { subject.instance_variable_get(:@data) }
  let(:page) { '/help_page/1' }
  let(:ip) { '126.318.035.038' }
  it 'updates log data entries' do
    subject.instance_variable_set(:@data, page => { ip => 1 })
    subject.update_data(data)
  end
  it 'returns total page views' do
    subject.update_data(log_data)
    total_views_count = subject.total_views_count(results)
    expect(total_views_count['/help_page/1']).to eq(4)
  end

  def log_data
    [
      ['/help_page/1', '126.318.035.038'],
      ['/contact', '184.123.665.067'],
      ['/home', '184.123.665.067'],
      ['/help_page/1', '929.398.951.889'],
      ['/index', '444.701.448.104'],
      ['/help_page/1', '722.247.931.582'],
      ['/about', '061.945.150.735'],
      ['/help_page/1', '646.865.545.408'],
      ['/home', '235.313.352.950'],
      ['/about/2', '200.017.277.774'],
      ['/about', '543.910.244.929']
    ]
  end
end
