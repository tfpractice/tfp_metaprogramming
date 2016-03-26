require 'spec_helper'


describe TfpMetaprogramming::ObjectModel do
  describe '#check' do
    it 'responds to #check' do
      expect(TfpMetaprogramming::ObjectModel).to respond_to(:description)
    end
    it 'returns "this section is dedicated..." ' do
      expect(TfpMetaprogramming::ObjectModel.description).to eq( "this section is dedicated to investigating the ruby Object Model"
                                                                 )
    end
  end
end
