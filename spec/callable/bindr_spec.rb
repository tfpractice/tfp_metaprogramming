describe TfpMetaprogramming::Callable::Bindr do
  let(:myBindr) { TfpMetaprogramming::Callable::Bindr.new(word: 'myWord', num: 15, info: 'this is myBindr') }

  it 'includes the Closure Module in its ancestor chain' do
    expect(myBindr.class.ancestors).to include(TfpMetaprogramming::Callable::Closure)
  end

  describe 'attributes' do
    it 'has a @num instance_variable' do
      expect(myBindr.instance_variables).to include(:@num)
    end
    it 'has a @info instance_variable' do
      expect(myBindr.instance_variables).to include(:@info)
    end
    it 'has a @word instance_variable' do
      expect(myBindr.instance_variables).to include(:@word)
    end

  end
  describe 'methods' do
    describe 'block_to_basic_yielder' do
      context 'when passed a block' do
        it 'returns (3*@num) the sum of @num and the retun val of @num + @num' do
          expect(myBindr.block_to_basic_yielder).to eq(45)
        end
      end
    end
    describe 'basic_yielder' do
      context 'when passed no block' do
        it 'returns (2*#@num)the sum of @num and @num' do
          expect(myBindr.basic_yielder(myBindr.num, myBindr.num)).to eq(30)
        end
      end
    end
  end
end
