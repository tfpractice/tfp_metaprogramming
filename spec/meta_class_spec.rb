describe TfpMetaprogramming::MetaClass do
  let(:myMod) { TfpMetaprogramming::MetaClass }
  describe 'class methods' do
    describe '.create_inline_class' do
      context 'before called' do
        it 'has no constant InlineClass' do
          puts myMod.constants
          expect(myMod.constants).not_to include(:InlineClass)
        end
      end
      context 'after called' do
        it 'creates the InlineClass class' do
          myMod.create_inline_class
          expect(myMod.constants).to include(:InlineClass)
        end
      end
    end
  end
end
