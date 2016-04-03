describe TfpMetaprogramming::MetaClass do
  let(:myMod) { TfpMetaprogramming::MetaClass }
  describe 'class methods' do
    describe '.create_inline_class' do
      context 'before called' do
        it 'has no constant InlineClass' do
          skip('MetaClass.create_inline_class was called in an earlier spec') if myMod.const_defined?(:InlineClass)
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
