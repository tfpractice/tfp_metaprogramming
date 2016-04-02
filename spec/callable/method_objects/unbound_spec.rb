describe TfpMetaprogramming::Callable::MethodObjects::Unbound do
  let(:unbound) { TfpMetaprogramming::Callable::MethodObjects::Unbound }
  describe '#unmethod' do
    it 'includes :unmethod in its list of methods' do
      expect(unbound.instance_methods(false)).to include(:unmethod)
    end
  end
  describe '.get_unmethod' do
    it 'returns :unmethod as an unbound method' do
      expect(unbound.get_unmethod).to be_a_kind_of(UnboundMethod)
    end
    context 'when a receiver rec = ...::Unbindr is avaliable' do
      describe '#bind' do
        it 'applies the unmethod to that object as Callable' do
          unb = TfpMetaprogramming::Callable::MethodObjects::Unbindr
          umeth = unbound.instance_method(:unmethod)
          result = umeth.bind(unb)
          ubo = unb.new
          expect(result.call).to end_with("module")
        end
      end
      describe '.class_eval' do
        describe '#define_method' do
          it 'applies the unmethod to that object as object' do
            umeth = unbound.instance_method(:unmethod)
            unb =  TfpMetaprogramming::Callable::MethodObjects::Unbindr
            unb.class_eval { define_method :unmethod, umeth}
            ubo = unb.new
            expect(ubo.methods).to include(:unmethod)
          end
        end
      end
    end
  end
end
