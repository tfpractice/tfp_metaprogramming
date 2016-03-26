describe 'monkey_patch/String' do
  let(:myString) { "I am a string to be monkeyed" }

  # describe '.ancestry' do
    # it 'returns the ancestor chain' do
      # expect(myString.class.ancestors).to include(Comparable)
      # expect(myString.class).to respond_to(:ancestry)

    # end


  # end
  # describe '.nesting' do
  	# it 'returns the Module#nesting attribute' do
  		# puts myString.class.nesting
  		# expect(String).to respond_to(:nesting)
  	# end
    # 
  # end
  describe '#make_ape' do
  	it 'adds #make_ape method to core class' do
  		expect(myString).to respond_to(:make_ape)
  		
  	end
    it 'dynamically assigns an @ape instance variable on the string' do
    	myString.make_ape("curious george")
    	puts myString.instance_variables
    	expect(myString.instance_variables).to include(:@ape)
    	# expect(myString.ape).to eq("curious george")
    end
  end
  describe '#monkey' do

    it 'adds #monkey to the Ruby Core String class' do
    	# puts myString.class.constants
      expect(myString.class).to eq(String)
    end
    it 'responds to #monkey' do
      expect(myString).to respond_to(:monkey)

    end
    it 'retuns "I love bananas, and have opposable thumbs" ' do
      expect(myString.monkey).to eq("I love bananas, and have opposable thumbs")
    end
  end

end
