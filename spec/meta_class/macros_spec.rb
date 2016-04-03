describe TfpMetaprogramming::MetaClass::Macros do
  let(:myMacro) { TfpMetaprogramming::MetaClass::Macros }
  let(:myWolf) { TfpMetaprogramming::MetaClass::Macros::LoneWolf.new }
  let(:loneClass) { TfpMetaprogramming::MetaClass::Macros::LoneWolf }
  describe 'force_wolf_to_contemplate_solipsism' do
    context 'before called' do
      describe 'LoneWolf' do
        it 'does not respond to :contemplate_solipsism' do
          expect(loneClass).not_to respond_to(:contemplate_solipsism)
        end
      end
    end
    context 'after called' do
      before(:each) do
        myMacro.force_wolf_to_contemplate_solipsism
      end
      describe 'LoneWolf' do
        it 'responds to singleton method #force_wolf_to_contemplate_solipsism' do
          expect(loneClass).to respond_to(:contemplate_solipsism)
        end
      end
    end

  end
end
