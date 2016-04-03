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
        sClass = TfpMetaprogramming::MetaClass::Singletons::SingleString
        expect(sClass.methods).not_to include(:my_singleton)
      end
    end
    context 'after called' do
      it 'includes :my_singleton in SingleString#methods' do
        mySingleton.add_my_singleton_to_single_string
        sClass = TfpMetaprogramming::MetaClass::Singletons::SingleString
        expect(sClass.methods).to include(:my_singleton)
      end
    end
  end
end
