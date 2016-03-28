describe  TfpMetaprogramming::MetaMethods::DynamicDefinition::SmellyAccessor do
  let(:sFlower) { TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new('iris', 'floral', 'plantae') }
  let(:myAccessor) { TfpMetaprogramming::MetaMethods::DynamicDefinition::SmellyAccessor.new(sFlower) }
  describe 'attributes' do
    it 'has a @flower' do
      expect(myAccessor.instance_variables).to include(:@flower)
    end
  end
  describe 'methods' do
    describe '#get_flower_summary' do
      it 'returns the flowers #describe_summary method' do
        expect(myAccessor.get_flower_summary).to start_with("the describe_summary method")
      end
    end
    describe '#get_flower_name' do
      it 'returns the flowers #describe_name method' do
        expect(myAccessor.get_flower_name).to start_with("the describe_name method")
      end
    end
    describe '#get_flower_kingdom' do
      it 'returns the flowers #describe_kingdom method' do
        expect(myAccessor.get_flower_kingdom).to start_with("the describe_kingdom method")
      end
    end
  end
end
