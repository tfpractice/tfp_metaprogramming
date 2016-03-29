describe TfpMetaprogramming::MetaMethods::CapsuleBreaker::Breaker do
  let(:bCapsule) { TfpMetaprogramming::MetaMethods::CapsuleBreaker::Capsule.new(15) }
  let(:myBreaker) { TfpMetaprogramming::MetaMethods::CapsuleBreaker::Breaker.new(bCapsule) }

  it 'has a @capsule instance variable' do
    expect(myBreaker.instance_variables).to include(:@capsule)
  end
  describe 'capsule' do
    it 'returns the @capsule object' do
      expect(myBreaker.capsule).to eq(bCapsule)
    end
  end
  context 'when reassigning @capsule.mass' do
    describe 'self.capsule.mass=' do
      it 'raises a NoMethodError' do
        expect  {  myBreaker.capsule.mass = 10 }.to raise_error(NoMethodError)
      end
    end
    describe '#break_encapsulation' do
      it 'changes @capsule.mass to newMass, via private Capsule#mass= method' do
        expect  {  myBreaker.break_encapsulation(10) }.to change { myBreaker.capsule.mass }.from(15).to(10)
      end
    end
  end
end
