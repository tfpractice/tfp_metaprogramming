describe TfpMetaprogramming::MetaClass::Singletons::Singlizer do
  let(:myMod) { TfpMetaprogramming::MetaClass::Singletons::Singlizer }
  let(:sample) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('A new single string') }
  let(:pristine_sample) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('A pristine single string') }

  describe '.add_monog_to_single_string' do
    context 'when given a string (sample) to work with' do
      context 'before called' do
        it 'excludes #monogamize from that string' do
          expect(sample.methods).not_to include(:monogamize)
        end
      end
      context 'after_called' do
        before(:each) do
          myMod.add_monog_to_single_string(sample)
        end
        it 'adds singleton method #monogamize to that particular string' do
          expect(sample.methods).to include(:monogamize)
        end
        it 'does not add #monogamize to any other' do
          expect(pristine_sample.methods).not_to include(:monogamize)
        end
        describe '#monogamize' do
          it 'concatenates " I am monogamous" to the given string' do
            expect(sample.monogamize).to end_with("monogamous")
          end
        end
      end
    end

  end
end
