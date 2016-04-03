describe TfpMetaprogramming::MetaClass::Macros::PackWolf do
  let(:myWolf) { TfpMetaprogramming::MetaClass::Macros::PackWolf.new }

  describe 'ancestors' do
    it 'includes ...::Macros::LoneWolf in its ancestor tree' do
      expect(myWolf.class.ancestors).to include(TfpMetaprogramming::MetaClass::Macros::LoneWolf)
    end
  end
  describe 'methods' do
    describe '.deprecate' do
      it 'responds to deprecate' do
        expect(myWolf.class).to respond_to(:deprecate)
      end
      context 'before called' do
        describe '#howl' do
          it 'returns a string that ends with "howling"' do
            expect(myWolf.new_howl).to end_with('howling')
          end
        end
      end
      context 'after called' do
        context 'when passed old method_name :howl and a new_method :new_howl' do
          describe '#howl' do
            it 'outputs warning to stderr' do
              myWolf.class.deprecate(:howl, :new_howl)
              expect { myWolf.howl }.to output.to_stderr
            end
            it 'still returns a string that ends with "howling"' do
              expect(myWolf.howl).to end_with('howling')
            end
          end
        end
      end
    end
    describe '#new_howl' do
      it 'returns a string that ends with "howling"' do
        expect(myWolf.new_howl).to end_with('howling')
      end
    end
    describe '#new_hunt' do
      it 'returns a string that ends with "hunt"' do
        expect(myWolf.new_hunt).to end_with('hunt')
      end
    end
  end
end
