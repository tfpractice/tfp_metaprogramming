describe TfpMetaprogramming::MetaClass::Singletons::SingleString do
  let(:myString) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('I am a single string object') }
  let(:hermitString) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('I am a hermit') }
  describe '.ancestors' do
    it 'includes Ruby String in its ancestor chain' do
      expect(myString.class.ancestors).to include(String)
    end
  end
  describe '#hermitize' do
    context 'when given an instance hermitString == SingleString.new("I am a hermit")' do
      context 'before called' do
        describe 'hermitString' do
          it 'doesnt respond to lifestyle' do
            expect(hermitString).not_to respond_to(:lifestyle)
          end
        end
        describe 'myString' do
          it 'doesnt respond to lifestyle' do
            expect(hermitString).not_to respond_to(:lifestyle)
          end
        end
      end
      context 'after called on hermitString' do
        before(:each) do
          hermitString.hermitize
        end
        describe 'hermitString' do
          it 'now responds to #lifestyle' do
            expect(hermitString).to respond_to(:lifestyle)
          end
          describe '#lifestyle' do
            it 'returns a string ending with "I am a hermit" ' do
              expect(hermitString.lifestyle).to end_with('I am a hermit')
            end
          end
        end
        describe 'myString' do
          it 'still doesnt respond to lifestyle' do
            expect(hermitString).to respond_to(:lifestyle)
          end
        end
      end
    end
  end
end
