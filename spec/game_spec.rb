require 'game'

describe Game do

  subject(:game) {described_class.new(:hamza, :deon, player_klass)}
  let(:player_klass) { double(:player_klass, new: player) }
  let(:player) { double(:player) }
  let(:player1) { double(:player1, name: :hamza) }
  let(:player2) { double(:player2, name: :deon) }

  before do
    allow(player_klass).to receive(:new).with(:hamza).and_return(player1)
    allow(player_klass).to receive(:new).with(:deon).and_return(player2)
  end

  context "#initialize" do

    it "creates two new players" do
      expect(game).to have_attributes(players: [player1, player2])
    end

  end

  context "#attack" do

    it "damages the opponent" do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end

  context "#switch_turns" do

    it "starts with player1 as @current_player" do
      expect(game.current_player).to eq player1
    end

    it "switches #current_player" do
      game.switch_turns
      expect(game.current_player).to eq player2
    end
  end

end
