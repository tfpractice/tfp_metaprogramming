describe TfpMetaprogramming::MetaClass::Singletons do
  let(:mySingleton) { TfpMetaprogramming::MetaClass::Singletons }
  describe 'constants' do
    it 'includes :SingleString' do
      puts mySingleton.constants
      expect(mySingleton.constants).to include(:SingleString)
    end
  end
  describe '#add_my_singleton_to_single_string' do
    context 'before called' do
      it 'excludes :my_singleton from SingleString#methods' do
        s_class = TfpMetaprogramming::MetaClass::Singletons::SingleString
        expect(s_class.methods).not_to include(:my_singleton)
      end
    end
    context 'after called' do
      it 'includes :my_singleton in SingleString#methods' do
        mySingleton.add_my_singleton_to_single_string
        s_class = TfpMetaprogramming::MetaClass::Singletons::SingleString
        expect(s_class.methods).to include(:my_singleton)
      end
    end
  end
end
