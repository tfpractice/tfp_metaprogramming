describe TfpMetaprogramming::Callable::Procs::Procster do
  let(:myProcster) { TfpMetaprogramming::Callable::Procs::Procster.new }
  describe 'attributes' do
    it 'has a @num' do
      expect(myProcster.instance_variables).to include(:@num)
    end
    it 'has an @info' do
      expect(myProcster.instance_variables).to include(:@info)
    end
  end
  describe 'Arity module' do
    it 'includes Callable::Procs::Arity in its ancestor chain' do
      expect(myProcster.class.ancestors).to include(TfpMetaprogramming::Callable::Procs::Arity)
    end
    describe '#arity_proc' do
      it 'returns a proc ' do
        expect(myProcster.arity_proc).to be_a_kind_of(Proc)
      end
      it 'takes two args' do
        expect(myProcster.arity_proc.arity).to be(2)
      end
    end
    describe '#arity_lambda' do
      it 'returns a lambda' do
        expect(myProcster.arity_lambda.lambda?).to be(true)
      end
      it 'takes two args' do
        expect(myProcster.arity_proc.arity).to be(2)
      end
    end
    describe 'call_for_arity' do
      context 'when called with arity_proc' do
        it 'returns an array of length 2' do
          expect(myProcster.call_for_arity(&myProcster.arity_proc)).to include(1)
        end
      end
      context 'when called with arity_lamda' do
        it 'raises an error' do
          expect { myProcster.call_for_arity(&myProcster.arity_lambda) }.to raise_error(ArgumentError)
        end
      end
    end
  end
  describe 'ProcMod module' do
    it 'includes Callable::Procs::ProcMod in its ancestor chain' do
      expect(myProcster.class.ancestors).to include(TfpMetaprogramming::Callable::Procs::ProcMod)
    end
    describe '#deferred_increment' do
      it 'returns a proc object that increments an argument by num' do
        expect(myProcster.deferred_increment).to be_a_kind_of(Proc)
      end
    end
    describe '#call_increment' do
      it 'increments the arg vic a call to defferred_increment' do
        expect(myProcster.call_increment(6)).to eq(11)
      end
    end
    describe 'xy_lambda' do
      it 'returns a lambda that adds two values' do
        xy = myProcster.xy_lambda
        expect(xy.lambda?).to eq(true)
      end
    end
    describe 'ampersand_catch' do
      context 'when given a raw block {|a, b| a+b }' do
        it 'yields the provided args to the block' do
          block_return = myProcster.ampersand_catch(2,3) {|a, b| a+b }
          expect(block_return).to be(5)
        end
      end
      context 'when passed proc as argument @newProc = proc {|a, b| a * b }' do
        before(:each)do
          @newProc = proc {|a, b| a * b }
        end
        context 'when proc is not preceeded by & operator' do
          it 'raises an ArgumentError' do
            expect { myProcster.ampersand_catch(2,3, @newProc) }.to raise_error(ArgumentError)
          end
        end
        context 'when passed with & operator' do
          it 'converts proc to a block returns yield value ' do
            expect(myProcster.ampersand_catch(2,3, &@newProc)).to eq(6)
          end
        end
      end
      describe 'ampersand_pass' do
        context 'when given apLambda = lambda { |w,z| w * z} ' do
          context 'when given args w,z, apLambda' do
            it 'converts the lambda to a block and passes it to ampersand_catch' do
              apLambda = lambda { |w,z| w * z}
              expect(myProcster.ampersand_pass(4,5, &apLambda)).to be(20)
            end
          end
        end
      end
      describe 'xy_to_ampersand_pass' do
        it 'doubles num, passes xy_lambda to ampersand_pass ' do
          expect(myProcster.xy_to_ampersand_pass).to eq(10)
        end
      end
      describe 'info_lambda' do
        it 'returns a lambda' do
          expect(myProcster.info_lambda).to be_a_kind_of(Proc)
        end
        it 'has a sting endind with "lambda" ' do
          expect(myProcster.info_lambda.call).to end_with("lambda")
        end
      end
      describe '#proc_proxy' do
        it 'takes a proc object and doesnt convert it to a block' do
          lProx = ->(c) { c* 2}
          expect(myProcster.proc_proxy(&lProx)).to be_a_kind_of(Proc)
        end
        # context 'when called with info_lambda' do
        # 	it 'must be called with Proc#call' do

        # 	end

        # end

      end
    end

  end
end
