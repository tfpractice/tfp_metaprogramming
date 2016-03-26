
describe TfpMetaprogramming do
  it 'has a version number' do
    expect(TfpMetaprogramming::VERSION).not_to be nil
  end
  describe '#check' do
    it 'responds to #check' do
      # expect(TfpMetaprogramming).to eq(true)
      expect(TfpMetaprogramming).to respond_to(:check)
    end
    it 'returns "Im working" ' do
      expect(TfpMetaprogramming.check).to eq("I'm working")
    end
  end

end
