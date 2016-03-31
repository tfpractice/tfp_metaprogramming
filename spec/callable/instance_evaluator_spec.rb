describe TfpMetaprogramming::Callable::InstanceEvaluator do
  let(:eBindr) {  TfpMetaprogramming::Callable::Bindr.new }
  let(:myEvaluator) { TfpMetaprogramming::Callable::InstanceEvaluator.new(eBindr) }
  it 'has a @bindr object' do
    expect(myEvaluator.instance_variables).to include(:@bindr)
  end
end
