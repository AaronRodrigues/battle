require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player, :take_damage => true }
  let(:player_2) { double :player, :take_damage => true  }



  it 'recieves 2 players as arguements when initialized' do
    expect(game.player_1).to eq(player_1)
    expect(game.player_2).to eq(player_2)
  end

  context 'change of turns' do
    it 'initializes with @turn variable' do
      expect(game.turn).to eq(game.player_1)
    end

    it "if it is player 2's turn then change to player 1" do
      game.attack(player_2)
      game.attack(player_1)
      expect(game.turn).to eq(game.player_1)
    end
  end
  describe '#attack' do
    it ' damages the player' do
      expect(player_2).to receive(:take_damage)
      game.attack(player_2)
    end
  end
end
