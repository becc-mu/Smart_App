require 'processor'

describe Processor do
  describe '#Initialize' do
    let(:records) { {} }
    subject(:processor) { described_class.new }

    it 'adds records' do
      expect(records).to eq( {})
    end
    it 'updates enteries' do
      expect(subject.process_data).to respond_to(:hash, :class, :to_s)
    end
  end

end
