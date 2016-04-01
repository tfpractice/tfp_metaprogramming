describe TfpMetaprogramming::Callable::MethodObjects::Unbindr do
  let(:myUnbindr) { TfpMetaprogramming::Callable::MethodObjects::Unbindr.new }

  describe 'attributes' do
    it 'has a @num' do
      expect(myUnbindr.instance_variables).to include(:@num)
    end
    it 'has a @moniker' do
      expect(myUnbindr.instance_variables).to include(:@moniker)
    end
  end
  describe 'methods' do
    describe '#get_b_method' do
      it 'returns a callable method object' do
        expect(myUnbindr.get_b_method).to be_a_kind_of(Method)
      end
    end
    describe '#call_b_method' do
      it 'calls #b_method as though it were a proc' do
        expect(myUnbindr.call_b_method).to end_with("Bound")
      end
    end
  end
  describe 'Bound module' do
    it 'includes Callable::MethodObjects::Bound in its ancestor chain' do
      expect(myUnbindr.class.ancestors).to include(TfpMetaprogramming::Callable::MethodObjects::Bound)
    end
    describe 'methods' do
      describe '#b_method' do
        it 'returns a string about its origins' do
          expect(myUnbindr.b_method).to end_with("Bound")
        end
      end
    end
  end

end
