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
end
