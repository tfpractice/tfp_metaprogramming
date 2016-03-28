describe  TfpMetaprogramming::MetaMethods::DynamicDefinition::FragrantAccessor do
  let(:sFlower) { TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new('iris', 'floral', 'plantae') }
  let(:myAccessor) { TfpMetaprogramming::MetaMethods::DynamicDefinition::FragrantAccessor.new(sFlower) }
  describe 'attributes' do
    it 'has a @flower' do
      expect(myAccessor.instance_variables).to include(:@flower)
    end
  end
  describe '.applyMethods' do
    context 'before called' do
      it 'does not respond to #name' do
        expect(myAccessor).not_to respond_to(:name)
      end
      it 'does not respond to #kingdom' do
        expect(myAccessor).not_to respond_to(:kingdom)
      end
      it 'does not respond to #summary' do
        expect(myAccessor).not_to respond_to(:summary)
      end
    end
    context 'after called' do
      describe 'it dynamically defines methods on the class' do
        before(:each) do
          myAccessor
          myAccessor.class.applyMethods
        end
        it 'responds to #name' do
          expect(myAccessor).to respond_to(:name)
        end
        it 'responds to #kingdom' do
          expect(myAccessor).to respond_to(:kingdom)
        end
        it 'responds to #summary' do
          expect(myAccessor).to respond_to(:summary)
        end
      end
    end
  end
  describe 'dynamically added methods' do
    describe '#summary' do
      it 'returns the flowers #describe_summary method' do
        expect(myAccessor.summary).to start_with("the describe_summary method")
      end
    end
    describe '#name' do
      it 'returns the flowers #describe_name method' do
        expect(myAccessor.name).to start_with("the describe_name method")
      end
    end
    describe '#kingdom' do
      it 'returns the flowers #describe_kingdom method' do
        expect(myAccessor.kingdom).to start_with("the describe_kingdom method")
      end
    end
  end
end
