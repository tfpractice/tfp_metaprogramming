describe TfpMetaprogramming::MetaMethods::Aliases::SydneyBristow do
  let(:myBristow) { TfpMetaprogramming::MetaMethods::Aliases::SydneyBristow.new }

  describe 'instance_variables' do
    it 'has an @ocupation' do
      expect(myBristow.instance_variables).to include(:@occupation)
    end
    it 'has a @hobby' do
      expect(myBristow.instance_variables).to include(:@hobby)
    end
  end
  describe '#throw_fierce_lqqks' do
    it 'returns a string ending with "realness"' do
      expect(myBristow.throw_fierce_lqqks).to end_with('realness')
    end

  end
end
