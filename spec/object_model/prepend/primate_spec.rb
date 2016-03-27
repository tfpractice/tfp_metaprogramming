describe TfpMetaprogramming::ObjectModel::Primate do
  let(:primate) { TfpMetaprogramming::ObjectModel::Primate }

  describe '.show_nest' do
    it 'shows the module name due to inline nesting' do
      puts primate.show_nest
      expect(primate.show_nest).to include(TfpMetaprogramming::ObjectModel::Primate)

    end

  end
  describe '#reverse' do
    it 'includes a #reverse instance method' do
    	expect(primate.instance_methods).to include(:reverse)
    end
  end
end
