describe TfpMetaprogramming::MetaMethods::DynamicDefinition::DynamicProxy do
  let(:dFlower) { TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new() }
  let(:myProxy) { TfpMetaprogramming::MetaMethods::DynamicDefinition::DynamicProxy.new(dFlower)  }

  describe 'included methods' do
    it 'does not include #describe_name' do
      expect(myProxy.methods).not_to include(:describe_name)
    end
    it 'does not include #describe_summary' do
      expect(myProxy.methods).not_to include(:describe_summary)
    end
    it 'does not include #describe_kingdom' do
      expect(myProxy.methods).not_to include(:describe_kingdom)
    end
  end
  describe 'ghost methods' do
    it 'responds_to #describe_name' do
      expect(myProxy).to respond_to(:describe_name)
    end
    it 'responds_to #describe_summary' do
      expect(myProxy).to respond_to(:describe_summary)
    end
    it 'responds_to #describe_kingdom' do
      expect(myProxy).to respond_to(:describe_kingdom)
    end
  end

end
