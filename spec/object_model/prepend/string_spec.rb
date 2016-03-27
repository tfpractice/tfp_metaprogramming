describe TfpMetaprogramming::ObjectModel::String do
  let(:myString) { TfpMetaprogramming::ObjectModel::String.new("My Prepended String") }
  describe '.included_modules' do

    it 'includes TfpMetaprogramming::ObjectModel::IPrimate ' do
      expect(myString.class.included_modules).to include(TfpMetaprogramming::ObjectModel::IPrimate)
    end
    it 'does not yet include TfpMetaprogramming::ObjectModel::Primate ' do
      expect(myString.class.included_modules).not_to include(TfpMetaprogramming::ObjectModel::Primate)
    end

  end
  describe '#prep_primate' do
    it 'responds to #prep_primate' do
      expect(myString).to respond_to(:prep_primate)
    end
    it 'prepends TfpMetaprogramming::ObjectModel::Primate to the ancestor chain ' do
      myString.prep_primate
      expect(myString.class.included_modules).to include(TfpMetaprogramming::ObjectModel::Primate)

    end

  end

  describe '#primate' do
    it 'receives the #primate method from module' do
      expect(myString).to respond_to(:primate)
    end
    it 'returns "I am a the included primate (IPrimate) module and I override String#reverse" ' do
      expect(myString.primate).to eq( "I am a the included primate (IPrimate) module and I override String#reverse")
    end
  end
  describe 'reverse' do
    it 'returns the Prepended Primates #reverse' do
      expect(myString.reverse).to eq("I am the prepended Primate module and I output banana====ananab")

    end
  end
end
