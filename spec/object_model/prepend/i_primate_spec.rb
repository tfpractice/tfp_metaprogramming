describe TfpMetaprogramming::ObjectModel::IPrimate do
  let(:primate) { TfpMetaprogramming::ObjectModel::IPrimate }
  # describe '.ancestors' do
  #   it 'includes TfpMetaprogramming in its ancestor chain' do
  #     expect(primate.ancestors).to include(TfpMetaprogramming::ObjectModel::IPrimate)
  #   end
  # end
  describe '#primate' do
    it 'has a primate instance method' do
    	expect(primate.instance_methods).to include(:primate)
    end
  end
  # describe '.show_nest' do
  	# it 'shows the module nesting' do
  		# puts primate.show_nest
  		# expect(primate.show_nest).to include(TfpMetaprogramming::ObjectModel)
  		# 
  	# end
    # 
  # end
end
