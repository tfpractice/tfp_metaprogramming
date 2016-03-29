describe TfpMetaprogramming::MetaMethods::DynamicDefinition::MethodMover do
  let(:mFlower) { TfpMetaprogramming::MetaMethods::DynamicDefinition::Flower.new() }
  let(:myMover) { TfpMetaprogramming::MetaMethods::DynamicDefinition::MethodMover.new(mFlower) }
  describe 'attributes' do
    it 'has a @flower' do
      expect(myMover.instance_variables).to include(:@flower)
    end
  end
  describe '#freezeable?' do
    it 'returns if the @flower responds to freeze' do
      expect(myMover.freezeable?).to eq(true)
    end
  end

  describe '#remove_freeze' do
    context 'before_called' do
      it 'retains #freeze from the @flowers method list' do
        expect(myMover.flower.methods).to include(:freeze)
      end
      it 'doesnt remove Flower#freeze' do
        expect(myMover.flower).to respond_to(:freeze)

      end
      describe '#freezeable?' do
        it 'returns true' do
          expect(myMover.freezeable?).to eq(true)
        end
      end
    end
    context 'after called' do
      before(:each) do
        myMover.remove_freeze
      end
      describe '#freezeable?' do
        it 'returns false' do
          expect(myMover.freezeable?).to eq(false)
        end
      end
      it 'removes the #freeze from the @flower' do
        expect(myMover.flower).not_to respond_to(:freeze)
      end
      it 'removes #freeze from the @flowers method list' do
        expect(myMover.flower.methods.sort).not_to include(:freeze)
      end
    end
  end
end
