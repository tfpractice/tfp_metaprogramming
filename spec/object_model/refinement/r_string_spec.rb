describe TfpMetaprogramming::ObjectModel::RString do
  let(:rString) { TfpMetaprogramming::ObjectModel::RString.new("this is a refined string") }
  describe '.ancestors' do
    it 'includes String' do
      puts rString.class.ancestors
      expect(rString.class.ancestors).to include(String)
    end
  end
  describe '#refined_method' do
    it 'will not respond_to? :refined_method due to method lookup issues with refinements' do
      expect(rString).not_to respond_to(:refined_method)

    end



  end
  describe '#call_refinement' do
    it 'calls refined_method while still in scope via Module#using' do
      expect(rString).to respond_to(:call_refinement)
    end
    it 'returns "The String class has been refined with..."' do
      expect(rString.call_refinement).to start_with("The String class has been refined with")
      # expect(rString.call_refinement).to eq("The String class has been refined with this aptly named refined method, and is limited to the scope of the including modules, thus avoiding #monkeyPatchingProblems")
    end
  end
end
