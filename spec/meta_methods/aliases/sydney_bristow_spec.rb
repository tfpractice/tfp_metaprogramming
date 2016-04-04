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

  describe '#wig' do
    it 'returns a string ending with "regular wig"' do
      expect(myBristow.wig).to end_with('regular wig.')
    end
  end
  describe '#call_wig' do
    context 'it calls the SpyRefinement #wig method form withing the class' do


      it 'returns a string ending with "refined wig"' do
        # puts myBristow.wig
        puts myBristow.class.ancestors
        expect(myBristow.call_wig).to end_with('refined wig')
      end
    end
  end

  # describe '.apply_spy_refinement' do
  # context 'before called' do
  #
  # end
  # context 'after called' do
  # before(:each) do
  # myBristow.class.apply_spy_refinement
  # end
  #
  #
  #
  #
  #
  #
  # end
  # end
  describe 'included modules' do
    describe TfpMetaprogramming::MetaMethods::Aliases::AroundAlias do
      it 'appears in SydneyBristows ancestor chain' do
        expect(myBristow.class.ancestors).to include(TfpMetaprogramming::MetaMethods::Aliases::AroundAlias)
      end
      describe 'AroundAlias#around_espionage' do
        it 'returns a string ending with around_aliases' do
          expect(myBristow.around_espionage).to end_with('around_aliases')
        end
      end
      describe '#convolutions' do
        it 'is an alias for AroundAlias#around_espionage' do
          expect(myBristow.convolutions).to end_with('around_aliases')
        end
      end
    end
  end
  describe '#around_espionage' do
    context 'when overriding the module MetaMethods' do
      it 'returns a string starting with "this method is overriding" ' do
        expect(myBristow.around_espionage).to start_with('this method is overriding')
      end
    end
  end
  describe '#throw_fierce_lqqks' do
    it 'returns a string ending with "realness"' do
      expect(myBristow.throw_fierce_lqqks).to end_with('realness')
    end
  end
  describe '.alias' do
    context 'when passed :fierce_looks_by_proxy and :throw_fierce_lqqks ' do
      describe '#fierce_looks_by_proxy' do
        it 'returns a string ending with "realness"' do
          expect(myBristow.throw_fierce_lqqks).to end_with('realness')
        end
      end
    end
  end
end
