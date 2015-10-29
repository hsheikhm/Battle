require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:player) {double (:player)}

  context "#attack" do

    it "damages the opponent" do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end
end
