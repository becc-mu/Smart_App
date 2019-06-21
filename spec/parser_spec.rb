require 'parser'

describe Parser do
  describe '#Initialise' do
    let(:described_class) { Parser }
    let(:filename) { 'filename' }

    it '.creates parser class' do
      expect(described_class).to eq Parser
    end
    it 'assignes filename' do
      expect(filename).to eq filename
    end
  end

  describe '#processor' do
    let(:processor) { double :processor, new: records}
    let(:filename) { 'filename'}
    context '#raise error' do
      before do
        allow(File).to receive(:open) { raise error }
      end
      it 'raise error' do
        expect {  subject.parse_file }.to raise_error('File not found!') unless File.exist?(filename)
        subject.parse_file(filename, processor)
      end
    end
  end
end
