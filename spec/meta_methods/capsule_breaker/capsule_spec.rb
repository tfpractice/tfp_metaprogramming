describe TfpMetaprogramming::MetaMethods::Capsule do
  let(:myCapsule)  { TfpMetaprogramming::MetaMethods::Capsule.new(40) }

  describe '@mass' do
    it 'has a mass instance_variable' do
      expect(myCapsule.instance_variables).to include(:@mass)
    end
    it 'assigns initial @mass based on argument' do
      expect(myCapsule.mass).to eq(40)
    end
  end
  describe '#mass' do
    it 'returns the @mass value' do
      expect(myCapsule.mass).to eq(40)
    end
  end
  describe '#mass=' do
    it 'raises a NoMethodError (private method)' do
      expect  {  myCapsule.mass = 10 }.to raise_error(NoMethodError)
    end
  end
  describe '#increment' do
    it 'increases @mass by 1' do
      expect  {  myCapsule.increment }.to change { myCapsule.mass }.by(1)
    end
  end
  describe '#decrement' do
    it 'decreases @mass by 1' do
      expect  {  myCapsule.decrement }.to change { myCapsule.mass }.by(-1)
    end
  end
end
