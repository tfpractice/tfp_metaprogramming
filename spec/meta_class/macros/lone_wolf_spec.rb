describe TfpMetaprogramming::MetaClass::Macros::LoneWolf do
  let(:myWolf) { TfpMetaprogramming::MetaClass::Macros::LoneWolf.new }

  describe 'instance_variables' do
    it 'has a @name' do
      expect(myWolf.instance_variables).to include(:@name)
    end
    it 'has a @sex' do
      expect(myWolf.instance_variables).to include(:@sex)
    end
    it 'has a @alpha' do
      expect(myWolf.instance_variables).to include(:@alpha)
    end
  end
  describe 'methods' do
    describe '#howl' do
      it 'returns a string that ends with "howling"' do
        expect(myWolf.howl).to end_with('howling')
      end
    end
    describe '#hunt' do
      it 'returns a string that ends with "hunt"' do
        expect(myWolf.hunt).to end_with('hunt')
      end
    end
  end
end
