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


end
