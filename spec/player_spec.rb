require 'player'

describe Player do
  subject(:player) { described_class.new('Skeletor') }
  subject(:player2) { described_class.new('He-man') }

  it ' should return the players name' do
    expect(player.name).to eq('Skeletor')
  end

  describe '#hitpoints' do
    it 'should have a hitpoints method which initializes with 100HP' do
      expect(player.hitpoints).to eq(100)
    end
  end

  describe '#attack' do
    it ' HP should decrease by 10' do
      expect { player2.attack(player) }.to change { player.hitpoints }. by -10
    end
  end
end
