describe TfpMetaprogramming::Callable::Procs::Procster do
  let(:myProcster) { TfpMetaprogramming::Callable::Procs::Procster.new }
  describe 'attributes' do
    it 'has a @num' do
      expect(myProcster.instance_variables).to include(:@num)
    end
  end
end
