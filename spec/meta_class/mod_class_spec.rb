describe TfpMetaprogramming::MetaClass::ModClass do
  let(:myMod) { TfpMetaprogramming::MetaClass::ModClass.new }
  let(:theMod) { TfpMetaprogramming::MetaClass::ModClass }
  describe 'instance_variables' do
    it 'has a @num' do
      expect(myMod.instance_variables).to include(:@num)
    end
  end
  describe 'class_instance_variable' do
    it 'has a @class_ivar' do
      expect(theMod.instance_variables).to include(:@class_ivar)
    end
  end
  describe 'class_variables' do
    it 'has a @@cvar' do
      expect(theMod.class_variables).to include(:@@c_var)
    end
  end
end
