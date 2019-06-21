require 'parser'

describe Parser do
  describe '#Initialise' do
    let(:described_class) { Parser }
    let(:filename) { 'filename' }
    let(:results) { double results }


    it '.creates parser class' do
      expect(described_class).to eq Parser
    end
    it 'assignes filename' do
      expect(filename).to eq 'filename'
    end
  end

  describe '#processor' do
    let(:results) { double :results, new: ''}
    let(:filename) { RESOURCE_DIR}

    context '#raise error' do
      before do
        allow(File).to receive(:open) { raise error } unless File.exist?(filename)
      end
      it 'raise error' do
        expect {  subject.parse_file(filename, results) }.to raise_error('File not found!') unless File.exist?(filename)
        subject.parse_file(filename, results)
      end
    end
    describe '#parse' do
      context 'open file' do
        before do
          allow(File).to receive(:open).with(filename, 'r').and_return(:file)
        end
        it 'reads log file' do
          expect(file).to receive(:each).and_return(line)
          expect(subject.parse_file(filename, results))
        end
      end
    end
  end
end
