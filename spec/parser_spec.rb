require 'parser'

describe Parser do

    subject(:parser) { described_class.new(filename) }
    let(:filename) { './fixtures/webserver.log' }

    # let(:results_class) { double  }
    let(:file) { double :file, each: line }
    let(:line) { '/index 451.106.204.921' }
    let(:results) { double :results, add_views: ''}
  describe '#Initialise' do
    it '#initialize' do
      expect(described_class).to eq Parser
    end
    it 'assignes filename' do
      expect(filename).to eq './fixtures/webserver.log'
    end
  end
  describe '#parse' do
    context 'open file' do
      before do
        allow(File).to receive(:open).with(filename, 'r').and_return(:file)
        allow(file).to receive(:each).and_yield(line)
      end
      it 'reads log file' do
        expect(File).to receive(:open).with(filename, 'r').and_return(file)

         subject.parse_file
      end
      it 'parse through log file' do
        expect(File).to receive(:open).with(filename, 'r').and_return(file)
        allow(file).to receive(:each)
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
end
