describe TfpMetaprogramming::Callable::InstanceEvaluator do
  let(:eBindr) {  TfpMetaprogramming::Callable::Bindr.new }
  let(:myEvaluator) { TfpMetaprogramming::Callable::InstanceEvaluator.new(eBindr) }
  it 'has a @bindr object' do
    expect(myEvaluator.instance_variables).to include(:@bindr)
  end
  describe 'methods' do
    describe '#bindr_self' do
      it 'calls #self on the bindr object' do
        expect(myEvaluator.bindr_self).to eq(eBindr)
      end
      describe '#bindr_locals' do
        it 'returns local_variables on the @bindr' do
          expect(myEvaluator.bindr_locals).to be_a_kind_of(Array)
        end
      end
      describe '#bindr_class_locals' do
        it 'evaluates local_variables on the @bindr class' do
          expect(myEvaluator.bindr_class_locals).to be_a_kind_of(Array)
        end
      end
      describe '#modify_bindr_info' do
        it 'appends modText="called from the evaluator" to the bindr.info' do
          expect { myEvaluator.modify_bindr_info }.to change { eBindr.info }
        end
      end
      describe '#show_bindr_num_and_evaluator_ivar' do
        it 'displays @bindr.num and #ivar' do
          expect(myEvaluator.show_bindr_num_and_evaluator_ivar).to end_with('undefined')
        end
      end
      describe '#execute_sum_bindr_num_and_evaluator_ivar' do
        it 'begins with the sum of both InstanceEvaluator#ivar and @bindr.num' do
          sum = myEvaluator.ivar + myEvaluator.bindr.num
          expect(myEvaluator.execute_sum_bindr_num_and_evaluator_ivar).to start_with("#{sum}")
        end
      end
    end
  end
end
