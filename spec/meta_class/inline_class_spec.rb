TfpMetaprogramming::MetaClass.create_inline_class

describe TfpMetaprogramming::MetaClass::InlineClass do
  let(:iCLass) {   TfpMetaprogramming::MetaClass::InlineClass }
  let(:myInline) { TfpMetaprogramming::MetaClass::InlineClass.new }
  describe '.ancestors' do
    it 'includes TfpMetaprogramming::MetaClass::SuperProxy in its cref' do
      expect(iCLass.ancestors).to include(TfpMetaprogramming::MetaClass::SuperProxy )
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
