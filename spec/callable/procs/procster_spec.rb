describe TfpMetaprogramming::Callable::Procs::Procster do
  let(:myProcster) { TfpMetaprogramming::Callable::Procs::Procster.new }
  describe 'attributes' do
    it 'has a @num' do
      expect(myProcster.instance_variables).to include(:@num)
    end
    it 'has an @info' do
      expect(myProcster.instance_variables).to include(:@num)
    end
  end
  describe 'ProcMod module' do
    it 'includes Callable::Procs::ProcMod in its ancestor chain' do
      expect(myProcster.class.ancestors).to include(TfpMetaprogramming::Callable::Procs::ProcMod)
    end
  end
end
