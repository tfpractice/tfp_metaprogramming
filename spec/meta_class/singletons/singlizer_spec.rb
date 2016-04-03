describe TfpMetaprogramming::MetaClass::Singletons::Singlizer do
  let(:myMod) { TfpMetaprogramming::MetaClass::Singletons::Singlizer }
  let(:sample) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('A new single string') }
  let(:pristine_sample) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('A pristine single string') }
  let(:minglingString) { TfpMetaprogramming::MetaClass::Singletons::SingleString.new('A new single and mingling string') }

  describe '.eval_monog_onto_single_string' do
    context 'when given a string (sample) to work with' do
      context 'before called' do
        it 'excludes #monogamize from that string' do
          expect(sample.methods).not_to include(:monogamize)
        end
      end
      context 'after_called' do
        before(:each) do
          myMod.eval_monog_onto_single_string(sample)
        end
        it 'instance_eval adds singleton method #monogamize particular string' do
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
  describe '.nest_mingle_method_onto_single_string' do
    context 'when given a string (minglingString) to work with' do
      context 'before called' do
        it 'excludes #mingle from that string' do
          expect(minglingString.methods).not_to include(:mingle)
        end
      end
      context 'after_called' do
        before(:each) do
          myMod.nest_mingle_method_onto_single_string(minglingString)
        end
        it 'nested def adds singleton method #mingle particular string' do
          expect(minglingString.methods).to include(:mingle)
        end
        it 'does not add #mingle to any other' do
          expect(pristine_sample.methods).not_to include(:mingle)
        end
        describe '#mingle' do
          it 'concatenates " and I am ready to mingle" to the given string' do
            expect(minglingString.mingle).to end_with("mingle")
          end
        end
      end
    end
  end
end
