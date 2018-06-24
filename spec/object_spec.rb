RSpec.describe Object do
  class AnyObject;
  end

  describe '#maybe' do
    it 'calls block' do
      call_count = 0

      AnyObject.new.maybe do
        call_count += 1
      end

      expect(call_count).to eq(1)
    end

    it 'passes self into the block' do
      instance = AnyObject.new

      instance.maybe do |param|
        expect(param).to eq(instance)
      end
    end

    it 'returns self' do
      instance = AnyObject.new

      expect(instance.maybe {}).to eq(instance)
    end
  end

  describe '#else' do
    it 'does not call block' do
      call_count = 0

      AnyObject.new.else do
        call_count += 1
      end

      expect(call_count).to eq(0)
    end

    it 'returns self' do
      instance = AnyObject.new

      expect(instance.else {}).to eq(instance)
    end
  end
end
