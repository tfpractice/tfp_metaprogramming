describe TfpMetaprogramming::MetaClass::Singletons::SingleString do
  let(:myString) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('I am a single string object') }
  describe '.ancestors' do
    it 'includes Ruby String in its ancestor chain' do
      expect(myString.class.ancestors).to include(String)
    end

  end
end
