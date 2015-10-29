require 'player'

describe Player do

  subject(:player1) { described_class.new('Bob') }
  subject(:player2) { described_class.new('Frodo') }


  context "#initialize" do

    it "has a #name" do
      expect(player1.name).to eq 'Bob'
    end

    it "has a default HP value" do
      expect(player1.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  context "#attack" do

    it "damages the opponent" do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  context "#receive_damage" do

    it "reduces player's hit points by 20" do
      expect{player2.receive_damage}.to change{player2.hit_points}.by(-20)
    end
  end

end
