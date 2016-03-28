describe TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower do
  let(:myFlower) { TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new('iris', 'floral', 'plantae') }
  describe 'attributes' do
    it 'has a @name' do
      expect(myFlower.instance_variables).to include(:@name)
    end
    it 'has a @kingdom' do
      expect(myFlower.instance_variables).to include(:@kingdom)
    end
    it 'has a @summary' do
      expect(myFlower.instance_variables).to include(:@summary)
    end
  end

  describe '#describe_name' do
    it 'retuns "the describe_name method..."' do
      expect(myFlower.describe_name).to start_with("the describe_name method")
    end
  end
  describe '#describe_kingdom' do
    it 'retuns "the describe_kingdom method..."' do
      expect(myFlower.describe_kingdom).to start_with("the describe_kingdom method")
    end
  end
  describe '#describe_summary' do
    it 'retuns "the describe_summary method..."' do
      expect(myFlower.describe_summary).to start_with("the describe_summary method")
    end
  end
end
