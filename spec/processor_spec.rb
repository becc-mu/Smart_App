# frozen_string_literal: true

# frozen_string_literal: true.

require 'processor'
describe Processor do
    subject(:processor) { described_class.new(results) }
    let(:results) { log_data }

    it 'updates log data enteries' do
      total_views_count = processor.total_views_count
      expect(page_view_count['/help_page/1']).to eq(4)
    end

  def log_data
    [
      { page: '/index', ip: '126.318.035.038' },
      { page: '/contact', ip: '184.123.665.067' },
      { page: '/home', ip: '184.123.665.067' },
      { page: '/about/2', ip: '444.701.448.104' },
      { page: '/help_page/1', ip: '929.398.951.889' },
      { page: '/index', ip: '444.701.448.104' },
      { page: '/home', ip: '184.123.665.067' },
      { page: '/help_page/1', ip: '929.398.951.889' },
      { page: '/about', ip: '061.945.150.735' },
      { page: '/help_page/1', ip: '929.398.951.889' },
      { page: '/home', ip: '235.313.352.950' },
      { page: '/contact', ip: '184.123.665.067' },
      { page: '/help_page/1', ip: '543.910.244.929' }
    ]
  end
end
