describe TfpMetaprogramming::MetaClass::ClassModifier do
  let(:receivingClass) { TfpMetaprogramming::MetaClass::ModClass }
  let(:instanceReceiver) { TfpMetaprogramming::MetaClass::ModClass.new }
  let(:myModifier) { TfpMetaprogramming::MetaClass::ClassModifier }
  describe 'add_new_method_to_class' do
    context 'when provided a class receivingClass = ..::ModClass' do
      context 'before called' do
        it 'excludes #report_new_method from receivingClass methods' do
          expect(instanceReceiver.methods).not_to include(:report_new_method)
        end
      end
      context 'after called' do
        it 'adds #report_new_method to the receivingClass' do
          myModifier.add_new_method_to_class(receivingClass)
          expect(instanceReceiver.methods).to include(:report_new_method)
        end
      end
    end
  end
end
