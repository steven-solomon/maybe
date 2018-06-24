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
      expect(AnyObject.new.maybe {}).to be_a(Else)
    end
  end

  describe '#else' do
    it 'returns value of maybe block from else' do
      result = 6.maybe { 7 }.else { 8 }

      expect(result).to eq(7)
    end
  end
end
