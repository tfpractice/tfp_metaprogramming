TfpMetaprogramming::MetaClass.create_inline_class

describe TfpMetaprogramming::MetaClass::InlineClass do
  let(:iCLass) {   TfpMetaprogramming::MetaClass::InlineClass }
  let(:myInline) { TfpMetaprogramming::MetaClass::InlineClass.new }
  describe '.ancestors' do
    it 'includes TfpMetaprogramming::MetaClass::SuperProxy in its cref' do
      expect(iCLass.ancestors).to include(TfpMetaprogramming::MetaClass::SuperProxy )
    end
  end
  describe '#inline_method' do
    it 'returns a string that starts with "I am the inline_method"' do
      expect(myInline.inline_method).to start_with('I am the inline_method')
    end
  end
  describe 'SuperProxy methods' do
    it 'has a @num' do
      expect(myInline.instance_variables).to include(:@num)
    end
    describe '#description' do
      it 'returns a string ending with "MetaClass::InlineClass"' do
        expect(myInline.description).to end_with("MetaClass::InlineClass")
      end
    end
  end
end
