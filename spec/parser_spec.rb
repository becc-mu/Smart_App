require 'parser'

describe Parser do

    subject(:parser) { described_class.new(filename) }
    let(:filename) { './fixtures/webserver.log' }
    let(:file) { double :file, each: line }
    let(:line) { '/index 451.106.204.921' }
    let(:page) { '/about/2' }
    let(:ip) { '444.701.448.104' }
    let(:results) { double :results, process_data: ''}

    it '#initialize' do
      expect(described_class).to eq Parser
    end
    it 'assignes filename' do
      expect(filename).to eq './fixtures/webserver.log'
    end
  describe '#parse' do
    it 'reads log file' do
      allow(File).to receive(:open).with(filename, 'r').and_return(:file)
      allow(file).to receive(:each).and_yield(line)
      expect(File).to receive(:open).with(filename, 'r').and_return(file)
       subject.parse_file
    end
    it 'parse through log file' do
      allow(File).to receive(:open).with(filename, 'r').and_return(:file)
      allow(file).to receive(:each).and_yield(line)
      expect(File).to receive(:open).with(filename, 'r').and_return(file)
      allow(file).to receive(:each)
      subject.parse_file
    end
    it 'calls process_data on results with the line' do
      allow(file).to receive(:each).and_yield(line)
      expect(results).to receive(:process_data).with(page, ip)
      subject.parse_file
    end
  end
  describe '#Edgecase' do
    let(:invalid_filename) { 'invalid_filename.log' }
    context '#raise error' do
      before do
        allow(File).to receive(:open) { raise error } unless File.exist?(filename)
      end
    end
    it 'raise error' do
      expect { subject.parse_file(invalid_filename, results) }.to raise_error('File not found!') unless File.exist?(filename)
    end
  end
  end
