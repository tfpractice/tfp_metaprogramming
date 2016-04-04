describe TfpMetaprogramming::MetaClass::Extensions::Extender do
  let(:myExtender) { TfpMetaprogramming::MetaClass::Extensions::Extender }
  let(:anInstance) { TfpMetaprogramming::MetaClass::Extensions::Extender.new }
  let(:iMod) { TfpMetaprogramming::MetaClass::Extensions::ViaInclude }
  describe '::ViaInclude module'	 do
    it 'includes ...::ViaInclude in its ancestor chain' do
      expect(myExtender.ancestors).to include(TfpMetaprogramming::MetaClass::Extensions::ViaInclude)
    end
    describe '.included_c_method' do
      it 'is an instance method of the module' do
        expect(iMod.instance_methods).to include(:included_c_method)
      end
      it 'acts as a singleton method for ...::Extender' do
        expect(myExtender.singleton_methods).to include(:included_c_method)
      end
    end
  end
end
