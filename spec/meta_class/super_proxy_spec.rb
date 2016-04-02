describe TfpMetaprogramming::MetaClass::SuperProxy do
  let(:myProxy) { TfpMetaprogramming::MetaClass::SuperProxy.new }
  describe 'instance_variables' do
    it 'has a @num' do
      expect(myProxy.instance_variables).to include(:@num)
    end
  end
  describe 'methods' do
    describe '#description' do
      it 'returns a string ending with "MetaClass::InlineClass"' do
        expect(myProxy.description).to end_with("MetaClass::InlineClass")
      end
    end
  end
end
