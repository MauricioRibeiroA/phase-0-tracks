require_relative "challenge.rb"

  describe Game do
    context "storing" do
        context "when the word is specified" do
            it "uses that string to" do
                word = "mauricio"
                game = Game.new(word)
                game.word = word
              end
          end
      end
    describe "#current_state(try_word)" do
      it "stores the current word" do 
        try_word = " "
        game = Game.new(try_word)
        expect(game.current_state(try_word)).to eq(" ")
        end
      end


  end


