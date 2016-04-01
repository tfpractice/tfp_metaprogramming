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

end
