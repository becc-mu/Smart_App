require 'parser'

describe Parser do
  describe '#Initialise' do
    let(:described_class) { Parser }
    let(:filename) { 'filename' }
    let(:process_data) { double process_data }

    it '.creates parser class' do
      expect(described_class).to eq Parser
    end
    it 'assignes filename' do
      expect(filename).to eq filename
    end
  end

  describe '#processor' do
    let(:process_data) { double :process_data, new: ''}
    let(:filename) { 'filename'}
    context '#raise error' do
      before do
        allow(File).to receive(:open) { raise error } unless File.exist?(filename)
      end
      it 'raise error' do
        expect {  subject.parse_file(filename, process_data) }.to raise_error('File not found!') unless File.exist?(filename)
        subject.parse_file(filename, process_data)
      end
    end
    describe '#parse' do
      context 'open file' do
        before do
          allow(File).to receive(:open).with(filename, 'r').and_yield(:file)
        end
        it 'reads log file' do
          subject.parse_file(filename, process_data)
        end
      end
    end
  end
end
