RSpec.describe NilClass do

  describe '#maybe' do
    it 'does not call block' do
      call_count = 0

      nil.maybe do
        call_count += 1
      end

      expect(call_count).to eq(0)
    end

    it 'returns self' do
      expect(nil.maybe {}).to eq(nil)
    end
  end

  describe '#else' do
    it 'calls block' do
      call_count = 0

      nil.else do
        call_count += 1
      end

      expect(call_count).to eq(1)
    end

    it 'returns self' do
      expect(nil.else {}).to eq(nil)
    end
  end
end
