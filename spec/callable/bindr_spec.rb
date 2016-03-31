describe TfpMetaprogramming::Callable::Bindr do
  let(:myBindr) { TfpMetaprogramming::Callable::Bindr.new(word: 'myWord', num: 15, info: 'this is myBindr') }
  describe 'Closure module' do
    it 'includes the Closure Module in its ancestor chain' do
      expect(myBindr.class.ancestors).to include(TfpMetaprogramming::Callable::Closure)
    end
    describe 'basic_yielder' do
      context 'when passed no block' do
        it 'returns (2*#@num)the sum of @num and @num' do
          expect(myBindr.basic_yielder(myBindr.num, myBindr.num)).to eq(30)
        end
      end
    end

  end
  describe 'ScopeFlattener module' do
    it 'includes the ScopeFlattener Module in its ancestor chain' do
      expect(myBindr.class.ancestors).to include(TfpMetaprogramming::Callable::ScopeFlattener)
    end
    describe '#mvar' do
      it 'returns the modules local_flat_mvar to the Bindr instance' do
        expect(myBindr.mvar).to eq(3)
      end
    end
    describe '#increment_mvar' do
      it 'increments the modules local_flat_mvar by added param' do
        expect { myBindr.increment_mvar(4) }.to change{myBindr.mvar}.by(4)
      end
    end
    describe '#reset_mvar' do
      it 'resets the modules local_flat_mvar 3' do
        myBindr.increment_mvar(4)
        prevMVar = myBindr.mvar
        expect { myBindr.reset_mvar }.to change{myBindr.mvar}.from(prevMVar).to(3)
      end
    end
    describe '#show_locals' do
      it 'dynamically defines #show_locals method' do
        expect(myBindr).to respond_to(:show_locals)
      end
      it 'exposes the local_flat_mvar scoped to the module' do
        puts myBindr.show_locals
        # puts myBindr.class.ancestors
        expect(myBindr.show_locals).to include(:local_flat_mvar)
      end
    end
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
    describe 'gated_phantom' do
      it 'assigns phantom to "Sith Lord" in the method' do
        expect(myBindr.gated_phantom).to eq("Sith Lord")
      end
      context 'when called from scope with phantom already defined ' do
        it 'uses the environment phantom (Phand ignores the method-defined phantom' do
          phantom = "Casper"
          result = myBindr.gated_phantom { |catchphrase| "I am the #{phantom}, #{catchphrase}" }
          puts result
          expect(result).to start_with("I am the Casper")
        end
      end
    end
    describe '#scoped_phantom' do
      it 'calls gated_phantom with class local phantom (Phantom of the Opera)' do
        puts myBindr.scoped_phantom
        expect(myBindr.scoped_phantom).to start_with("I am the Phantom of the Opera")
      end
    end
  end
  describe '#show_bindr_locals' do
    it 'dynamically defines #show_bindr_locals method' do
      expect(myBindr).to respond_to(:show_bindr_locals)
    end
    it 'exposes the local_bindr_cvar scoped to the class local variables' do
      puts myBindr.show_bindr_locals
      expect(myBindr.show_bindr_locals).to include(:local_bindr_cvar)
      # puts myBindr.class.ancestors
    end
  end
  describe 'local_variables' do
    context 'when called from outside of #create_local_variable' do
      it 'excludes local_bindr_ivar ' do
        expect(myBindr.send(:local_variables)).not_to include(:local_bindr_ivar)

      end
      context 'when called from within #create_local_variable' do
        describe '#create_local_variable' do
          it 'exposes a local_bindr_ivar variable scoped to the method' do
            expect(myBindr.create_local_variable).to include(:local_bindr_ivar)
          end
        end
      end
    end
  end
  describe 'block_to_basic_yielder' do
    context 'when passed a block' do
      it 'returns (3*@num) the sum of @num and the retun val of @num + @num' do
        expect(myBindr.block_to_basic_yielder).to eq(45)
      end
    end
  end
end
