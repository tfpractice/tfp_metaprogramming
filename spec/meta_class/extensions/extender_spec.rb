describe TfpMetaprogramming::MetaClass::Extensions::Extender do
  let(:myExtender) { TfpMetaprogramming::MetaClass::Extensions::Extender }
  let(:anInstance) { TfpMetaprogramming::MetaClass::Extensions::Extender.new }
  let(:iMod) { TfpMetaprogramming::MetaClass::Extensions::ViaInclude }
  let(:eMod) { TfpMetaprogramming::MetaClass::Extensions::ViaExtend }
  describe '...::ViaInclude module'	 do
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
      it 'returns a string ending with "include" ' do
        expect(myExtender.included_c_method).to end_with('include')
      end
    end
  end
  describe '...::ViaExtend module'	 do
    it 'includes ...::ViaExtend in its ancestor chain' do
      expect(myExtender.ancestors).to include(TfpMetaprogramming::MetaClass::Extensions::ViaExtend)
    end
    describe '.extended_c_method' do
      it 'is an instance method of the module' do
        expect(eMod.instance_methods).to include(:extended_c_method)
      end
      it 'acts as a singleton method for ...::Extender' do
        expect(myExtender.singleton_methods).to include(:extended_c_method)
      end
      it 'returns a string ending with "extend" ' do
        expect(myExtender.extended_c_method).to end_with('extend')
      end
    end
  end
  describe 'methods' do
    describe '#extend_instance' do
      context 'when given an instance :anInstance' do
        context 'before_called' do
          it 'doesnt respond to #extended_i_method' do
            expect(anInstance).not_to respond_to(:extended_i_method)
          end
        end
        context 'after called' do
          before(:each) do
            anInstance.extend_instance
          end
          it 'adds #extended_i_method to anInstance singleton_menthods ' do
            expect(anInstance.singleton_methods).to include(:extended_i_method)
          end
          describe 'Eextended_i_method' do
            it 'responds to #extended_i_method' do
              expect(anInstance).to respond_to(:extended_i_method)
            end
            it 'returns a string ending with "instance"' do
              expect(anInstance.extended_i_method).to end_with('instance')
            end
          end
        end
      end
    end
  end
end
